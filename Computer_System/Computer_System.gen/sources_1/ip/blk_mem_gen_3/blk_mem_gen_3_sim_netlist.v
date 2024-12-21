// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Dec  5 23:34:33 2024
// Host        : ubu running 64-bit Ubuntu 24.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_3 -prefix
//               blk_mem_gen_3_ blk_mem_gen_2_sim_netlist.v
// Design      : blk_mem_gen_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_2,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_3
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [11:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [9:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_douta_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.47265 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_2.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_3_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[31:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27776)
`pragma protect data_block
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
bNCLzu+3kSJi5XWqta2Jl4g=
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
