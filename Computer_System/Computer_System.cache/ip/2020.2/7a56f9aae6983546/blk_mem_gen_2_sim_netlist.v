// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Dec  5 17:20:46 2024
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
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
  wire [0:0]wea;
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
  (* C_BYTE_SIZE = "9" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.44385 mW" *) 
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
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
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
        .s_axi_wstrb(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28096)
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
