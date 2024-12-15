// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sat Dec  7 19:50:06 2024
// Host        : ubu running 64-bit Ubuntu 24.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_2_sim_netlist.v
// Design      : blk_mem_gen_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_2,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* C_INIT_FILE_NAME = "blk_mem_gen_2.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28080)
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
