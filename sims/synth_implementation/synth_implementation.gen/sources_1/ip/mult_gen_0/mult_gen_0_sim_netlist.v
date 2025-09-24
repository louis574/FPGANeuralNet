// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Sep  9 22:47:28 2025
// Host        : LAPTOP-6N1O65DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/louja/Desktop/OwnProjects/FPGAs/FNeuralNet/synth_implementation/synth_implementation.gen/sources_1/ip/mult_gen_0/mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_23,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module mult_gen_0
   (A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_mode = "slave a_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_mode = "slave b_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_mode = "master p_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [15:0]P;

  wire [7:0]A;
  wire [7:0]B;
  wire [15:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [47:0]NLW_U0_PCASC_EXT_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "15" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  mult_gen_0_mult_gen_v12_0_23 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(1'b1),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .PCASC_EXT(NLW_U0_PCASC_EXT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
a8oy5VKhI9r6ZPDsrDu70hiHV6+ii4ww2JaV5MUqlt96iDVy6O5zHUCC5McNgSuoSwwCPdCh3NfR
NZtBCQSLG0WwcosxcrJiFr1T2gfnuZ9DZ8tsCPFlUYSkK9TqrpuhK1VynSR2mJDUl5kbI+XeznL9
/CbZbbtSog8A2vpipn8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o311wzstkCi2Xm0gL322QWGmUhRTX44GhP9CVjsruJH5GZBvfa3cm86OmVjiGEpHioogBxsR0NDd
XR9RNFQCg7MrCcuUCqcDwg3nc06Zvy69ApHslAaAJfq3je7ho9JqFhs1hHvtjlbaglmDuWWFWGQc
Bgysjzhh3ru5Ii7iHoGjO0IlMu9zs+L/elCRBBBn1w0+QTXbhYQ46WB9RyOj/PGV0imZWjRTabjV
fhxz4+rcJEAXvKASzSR0NIh+s0wrMWXaFVAQI3k1kuIp+s8OlrsfDAMBLTI/Cq9tgDOVZU8mMZTO
iWoFmmk8pGf1aV+oDOp+FzQGxy+Qcq6K0Bj61A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YJ83ZUBaPDw2/wturr4+wRIqi4laFrwEhGoGQ5BRbuqYVi2X6+ISa2PNsgxB3ARgzDg8nfQNPtTM
PxT2Tg54UyByzAtZtMXN0v5YjxO/vjUFuk5fcskLYRi1zY2CvQYEJAaqfZndV/hvS52LyaMEfkFC
qkLPntD4nsxuEOWR60U=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bf70+ZpglOMDV70X+xuN4nRPXfVUkSD67DJnuxYBU6BsEPWcIsKXYgb9RI/ipBHJIcS5yMR5ay4y
ZGUkpXF+VPjaNXTMFQtZ1K5mRMAV+JArWtTEriEcaLERTsJDeyd1Z4zDdjYpzxG6Z/Zz/ztR6NaS
DXPNkKDCuWXgoJuaTg85GgRlSZApN/Vz7Nv1VpBlKW8RaeWWPsl6V/rBQd0p3r8ABmazkNszJyh/
a/Su2bs7i+4OC4ukaxri7kHCPF84cPWArUBZQMvbfhPrio7YX4Dez8ldc4zmFSAwboVFno/moixD
/ffMy9k08hZ5r0inf4IqvyUqwJCF9Becd6RX7g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
t0Ly2SOPXG6TCNJmq3H1TpmFnVRhv9HxO3kBWy9oUObB5mmxIMwH4PVecLk2fGShC4taYGDp/0aY
0si1i/ejKKGrqyyGb/N6vx1JLs41Bu7iCTta1xo+4dbj/F2PireXic+68Jto7/kB5nZuUUbPr+t1
XUmV4vv6ttLMYChOaIau7ny0aK2gEX5WVUPZ16h17dlWdlRPDvH+mgudXa6P8dmQnJxg31t6wIjC
zSzt7OAwLFjEUTLsI1YB1ruB9BhEm0/OF/srCIQRKr1tQ/WOFTsRZEf6dblVTmJHun0E1Z1Vh+cF
2Up7FSrGzExIyH2zWQJovu4NqQpUZ5Vjf9Fjqw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hJSML2FqcV98cUylkT1L5mHMuOLICQ4g+hlj2HavieYMseOK/g7SxNWmH7qEphzStwrOZQFMzDtD
1Vj1aF0JKpb4PBKJJzHZno9WZDpafcG5qIrY28RJ+CR8mZXTbgQVr2MxRUw7gbya4Hp6xeZAdEnq
6fFaKMN9dWeYzikVZe+5yRYREhZz9d8qnsnvvnvQHkeJETtLiM6B4Sr0hgsHS8c9+Aa7ia2UmIhh
zBvRSlghkTCQ5cJLnL8xgPU6BPDNj9ZjMUofD1+hKfZfIaKZrWraiXgKs9SjrJAfs+GEIY9yXPoD
WVQVvdkFdjNY66o/EOnV7dqw6ONHGFRgE2/DTA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYickIpiuxmseA8hr32NIz+PQH5YL3u7uoihU3kCjGsvwbbVRibk3qUmfOq9SbEshOFLrK5X0BTq
8GfHccDg1r/f3v2KGiQuvPe2+ATRd7TaeIr0e/tveJAg6wBQ5MMLCYc0cZ0iux1JaECuVSbCj0bd
pZxf8m1J/Bcgco+JI3qHNqh0uRXRY6K3uyDmOIL2cpgPbx191SyuIKtL9L3ray4QFZfxPmHYJWSj
BZPwXShcJFZX29uWHQFhfzvxV2bqiS0Nz4zhd2ABCLFr2iQ5ZhbpmzpNVMPrA8V1idxVj0eEmgpq
PorgSpLZ/EmMRvNPhUhTla7L8gkjJn8CQJ+NEw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
fAQn311nBu08DuuB0R4ieuk9vtdguq7CpXeo0sHmor7YAb3d1vkwMpX+W9baRf19NFZZ7e1SAP1F
fTmg3llJ2sBIV6fyHdZ+hSOU4b0ZFJQWKlOSIAJtqJAGSLmmMXWkAoMKMaaUvXp2GF6wsgiWkjl1
JNAnVYRBQ8AHqRW6PrnluqSpRtTejfk/sB+RZukTSfKQltkUKOb0022ozakCkpGSeEUd3hnycn9q
ThFWMHNg/eW1lHKgfXIVBIujW6b7LN1+g9UMt0VZ2fPXl3AYmeJ1HOHU0W7sXDxYQMAQQNKzjExn
3sIWEqqopjcUfDNIvU30CG3dLKU+N3FHqB7RlxbhCZL1ezwKR9dz51hLS6rYQgRkgJhrgSbvfuJ4
UVN77y+HZA6DSo1GSnNJAR1nbioPV9OQ9bcgYhPW6VywV9ol9pdoa4gyoiVBScD2I/eiM6CB3I+8
wDaR5NT2PbMvxoco4gWfY0YlwoAXHCVrIW6pnXb+5TOex4mxMUQ0x/en

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IEjnv73YQXRAkCIEYUr9W/mAjZNVmIpdev/N/sb1oZY2hb/ju2aA2Z20+M+pkJl+6nOQbGe1MYuz
zxVqt33HW4VglAaDUONi3dVlB8u02Hsxvnh5/OHQcEFY9x/e5ztwxK1eRXZPm/d+0zVyJ6gwoMoE
06tLSQsLFc6lLMYdT8GLPcx12l+fRnCavi4TdwVXmRz9JXNyxkRl4etYfDiQ6b/xjYRs7Pt2thIv
5aToHduM1mSg3cyHnHLWsqaAsHsWdGnunKoMwG+3GkevK+9ja7sQp29foyEKH1c/9PuZYtaWE5bi
LlP8eh0QsevIeaAiRzyZ9OP/MoUkwRABhD+xMg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UD8GrSfmICSJ1lNXY+pPzOHUnx3TQOAxMB9U29uGc6H9NB5gnp8cO29pHZK74mATlCW0nJQarmiX
S3isy2zGtfy59l9GotJHsnwYJV6lmXKLw5K/RuvPlgIDlmh+Nlv8d91OmOQCBKKZTqH9004P7eVX
DVx/GN7xQPkrPBH61QqH9NLrj83xdr8+7AVHNAx40vRqNTCoKIp3dNX7WLu/2dPPi6c/WhMo22lv
efTeM4tFElsgjIFjIibSY4uF6wFamWljzCEL6UVWyMPwldGELitCYgZeHKFDjxC9TvBhzfE1q5Eq
glo/0KlCLsigiPyAhTCiKvxftfz+CksVkaeZfQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h96XoyciCvz7a4XWTvv+YGkr0w4RAzd7A+zidHXAmAT4WKxC2cAmwZ3sK6PcDssPJK4TM5ccz16y
mP0si6/vfKq9brstNhibi9bAU7g/fpqrUdd5IWtcP85S1fWwjqpKNsNvlD/1yga395E0JGtTomHu
/SAgmnZLgp/AifzqmbO6RDMIT1wDJFWJY7gidPkT/jCiit2g4Orf+XBF1yysQUBlolMhA5ug1uMw
yhUnPqnaH0DrOX0sJh2AuzdB7FRRKTz0Ow0SwQn9sgRXNJlGEclyyut7Qlu3cuOxwKy+bP4i6DFV
t9yU8XYvX7EbKAA+xgspCIwc3jhQ5DnWQeaFPQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5712)
`pragma protect data_block
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
ProCSGAhCis/wTCu
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
a8oy5VKhI9r6ZPDsrDu70hiHV6+ii4ww2JaV5MUqlt96iDVy6O5zHUCC5McNgSuoSwwCPdCh3NfR
NZtBCQSLG0WwcosxcrJiFr1T2gfnuZ9DZ8tsCPFlUYSkK9TqrpuhK1VynSR2mJDUl5kbI+XeznL9
/CbZbbtSog8A2vpipn8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o311wzstkCi2Xm0gL322QWGmUhRTX44GhP9CVjsruJH5GZBvfa3cm86OmVjiGEpHioogBxsR0NDd
XR9RNFQCg7MrCcuUCqcDwg3nc06Zvy69ApHslAaAJfq3je7ho9JqFhs1hHvtjlbaglmDuWWFWGQc
Bgysjzhh3ru5Ii7iHoGjO0IlMu9zs+L/elCRBBBn1w0+QTXbhYQ46WB9RyOj/PGV0imZWjRTabjV
fhxz4+rcJEAXvKASzSR0NIh+s0wrMWXaFVAQI3k1kuIp+s8OlrsfDAMBLTI/Cq9tgDOVZU8mMZTO
iWoFmmk8pGf1aV+oDOp+FzQGxy+Qcq6K0Bj61A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YJ83ZUBaPDw2/wturr4+wRIqi4laFrwEhGoGQ5BRbuqYVi2X6+ISa2PNsgxB3ARgzDg8nfQNPtTM
PxT2Tg54UyByzAtZtMXN0v5YjxO/vjUFuk5fcskLYRi1zY2CvQYEJAaqfZndV/hvS52LyaMEfkFC
qkLPntD4nsxuEOWR60U=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bf70+ZpglOMDV70X+xuN4nRPXfVUkSD67DJnuxYBU6BsEPWcIsKXYgb9RI/ipBHJIcS5yMR5ay4y
ZGUkpXF+VPjaNXTMFQtZ1K5mRMAV+JArWtTEriEcaLERTsJDeyd1Z4zDdjYpzxG6Z/Zz/ztR6NaS
DXPNkKDCuWXgoJuaTg85GgRlSZApN/Vz7Nv1VpBlKW8RaeWWPsl6V/rBQd0p3r8ABmazkNszJyh/
a/Su2bs7i+4OC4ukaxri7kHCPF84cPWArUBZQMvbfhPrio7YX4Dez8ldc4zmFSAwboVFno/moixD
/ffMy9k08hZ5r0inf4IqvyUqwJCF9Becd6RX7g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
t0Ly2SOPXG6TCNJmq3H1TpmFnVRhv9HxO3kBWy9oUObB5mmxIMwH4PVecLk2fGShC4taYGDp/0aY
0si1i/ejKKGrqyyGb/N6vx1JLs41Bu7iCTta1xo+4dbj/F2PireXic+68Jto7/kB5nZuUUbPr+t1
XUmV4vv6ttLMYChOaIau7ny0aK2gEX5WVUPZ16h17dlWdlRPDvH+mgudXa6P8dmQnJxg31t6wIjC
zSzt7OAwLFjEUTLsI1YB1ruB9BhEm0/OF/srCIQRKr1tQ/WOFTsRZEf6dblVTmJHun0E1Z1Vh+cF
2Up7FSrGzExIyH2zWQJovu4NqQpUZ5Vjf9Fjqw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hJSML2FqcV98cUylkT1L5mHMuOLICQ4g+hlj2HavieYMseOK/g7SxNWmH7qEphzStwrOZQFMzDtD
1Vj1aF0JKpb4PBKJJzHZno9WZDpafcG5qIrY28RJ+CR8mZXTbgQVr2MxRUw7gbya4Hp6xeZAdEnq
6fFaKMN9dWeYzikVZe+5yRYREhZz9d8qnsnvvnvQHkeJETtLiM6B4Sr0hgsHS8c9+Aa7ia2UmIhh
zBvRSlghkTCQ5cJLnL8xgPU6BPDNj9ZjMUofD1+hKfZfIaKZrWraiXgKs9SjrJAfs+GEIY9yXPoD
WVQVvdkFdjNY66o/EOnV7dqw6ONHGFRgE2/DTA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYickIpiuxmseA8hr32NIz+PQH5YL3u7uoihU3kCjGsvwbbVRibk3qUmfOq9SbEshOFLrK5X0BTq
8GfHccDg1r/f3v2KGiQuvPe2+ATRd7TaeIr0e/tveJAg6wBQ5MMLCYc0cZ0iux1JaECuVSbCj0bd
pZxf8m1J/Bcgco+JI3qHNqh0uRXRY6K3uyDmOIL2cpgPbx191SyuIKtL9L3ray4QFZfxPmHYJWSj
BZPwXShcJFZX29uWHQFhfzvxV2bqiS0Nz4zhd2ABCLFr2iQ5ZhbpmzpNVMPrA8V1idxVj0eEmgpq
PorgSpLZ/EmMRvNPhUhTla7L8gkjJn8CQJ+NEw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
fAQn311nBu08DuuB0R4ieuk9vtdguq7CpXeo0sHmor7YAb3d1vkwMpX+W9baRf19NFZZ7e1SAP1F
fTmg3llJ2sBIV6fyHdZ+hSOU4b0ZFJQWKlOSIAJtqJAGSLmmMXWkAoMKMaaUvXp2GF6wsgiWkjl1
JNAnVYRBQ8AHqRW6PrnluqSpRtTejfk/sB+RZukTSfKQltkUKOb0022ozakCkpGSeEUd3hnycn9q
ThFWMHNg/eW1lHKgfXIVBIujW6b7LN1+g9UMt0VZ2fPXl3AYmeJ1HOHU0W7sXDxYQMAQQNKzjExn
3sIWEqqopjcUfDNIvU30CG3dLKU+N3FHqB7RlxbhCZL1ezwKR9dz51hLS6rYQgRkgJhrgSbvfuJ4
UVN77y+HZA6DSo1GSnNJAR1nbioPV9OQ9bcgYhPW6VywV9ol9pdoa4gyoiVBScD2I/eiM6CB3I+8
wDaR5NT2PbMvxoco4gWfY0YlwoAXHCVrIW6pnXb+5TOex4mxMUQ0x/en

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IEjnv73YQXRAkCIEYUr9W/mAjZNVmIpdev/N/sb1oZY2hb/ju2aA2Z20+M+pkJl+6nOQbGe1MYuz
zxVqt33HW4VglAaDUONi3dVlB8u02Hsxvnh5/OHQcEFY9x/e5ztwxK1eRXZPm/d+0zVyJ6gwoMoE
06tLSQsLFc6lLMYdT8GLPcx12l+fRnCavi4TdwVXmRz9JXNyxkRl4etYfDiQ6b/xjYRs7Pt2thIv
5aToHduM1mSg3cyHnHLWsqaAsHsWdGnunKoMwG+3GkevK+9ja7sQp29foyEKH1c/9PuZYtaWE5bi
LlP8eh0QsevIeaAiRzyZ9OP/MoUkwRABhD+xMg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UD8GrSfmICSJ1lNXY+pPzOHUnx3TQOAxMB9U29uGc6H9NB5gnp8cO29pHZK74mATlCW0nJQarmiX
S3isy2zGtfy59l9GotJHsnwYJV6lmXKLw5K/RuvPlgIDlmh+Nlv8d91OmOQCBKKZTqH9004P7eVX
DVx/GN7xQPkrPBH61QqH9NLrj83xdr8+7AVHNAx40vRqNTCoKIp3dNX7WLu/2dPPi6c/WhMo22lv
efTeM4tFElsgjIFjIibSY4uF6wFamWljzCEL6UVWyMPwldGELitCYgZeHKFDjxC9TvBhzfE1q5Eq
glo/0KlCLsigiPyAhTCiKvxftfz+CksVkaeZfQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h96XoyciCvz7a4XWTvv+YGkr0w4RAzd7A+zidHXAmAT4WKxC2cAmwZ3sK6PcDssPJK4TM5ccz16y
mP0si6/vfKq9brstNhibi9bAU7g/fpqrUdd5IWtcP85S1fWwjqpKNsNvlD/1yga395E0JGtTomHu
/SAgmnZLgp/AifzqmbO6RDMIT1wDJFWJY7gidPkT/jCiit2g4Orf+XBF1yysQUBlolMhA5ug1uMw
yhUnPqnaH0DrOX0sJh2AuzdB7FRRKTz0Ow0SwQn9sgRXNJlGEclyyut7Qlu3cuOxwKy+bP4i6DFV
t9yU8XYvX7EbKAA+xgspCIwc3jhQ5DnWQeaFPQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8480)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
