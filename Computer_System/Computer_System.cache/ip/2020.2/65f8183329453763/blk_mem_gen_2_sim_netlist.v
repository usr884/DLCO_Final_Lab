// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Dec  5 17:22:39 2024
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [1:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire [1:0]wea;
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
  wire [15:0]NLW_U0_douta_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7517 mW" *) 
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
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WEA_WIDTH = "2" *) 
  (* C_WEB_WIDTH = "2" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
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
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[15:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0}));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19872)
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
