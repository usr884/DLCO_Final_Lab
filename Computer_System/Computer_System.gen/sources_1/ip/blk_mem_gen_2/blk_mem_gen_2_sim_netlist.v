// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Dec  5 23:34:33 2024
// Host        : ubu running 64-bit Ubuntu 24.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_2 -prefix
//               blk_mem_gen_2_ blk_mem_gen_2_sim_netlist.v
// Design      : blk_mem_gen_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_2,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_2
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
  blk_mem_gen_2_blk_mem_gen_v8_4_4 U0
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
Oqqfrs0HWUMx1XJjAKI+Vfc=
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
