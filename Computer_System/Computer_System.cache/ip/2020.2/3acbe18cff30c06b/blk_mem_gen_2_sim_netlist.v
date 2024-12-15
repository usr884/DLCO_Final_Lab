// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sat Dec  7 18:44:36 2024
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
+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
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
