// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Sep  9 22:47:26 2025
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_23 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5728)
`pragma protect data_block
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
LsNzM9oeJIOnShrkEOrLYc7qzRuiua81TA6aPg==
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8496)
`pragma protect data_block
kkU6BbRyhlO2y7sSMhjo9aNsNYM6TabjzDhRsawBPvPQeRECyVL/HpAef8Jl8u+tT2ZfWJC8EGjM
v5nqtMb/0riPV6HZ7IF9WIfTDtFOnUrZ6kk16hb52O2byyN53AEsyapycdB/zE41H97l1AaGFCY1
AJg2rgSvkDah3jlJCly4La0TRGw6I0pRC7Hftfh8sYMzT8eWJnnXKNlTwSIUEwLvPPajQCa31udY
txdv+rVtqfmmzbkCVFR6DmIBuWkoQaLrb+ZMeF5guBANOz+rP6lvggkCdUlmgFA0Hloa/x+0vm9x
MtYiO8ClszYeRhATfRwTkvaK1AXLY4IwV998VO3F0W8H2/gh2pmZWYNZbn2YsqUximjQx7rzXtA9
O8jjxDhhcqiPcv7tsxjwc3YNKwC0U3b11I5EO6K80+QeRKWh36O0Jut8ltrSbNluiD0rVt3EPmKM
Nq/TChav0EpvEBSTQryG5WhXD85QNsRzlf8naoN6To/7UhY7srT1ccoLP24ufwtkrbuk9T+xnJtz
rYP0BxeKVNZnVeVodlPLoGTY0imVtIl6+ojoIHKr+coZUEp+70PJIDCnwe98USGWlVGAh9bw+L0h
h7U7gzaWdTRMcGa7oVrADnvw5DP9PxIV2oEVjYY3+mBo5nmdTIo5R8e4nT1KwkpKpDzvrL5ZU7rG
l2EzJEeRYHBs8fXyQRyGT0oMMCjqd1V1y0Pky9I1lpoCS/DOPDlGcHSzdujI5v527Zq5HEZOgp50
NFRk+dCR+o87k4NNkWMpHV7+qeohmB4BwnLJwnoFuae/VjWsSPzM94uKTkSL3eitQ0mimOZ0oq+j
5CNkbQ93rDh+KAqw0V6fKDP9kOG41OhWfxKgt5labURewKgmxraHDcmOTP0Q1smTRhu/YcH/LPoX
E3ZaYRdS7qCpMCloNneX7FLGF51nEGXlFL+SerF8GLz3dmp5t6XDy/bfAQd5FH0OwVirIwcrLkA/
Pt9RPPTYmSpTw9kOPkDbz1i2FwxnZweZpROaooUViRcV0Ba+YXgV0QHuDTikLTC7arp/YafymJ5T
HWgodVjZRGDOuYJaShvMZcXavXKg2WgG01vocwu85m22V0QFYk9SY9WkZS9RS92qR+qXxShu3eTh
rFvhRf6mRuNVJfGZ2LT+TSRX0f54zc9UzbZNX+zudlRR/oZg0xb+czdTSzss0gg+Dn2Wvo+LbOFj
TiTK5tlnJMKmGU9H2eLb4Jpy5hxMFQtliKrGubuZ+c1nsoay0VfkWRYR3pyhfifIcGtdVkheiUhM
Eun3LjoE5Ig8+ij/IFzZk5hMKBxTkHTSJcn/14PquuALqknA+/FT3xZ51sNCJQKM/H/Yz12DAJ35
FPhzJoCZelA8XkxIa0WeDdqFGRIUewP01/T4Aah3o0PEkHmMy1kKsY0Y9RwqWq2TAUw5H/lSvyI/
xNJ6xDNLx6Dq6T/xrvkKx84gxvaqDajZa+/jmrcYEG4IJesUC2Pf6mQTLmSwg8ojswNprtclf2cH
dLZpuHr+82rJMcn/auqe+yqwSHjVxy3K/AH7oOcobsdH7qmwnEOoD211v6wu8/IlZpluXP4kAlfW
bm31NMTdmT2Z3DWNl3tJoiKlCtLP7XXiWpw/rfP6OGvMYvDE5ZYjOLUOCETF9PSOODPBJxuJiwT/
xDSKS48cQFAr3+tskj9XU6Vwek37FXUwmjEVOWVCzKNCRDsv9Ky6TUNv5aGNldFhNxXjduf97DTR
PwlVHYfZ5vf5tho0wYjZA/lvKUwWMJL9ug4PfjwW8FnNTPDrgkaZsA7JqiTxybWRu+LzzXKxv1Vz
DN27wjxmK2xP7Sh0kG+t3xPc/riaJMUWrs/03/nFsbBGPbo3g4vHuwYfmD/8/kHirOs+M6l7rPyp
H3trRU4mckInQKwrFQ6Hx5r6pLBzVJ214tAhb2bNDxXlf8h76U51M7wUAhIbQtPDVlP2zV44D6qq
qRFVDOf5XLGcDlXoYrbqrxFNFFCPTnzHG8T5/EP5+7xdS8sybykNYn6zYa35LVyPGtCaDxcEmHjh
dbUokPFkntmpLqLIEXYl7hDliW2iECDDCokZq0IcXW8Km3+C07fI1rmYW56aR6fqqvIcHu5ubr0y
05qh9YE+5vHTg/HmkA4EBrZ+qXhz2XEJeJWr3MfrHHFJtCvWUj24xxhdS+ccCAK1MnFV+dM0LiJ+
w4NiQsFwLEFxih+HdiN6nnspmqzYDhChVTpPQ9gr8BKuJ/IJzBzBzzIN5aHJj6RHvH4erhkiO7As
X6gvYVV+yTR07EiNTdm7t0egmIef223u1RX3mcqHseX+H16kg3NWpfy4s7riwu/leIDCxrBYMw/1
VFVx69yMfFcBI5UlvWIL8uMcCfzcBGDFdiqLhHGKQk8dfeLELwrrfdhjlnP1bYWAOlP9mNMfsavO
O9bBPEo7YdlATpTt0/2DrFVi2+i+sjxrTbczcuGmGZB1DTBQM/CJNk0ttmX6ib844giKNioFYZEu
ad8qNUXadL1EdHjuCxYA+knE8QVLU61DZesKf4kvUpJiSQdYRpCsJjq0mLnEpAdnuZcJB7fuQfav
TFIkl9S0lbzZYhHogLHfyEZsF9B+QXKyLYZLB+Q/2Umzr8m9sjnPADv88NRSsuoZigvgFkmnfxMi
1pKjg7kvzzv4WcCwiJUUIwVmSFMWOD8ZJ0lakHD//q80IaLvBsfGDwDpIfGBIM4+hETxXjcQSqg6
7eDN6csAmUS7n9EVpHcIAygLu9NCdsax8ySQkGWNTeSHsaTmm/TogO1nRRxwgzfKHQlzqAdB2m9/
/psGWYGyARQ54U6QMWxCY/alEmF1VQ69KhcErYu2QG3rbf8jIGBO7NC7mPwj7eaWGakEW6r1j5G2
S53H4FaKgM4r80MRe80zv5CZA+u1iDCJsxw4XXcOMRj44ZInuqF1q6Wq0J48iX+Iri2h9Ep4Fo7g
rhw7+/QIi2m/+4+w2xa8qW08h3pT7ou/uNTf+SHD6dAbQJXED9Dno8ZNlkS5f9xRJvf6pzz2c75g
f4Tnml35imomOLeSJClugscCTmWGjEnoIjWlJOiYxCUju4YNloRgeSJYwIDy1kfza9ToOZXkoGxT
LaLOHrOP0ln5lY/Ihkr9ifr0ydXRB85WHkF4oSQ8tg6PQu+15aROf/KNcSQ19tBAR1ATXCCqWxeF
63wSfozG9X2Yjj+jDCL+FeDoSIQlOduX1TGLm+A0jAL9lTivOFu02owqLHn8pAjXbQUwAxhOSvD+
21Lstoaea+ztPy3/eQl1PbOEqaKGjnti9YK46V7iiF84TpNZ8JwNx3L7dxGmJsyP2+Md7YAlij5J
2M+mhbG56M+gs93dRkbETOstiagzhiMoBDzihjC01KzZCByHqXxhGK2kllmLyc43qr2beiGfjQTe
M4n+CitmGetEmKw3yH+AY89QOiCEJ++miuGgAb1XTBsD6NFLiuxd4+TBeSHQwyxWasb0R7scMoRP
3nKk5tjSS0zzroBx4oEaJzG53glSrkc5117hdABBton/Nfb7QrvoSlw5czDm58zgybctyu6yUUIc
6HcpnaTynA68RNYrVAA+3l/oevxDjI1PkJgyAlIhAO12/Fs4n9qmnSw+ujVAeC+gGvM5zsWB6vyb
9nv/3gOnxaMUxB61tQ5arsnm0ZvHhmypWu1tXyqxEY1XHXEMwmNEiauKQ+d4PMBuIebT5pjQEtF/
GQTRoYlEUASJjG5VL0mbsEbdmWsSOQbp7rFI9uFVrbBciXf9pXPAnz1RtXow1JoXQSe8Y4vW4S6Q
ea3Mzny6Hh4gxPguSB+jQM5AdZivwKZxcsnolic8LNyhhuU25Ypcg/t8h3Kgw7IoacFppYpwsozq
KhoWVVErGYPZQjossnGJVy2o7t18Tm1kakxOZ+1EftXNFXiiXnet4c7935Es9EMsRh0wfj+LZ0wO
Hcjnb6tPuQluHOseSbGKcVn7uQwGQEXkdfkT4Vjhg7po0QxUjG5R45WecYE5zXhhyT/trOSXZU2i
UKTfRxnLCv3uzTxz+Aeau1iC4uFeAmtuvfDcQza++WC18jPqkAi91lP8xVup1Py7wyO47y6KZOHv
f7m2MrafREsaLTpDvVU8/YrfJ5b6diZir/D/Nnmua7oPWcu1WGm8U/ELciVO+WSXQLrh4+Sh3qk2
3a1zLtGRFZ7kyPwEPnpIwZQMVHiI7cveK7B6iRG7+wc2pwRsWNRDCPgRAVNHFTYg3+DccD7jN/ph
iIbmqJe2ICADqUbXPqS5WQW6MC1zDBEzUYldLgEZBXRd95iuaHFMHjvGieEwnjkyt2WG6MrT/+am
dVencJvJNdcQuu+Nk0ryJO1HU0xFGrzLYYO9EmY4jkkJ593MRLZisnd4gRHGwqG470a0TpdiQ/FO
GvBhP0ZrJ2MZFT+IAR4T0hjhmHR1f5ZS4sDPYsqbmTkoWEguQFOFyyZjonCh72S+EcZqkkRP+Tr5
PFkJ6Rw+/D64hZfxXk9NfSJUWMQnHlIvP8ojCXCIHbORijLuOB3SrXIM+WnMbfgkqeGauauTVxkC
u25wtOwutPZMUYAjig+cGzIESzY8Dj701H0f5A+3IPQx4STGb2Da7z7oOm8n+4JFpQYttHc+HBt6
EB6gsTXgxzxkWxVdxcZIYebcZvzbxwGgm83CZ3WyCwmH1QWjgvuZtwW7xFX2yJy6J38d44A2H0xU
wp35s4xfiBboCamdPRvpFBiGM4B0oisqCdASP5qKaKDix22bOku7VN9Cg/Tg2hRE+1G6rHYvzUGc
86xxgToeQzT+ML6GlOV6Owsh4IS+13Zwx4yxHZ3cRuTwi/v7KSOSndsyeeZgcdqH21xTRusMoCUn
hH88NLxBP5WxwX9jllSl55Slwt4ZRLygRzOlR6WLkurVVeIRy+dKZWPikCB4WC1y4TWazIkQQInH
OqRaHBa+pvHSZfqhd6o6F3uqZR0j0tIHvbLkJgF1oL8j4Pr4vC2ilX8HBGb8KgXt8tAhPG2aa2Dz
T++kUEbo96GDXaJlemQ1SB/uuMbtzR9uKQ+4DrJROmm1Vlk9Fm+IBiXDPkSWTtoJ79x1niO0+BjD
+FYrtN9/301RQvCQbeuLLNWKc/t/vxOQzSnfVUNxqvp2TnnRoJ4n7jJGkS4DYCFo1ALqm5Gx4kUp
0kEKn7tCf7/uycOXjxHntFhO33CBPdin3f+eD9eyNi80VJjh7j1K2N2gkr1qxfKDXNRwG+Ag30Ku
1EKM+iw1dTstpaYA5xhKnA0SrpeTFuVAc/BDg2XwHZHUoG9B6kTWI4TADGyWgIxNqFeqK8HVIwJZ
eerXb0uNTfLGyCqTasbmwQPe55vfPhDJi8urFJotPgfh6Nt1iSwlUbGHB8u9DMe5Zmo/dJrdf669
ZCaItpEWnHDHheMjcryAVS6cOQt5hcZG+KeJ8zmRMsCgZ0LhX48QlAkuGPxS9F+jB1avOu2Yei0t
QoDw6D6lXIKDh9epDCL4P3K4L4jnQqkdlV9SociX5JeH3VYtpZEaS4AZpo8mBcD78FoSB/fiqdEJ
8qC+G545AZqkdVZNxTvKgoqj2X/yYyybNP+LIZnJHuo+K++Fjdt3TddGiKKWHJhBQFFyWA0HrcyP
86GDIoeUA9kFjPQr6J0umZGn7gUlRXpRXSsRobf9+fUu9papCFltfpAT9QNGT54Vf5HL3blTRJY6
yXG46iUsQoRjQh5DenFEYZPOgVF3Ox4NWgFtyy8ChZ7dYAPTBsN+iNB0fHW6CmRDNJZGdtgGAnsU
Z/XqD/JEiAb3Anm7J2GFvjcx1RIR6L7OFvyqT3g8/eH4wpDOcXi+YNGZLjd52Pcv00t9jImAGi+r
VBpgWQf7YJk+y06nhrJyj8lyeEAJAQCn2GrTwFCPHRwbwj7IU+TBgcqgaWZ4MmSVLgZPn/NwW1Wh
6b/dXy2UuvmDhujfFPKVIP3nRb0rsRA7du6xU1pcOXPzhpQ69a1+CqXbMp5ZKmUpir24lpxOD992
tVOXV2vgY75mD4lWWlQhobvk+lAjqRVyLzAb2s1488wsNNa6SVKOl+MRWMj+6NwQy+2unRUD3hPw
9xYd6Jrs2yFEsuFa1pSx/XAIKFXwQZhSMmKH8iYPN9UhxGYrprpaTxhEYKJb7p0n+QQauoFCff0P
8Sf5s57uAiT1hakmqvhjTHwXbrSKps3URsCHy4j3NWnleTlksr/y4TfMuN9l0EZ80kM6jfg89pxM
1dfbinZ4Gk641LPmycKfN/Ts/ugTv2GE1Sw5PoKiP9S0R8GUCOWyg6Rhh8QQ+Nuog9DqaSb4Yk8l
oZwmnwyqSQjh/lfQnyED3I2swLrn7rZHBJucp1M5yinZe8EXYiR97GWWJg0yExxqA3z6NFpfPaoa
FzsJcNa9wfp2bM+ofuaDrcSlDTaREwbMGsRLoX2tegSSkvD+A80vjr1EV3nymlQUFB2jVsqwXBRi
kB4i/d+NAlIeTD3lE2j3LWg3gRQ/SGv7Xtgtfwfa8YlEi1P3LqwsAta0LT25TqdKxOUto/Gcne5j
5/ap1C47RP9/JKxtJwmnM7RQ2waSYToJ8n6z5NkEbo7iGWw62/QM7oP3EtFeUA0K7n76MEjVVWqA
l4ADfBR3q0T0COb9vkQ3JXARk+3+aGa6xLDRAwm4Q48IFKEudJcSsum5YT6GcIZl8RTCivN0Y4FO
PlYWbkfPh1qw2PL3Ghguyf6g7ROlFMlgxLaObST0AFyGcwbb+mhZ5QQ4hpcKsMTe4KQ7JaEhkxxb
2ukKtRAiGdChg3An4h8HamKze57YEa0yq+j0TaBvOVD6a7Q9KB9jziI87ZVSeqRJLIvae1qrR96s
PpVtKi6Fz9qVfbzZjkd4IPymy2bOtQloi71aEeWuFDHWDGWEaug4GaB1LfaaqYV2XjlQsZwRo5Ua
5gXviqWek7DAWb+xc74BA24096GVeVEoPScGsDUvk7RfEkN4pIE9j5m7+s0NKpF8ff216/jRwQ27
s7r1/parpLy5AKn1hGG6nJ7PPIpZx+0mGJ4hWyLv1zpg7Ql85gzaOgYr5Eb0FXUWdxbkf6p1RnnE
VwcwJbh/EyuKBOCtc+QLWedPk7SZeMDorHYvsdvZ9b91dOuqI0TRQMPgDWCgVTxF8dKtOdZ7BDrj
SqV6l/F8g3uME2TWF6oqqE6xTXDl585qpx2DESi2r2QRAKIzhgW+XHgsE0qSb0ml3aUdTmQyDFMx
YVFxgxPogBPVrkoMKZBJCNv6T/s/8egh2VCdA7GzLA+aYidZofDD6cqUWN9HZAEFoKATxB9wtDD9
jJkB/yyoAPsgllLXfc4qvKM+lWg/eA68H2WFsInm0yRUxchDBoduvnjwe2LLDP/FyqN0tF/U2jyl
FcYmr1JLsx14L3NX6E4K6PSc27MNCOZkhqIaHlCGcm2LScnmF78t3mKqchC9olpHTSC9LMWMJ3Yw
zaVe4JPj24iRmcbvtsKbwM1GRTdHPaCYEiuz238xP2sf0FPIUzlYE/NkCWBeSv8jOeKRz13OQxcq
wU3s3Rag6iyhHCrAj1QrkhZMcPZ+gj++NAnb53eQIW4zdocaaJtxasECUh6Rm+823RIvakJJ0yJK
HhqVHgV51cs0zBjY4SsTHiTn78oBHqJ5P7xWuH2fUrb57kOUiHz8JrE0erDrPFZNI7llw14R18+3
6LmCOks0UkW4fURleqM1KkrIJoxtZB8UzOl4QJIb+V7LV/BGfrdAyF6CABBdNHwk6Vd3A83NGvwX
1hx2lT0/ixAWElnPZyPwnAM+qqdSvQ6tYNKeeva1zT/Eqn75wz73p7CQylFVsYOd6kP6lgaSQt+2
OjFv8mQKbvE0y8fzqjzJxxtDjuE/LRFFV+WyD9yUlOcSCIBY72ThuJERebpuf6Xdv60OjLMmykDY
dpmv2oHXOEcvl9EupXoLKTbHK3uAGqqjpKab8CLCdzAf15bbd0hlq//L1ys64W7+hdpEDi6ZX7pN
FCssNlOBbAF+lpRu2hRNmVaDFkiTZuKaD5Ui0eMs2SAOWUfBFx5QI81sPoiXaUdp46D+rO3Sc6nS
Km7LAr36D7wD56EOCP9L+dN43GYgehRtqYGCIh1+gsGwCQFn1PX5ZuEuxtq+PH5T1sqFnVTcZPJV
EZnJRcnYad4kpLL+OjJOPlxbzZiVIciENu1X6jBhz2lktBvvcKFNVSQ8jAJP5uDLystBFTO7ddsS
H0NHjleV/qJuasPq4Wy+U6y55J+tD+28IEOkeVDEayy/PwiR9qORMuZAOACLC7oai1uMvMtqbLcv
DMhVgCPonoMT4DJVTQP7MLHyBoThLMN8A9K8eb4n1bxdcaUF4Pj58MwRSUf3AppNcbJ8y5XN5TYe
2QHjMlsedWtruat9tQrVnmrFsvENE/a7y9c0gcd2rfUsIQoQKzO68v1ZMZE6Khv4kpjo5O4J5bUw
65FAlu2qg1fEDCZvYZmMO40GHQmw+Gqz/zbmaM7KmH6T3TfDbllIyLndIls3X1omFhNe8jSYgXxS
fG27xUqKIfd2DCX0q/VwDAHOx3+PIirpKJPXRwJ6RldIQ7FuFuYKs7gvOQCo0Pibh8Ob1zXCejlW
wVXVzNNZ+/1uUsLVbvXfs8/YJKnxUH0p/VouozS3uHCkXpOogNXayNY7FaRktOdKJTcqyBT/eErM
zrIdeIDEUfXXkzdCfcirgxw+xfstlOsR43d2wMgg/uCY6Rnwir2GeZQDJ+kPTYIm7Qw8e6IDa4M4
TKVpG7nk4QL4wrok+SzHNLPyApaFH/if9BFnHjRF2O6adY4dn5zqY9a8oIMMoHo4ZQJogCuqelpi
kQBt1HdfsihSCXWlk1NbmE1971AXY4XQHk1aotHq/IlK2GSYPmWO4ts3oaHMtazW99bI//nIDZ6R
iSOuXuSU+oErJTkg3N1bJ7S7uFxWGmwb9yK2eUnG7ao28LJuFRoLCk1rp8HwiC4/YEUpqCLV/pwa
nvfsarfyKsiQVQoFBma9TIbUHB01TbzAnVKO02m8Nlnj7MgcZ5BoAcfMCD2hw02K7QG8inok2JEq
wLAozSaTk0DIT4AHZA9HBnRuN36oJTlznYTw/l+u7Nj3vtp0IsW4+ek8OLkkdZ0Udhh1V0pnKjru
opUTCVTBTECArkE1XW3q46tANzdp8dw/DMkdiyStEVmVmvBEx43eZBB4LWJXkbLjZ8uPmXD3nfcO
ZHYfW3eToca2T1Y2rsYpD6WzEcEghUro74z2v+zSAdDM1QNLp+sYVUDav+VQmv6LmvlsqqR+fADx
Q6cGCYtAGaZ0ba27o3ImPsrjXOZD0FzlALDIvVN0xSA+55gm5c4rrzIiVgJbRukbA0Iv8hnoYV7l
XZryC+t9guwmUrkHQXbP/dJrb4m2K+f1Acj00NUcubhP0ff23St4kJmePK6YcbqAPFabKe9N5gOK
qBa6S9P4bbWzMxY13E6pLvr3klQfsjNZ8Clvnd1pVOalt3zXe7W2AfhXwjAFyX6H/Fok4lWcsVEo
jMblRl+X/r5lfwyvuzg+THdF7mMD14WPLaAYZtKZGH2muzhhPPxZKClw7Lf39wngYeoAw+HZRJIe
Q0dyEp4Dx8hXivPcToWZxQY94v2yqoxVRHaYItgOkjN/fC3do5cg6mleT8z7pWtfdH5cgbZHBjLv
Sn2TPi0S99/uolxfaGRSWfFGK3uQUU8C2guzUWsKUNERIhianqpohP3L05xlmWoCDTmlecIR1o0I
nNV7rpgpdkiIirvT8BN5ZLhArXKg2bc/ToVy8dkzLo0eISCeo1ztQJPewOmA+5Q1Fzu9D1J6ny4t
0FD+ziO/OcVVFXPDJDF+Tad3oTZkWrb2Gm0U3ma8y4slVzHVUKiF3RR00XhG7uXONQUi8lKM0y56
k87u0u6vNQda0NWVHdFZcG3yJdae3rU8lfSy0f0p6Sz1OfAijcC+eP5dG7bzaEMTbr6bxHxU8JAY
W5SeE2NlxG6mOBdhF0PXF9HEs5QH3DeHm99oB8waZL1wnOqteclLTp3uZoPxJbWDsxeIMuWfdsk1
6WZ3vR0HjFpDA4iMc9TMaMrereQgJqgDzoXaO7yKDpGVLuzUGuKkvQCdbBpqj7RykFtt29sPwMex
sYTz+j6BBh051Hzx2Qph6BDIj7S4zPsYNo68BesYlfiIh2W6SbhAF47CfVi41EL8Fm0jLBGr7OqD
Yv4aMtBptYg+ryQYDz1JDecYh/m8svPVw7l6HO9L+mf/7gXzz21Vs11rX4rhsWoUaGPDXrwVzKX/
HO+2CfdPE2irwGQdlOjA8BBRPfFKCenVwDu/Zgg2gtUBJwMimq+usoHAT/5yilzSmiRa9Ff8kkUB
12KrKJk7C/ebkA+WUHn7I4ytdkrOBq6oX+VZFppyY1YjpOVsyxXFt7iL1X4mVY+uUm6BNex3gWwf
ByY/YJa3zZykvlXeJm3Ri2hmBnvRBKaWPUpVPSKdP8+zCW7PW5wSzK7Vwp73Xi/aM4hr50cH+xwF
BJMnhwItQ0DBeZngb6R13uT5KZaV+5K1EVepfz1h1nxwOKR9FhKaddirDFMG6CPApowexhMQyxox
CxCoKu7DKEYQZH0fCEjMssif8mUE1mvzRGH9qo088UPM6416EUlaHdK7S++e/f0TZGJbZ8EiQSIV
tkR6Mfh1iwuK7TD5tSwBpH7AGoMTlVNR1J5vXrAh5Xrimv5w4O/1wCLJW4U15fUFd2yLsM3NUqpi
vPcvx2BN+l4RK8o0Oie6dgn+ze3DUT/H5D5j9LPSZADNp2VkCJPP4POh7SlASgbu1OFlNoDbRWwB
l2jAp3rzoAgg4m8tf66SKstVdodzogo53SOAutprrEjzyIdfPxI3s2ddPDIePdh4rLbPBc4MdLJ+
7FdcMBOkX+qIWcDnLnvzdOVJCxCeT7MZ3dwhFwUoYgy7D3RHJs3I8HYEsKPNhNjcSKZQrV1yifju
3AC7tlqvCYFjF/SF04whsMOz2WYTuOF/EERz3qVSkDc422Kh0rOG65aqDJ/54JfSzia1m02gS+jS
WSGoKsI8r28kWNzWm/Qclk7MA6GR0RkkxOrQDRu+Cj+jcwRYyuXowDhECh79Xz0aVvM9Du9uOuCz
UNv2CnKcuaF8vQXBSracPcgfN3QTMhrdxyoDWJh0KY4HYGBAMSZPLeGzyrFS5NMIjyjvRAC2jUAK
2HSBWEs0FkGlq9RVDtfFfdI24FvLLrlgY3W+vsgIgZTRj4zpl0QJN1YfhXH891h6nNaN3XYIL4/h
PZU4749qW2yMTnBZQnpYf9w6n/3AJ5+XLxdNY9A0MNYqwfv2wUvb26H5Brov11JxypjKvgQmhxmI
jJt9
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
