// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sat Dec  7 19:30:20 2024
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
