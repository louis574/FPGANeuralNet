import pandas as pd
import numpy as np
import random

def ReLU(Z):
    return np.maximum(Z, 0)

def softmax(Z):
    Z_shifted = Z - np.max(Z, axis=0, keepdims=True)  # shift for stability
    exp_Z = np.exp(Z_shifted)
    return exp_Z / np.sum(exp_Z, axis=0, keepdims=True)

def ReLU_deriv(Z):
    return (Z > 0).astype(float)

def one_hot(Y, size = 10):
    out = np.zeros((size,1))
    out[Y] = 1  
    return out

def add_params(sum, add):
    if sum == []:
        return add
    else:
        for i in range(len(sum[0])):
            sum[0][i] = sum[0][i] + add[0][i] 
        for i in range(len(sum[1])):
            sum[1][i] = sum[1][i] + add[1][i]
        return sum


class quantize_aware_network ():
    def __init__(self, train_path = '../models/mnist_digit_classifier/data_used/mnist_train.csv', test_path = '../models/mnist_digit_classifier/data_used/mnist_test.csv'):
        train_data = pd.read_csv(train_path)
        test_data = pd.read_csv(test_path)

        train_data = np.array(train_data)
        test_data = np.array(test_data)
    
        self.train_data_y = train_data[:,0]
        self.train_data_x = train_data[:,1:].T / 255.0

        self.test_data_y = test_data[:,0]
        self.test_data_x = test_data[:,1:].T / 255.0

        print("train data examples", len(self.train_data_x[0]))

    def struct_init(self, neuron_structure = [784, 20, 20, 10]):
        self.neuron_structure = neuron_structure
        self.layers = len(neuron_structure) - 2
        self.weights = []
        self.biases = []
        for i in range(len(neuron_structure) - 1):
            w = np.random.rand(neuron_structure[i+1], neuron_structure[i]) - 0.5
            b = np.zeros((neuron_structure[i+1],1))
            self.weights.append(w)
            self.biases.append(b)
    
    def print_w_b_dimensions(self):
        print("Weights")
        for i in self.weights:
            print(i.shape)
        print("Biases")
        for i in self.biases:
            print(i.shape)

    def inference(self, X, activation = "ReLU"):


        tmp = X
        for i in range(self.layers):
            A = self.weights[i].dot(tmp) + self.biases[i]
            
            if activation == "ReLU":
                Z = ReLU(A)



            tmp = Z

        A = self.weights[-1].dot(tmp) + self.biases[-1]
        out = A.argmax()


        return out
    
    def test_inference(self, activation = "ReLU"):
        correct = 0
        for i in range(len(self.test_data_y)):
            out = self.inference(self.test_data_x[:,i:i+1])
            if out == self.test_data_y[i]:
                correct += 1
        print("Test accuracy:", correct / len(self.test_data_y) * 100, "%")


    def train_inference(self, n, activation = "ReLU"):
        self.A = []
        self.Z = []
        tmp = self.train_data_x[:,n:n+1]
        self.A.append(tmp)
        for i in range(self.layers):
            Z = self.weights[i].dot(tmp) + self.biases[i]
            
            if activation == "ReLU":
                A = ReLU(Z)


            self.A.append(A)
            self.Z.append(Z)
            tmp = A

        Z = self.weights[-1].dot(tmp) + self.biases[-1]
        A = softmax(Z)


        self.A.append(A)

        out = A.argmax()
        return out

    
    def backward_prop(self, n = 0, batch_size = 1):
        one_hot_Y = one_hot(self.train_data_y[n])

        dZ_all = []
        dW_all = []
        db_all = []

        dZ = self.A[-1] - one_hot_Y
        dW = 1 / batch_size * dZ.dot(self.A[-2].T)
        db = 1 / batch_size * np.sum(dZ, axis=1, keepdims=True)

        dW_all.append(dW)
        db_all.append(db)
        for i in range(self.layers):
            
            dZ = self.weights[-1-i].T.dot(dZ) * ReLU_deriv(self.Z[-1-i])
            dW = 1 / batch_size * dZ.dot(self.A[-3-i].T)
            db = 1 / batch_size * np.sum(dZ, axis=1, keepdims=True)

            dW_all.append(dW)
            db_all.append(db)
        

        all_w_b = [dW_all, db_all]
        return all_w_b
    
    def update_params(self, alpha = 0.01, sum = []):
        max = len(self.weights) - 1
        for i in range(len(self.weights)):
            self.weights[i] = self.weights[i] - alpha * sum[0][max-i]
            self.biases[i] = self.biases[i] - alpha * sum[1][max-i]

    
    def epoch_batch_learning(self, batch_size = 10, alpha = 0.01,epochs = 30):

        batches = len(self.train_data_x[0]) // batch_size
        
        for i in range(epochs):
            print("Epoch", i+1)
            n=0
            
            for i in range(batches):
                #print("Batch", i+1)
                sum = []
                for i in range(batch_size):
                    self.train_inference(n)
                    sum = add_params(sum, self.backward_prop(n, batch_size))
                    n += 1
                #print("Updating parameters")



                #remember gradiesnt des are in reverse order
                self.update_params(alpha,sum)
            self.test_inference()











    



x = quantize_aware_network()
x.struct_init()
print("NO TRAINING ----------------------------------------------")
sum = 0
for i in range(60000):
    if(x.train_data_y[i] == x.inference(X=x.train_data_x[:,i:i+1])):
        sum += 1
print(sum, "out of 60000 correct")
for n in range(10):
    print("----------------------- EPOCH", n+1, "-----------------------")
    for i in range(60000):
        #print("------------------------ EXAMPLE", i,  "------------------------")
        true_val = x.train_data_y[i]
        for j in range(10):
            x.train_inference(i, activation = "ReLU")
                #print("Correct after", j+1, "iterations"  )
            
            #print("True value:", true_val, "Inference:", x.train_inference(i, activation = "ReLU"))
            update = x.backward_prop(i)
            x.update_params(alpha = 0.01, sum=update)
    #print("----------------------- R -----------------------")
    sum = 0
    for i in range(10000):
        if(x.test_data_y[i] == x.inference(X=x.test_data_x[:,i:i+1])):
            sum += 1
    print(sum, "out of 10000 correct")




print("---------------------- individual testing -----------------------")

for i in range(20):
    test_case = random.randint(0, 10000)
    print("Example", i+1, "inference:", x.inference(X=x.test_data_x[:,test_case:test_case+1]), "true value:", x.test_data_y[test_case])


