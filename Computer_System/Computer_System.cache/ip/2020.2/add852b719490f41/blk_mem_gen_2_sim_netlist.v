// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Dec  5 23:34:33 2024
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
