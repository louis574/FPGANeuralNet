// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Sep  9 22:39:25 2025
// Host        : LAPTOP-6N1O65DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_23,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_mode = "slave a_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_mode = "slave b_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_mode = "master p_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [15:0]P;

  wire [7:0]A;
  wire [7:0]B;
  wire CLK;
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
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "15" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_23 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5744)
`pragma protect data_block
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
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9184)
`pragma protect data_block
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
Bjj6k6nKMQ==
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
