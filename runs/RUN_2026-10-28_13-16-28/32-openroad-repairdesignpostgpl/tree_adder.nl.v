module tree_adder (Cin,
    Cout,
    A,
    B,
    S);
 input Cin;
 output Cout;
 input [15:0] A;
 input [15:0] B;
 output [15:0] S;

 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net50;
 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;

 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_32 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_46 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_47 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_51 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_33 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_34 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_35 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_38 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_40 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_41 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_43 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_44 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_45 ();
 sky130_fd_sc_hd__and2_2 _086_ (.A(net17),
    .B(net1),
    .X(_045_));
 sky130_fd_sc_hd__nand2_2 _087_ (.A(net17),
    .B(net1),
    .Y(_046_));
 sky130_fd_sc_hd__or2_2 _088_ (.A(net17),
    .B(net1),
    .X(_047_));
 sky130_fd_sc_hd__and3_2 _089_ (.A(net33),
    .B(_046_),
    .C(_047_),
    .X(_048_));
 sky130_fd_sc_hd__a21oi_2 _090_ (.A1(_046_),
    .A2(_047_),
    .B1(net33),
    .Y(_049_));
 sky130_fd_sc_hd__nor2_2 _091_ (.A(_048_),
    .B(_049_),
    .Y(net35));
 sky130_fd_sc_hd__nor2_2 _092_ (.A(_045_),
    .B(_048_),
    .Y(_050_));
 sky130_fd_sc_hd__or2_2 _093_ (.A(net24),
    .B(net8),
    .X(_051_));
 sky130_fd_sc_hd__nand2_2 _094_ (.A(net24),
    .B(net8),
    .Y(_052_));
 sky130_fd_sc_hd__and2_2 _095_ (.A(_051_),
    .B(_052_),
    .X(_053_));
 sky130_fd_sc_hd__a221o_2 _096_ (.A1(net24),
    .A2(net8),
    .B1(_047_),
    .B2(net33),
    .C1(_045_),
    .X(_054_));
 sky130_fd_sc_hd__xnor2_2 _097_ (.A(_050_),
    .B(_053_),
    .Y(net42));
 sky130_fd_sc_hd__or2_2 _098_ (.A(net25),
    .B(net9),
    .X(_055_));
 sky130_fd_sc_hd__nand2_2 _099_ (.A(net25),
    .B(net9),
    .Y(_056_));
 sky130_fd_sc_hd__and2_2 _100_ (.A(_055_),
    .B(_056_),
    .X(_057_));
 sky130_fd_sc_hd__nand3_2 _101_ (.A(_051_),
    .B(_054_),
    .C(_057_),
    .Y(_058_));
 sky130_fd_sc_hd__a21o_2 _102_ (.A1(_051_),
    .A2(_054_),
    .B1(_057_),
    .X(_059_));
 sky130_fd_sc_hd__and2_2 _103_ (.A(_058_),
    .B(_059_),
    .X(net43));
 sky130_fd_sc_hd__nor2_2 _104_ (.A(net26),
    .B(net10),
    .Y(_060_));
 sky130_fd_sc_hd__nand2_2 _105_ (.A(net26),
    .B(net10),
    .Y(_061_));
 sky130_fd_sc_hd__nand2b_2 _106_ (.A_N(_060_),
    .B(_061_),
    .Y(_062_));
 sky130_fd_sc_hd__nand2_2 _107_ (.A(_056_),
    .B(_058_),
    .Y(_063_));
 sky130_fd_sc_hd__xnor2_2 _108_ (.A(_062_),
    .B(_063_),
    .Y(net44));
 sky130_fd_sc_hd__nand2_2 _109_ (.A(net27),
    .B(net11),
    .Y(_064_));
 sky130_fd_sc_hd__xnor2_2 _110_ (.A(net27),
    .B(net11),
    .Y(_065_));
 sky130_fd_sc_hd__a31o_2 _111_ (.A1(_056_),
    .A2(_058_),
    .A3(_061_),
    .B1(_060_),
    .X(_066_));
 sky130_fd_sc_hd__xor2_2 _112_ (.A(_065_),
    .B(_066_),
    .X(net45));
 sky130_fd_sc_hd__nor2_2 _113_ (.A(net28),
    .B(net12),
    .Y(_067_));
 sky130_fd_sc_hd__and2_2 _114_ (.A(net28),
    .B(net12),
    .X(_068_));
 sky130_fd_sc_hd__nand2_2 _115_ (.A(net28),
    .B(net12),
    .Y(_069_));
 sky130_fd_sc_hd__nor2_2 _116_ (.A(_067_),
    .B(_068_),
    .Y(_070_));
 sky130_fd_sc_hd__o21a_2 _117_ (.A1(_065_),
    .A2(_066_),
    .B1(_064_),
    .X(_071_));
 sky130_fd_sc_hd__xnor2_2 _118_ (.A(_070_),
    .B(_071_),
    .Y(net46));
 sky130_fd_sc_hd__and2_2 _119_ (.A(net29),
    .B(net13),
    .X(_072_));
 sky130_fd_sc_hd__nor2_2 _120_ (.A(net29),
    .B(net13),
    .Y(_073_));
 sky130_fd_sc_hd__nor2_2 _121_ (.A(_072_),
    .B(_073_),
    .Y(_074_));
 sky130_fd_sc_hd__a21o_2 _122_ (.A1(_064_),
    .A2(_069_),
    .B1(_067_),
    .X(_075_));
 sky130_fd_sc_hd__or3_2 _123_ (.A(_065_),
    .B(_067_),
    .C(_068_),
    .X(_076_));
 sky130_fd_sc_hd__o21a_2 _124_ (.A1(_066_),
    .A2(_076_),
    .B1(_075_),
    .X(_077_));
 sky130_fd_sc_hd__xnor2_2 _125_ (.A(_074_),
    .B(_077_),
    .Y(net47));
 sky130_fd_sc_hd__xnor2_2 _126_ (.A(net30),
    .B(net14),
    .Y(_078_));
 sky130_fd_sc_hd__o21bai_2 _127_ (.A1(_073_),
    .A2(_077_),
    .B1_N(_072_),
    .Y(_079_));
 sky130_fd_sc_hd__xnor2_2 _128_ (.A(_078_),
    .B(_079_),
    .Y(net48));
 sky130_fd_sc_hd__or3_2 _129_ (.A(_072_),
    .B(_073_),
    .C(_078_),
    .X(_080_));
 sky130_fd_sc_hd__or2_2 _130_ (.A(_076_),
    .B(_080_),
    .X(_081_));
 sky130_fd_sc_hd__a311o_2 _131_ (.A1(_056_),
    .A2(_058_),
    .A3(_061_),
    .B1(_081_),
    .C1(_060_),
    .X(_082_));
 sky130_fd_sc_hd__o21a_2 _132_ (.A1(net30),
    .A2(net14),
    .B1(_072_),
    .X(_083_));
 sky130_fd_sc_hd__a21oi_2 _133_ (.A1(net30),
    .A2(net14),
    .B1(_083_),
    .Y(_084_));
 sky130_fd_sc_hd__or2_2 _134_ (.A(_075_),
    .B(_080_),
    .X(_085_));
 sky130_fd_sc_hd__and3_2 _135_ (.A(_082_),
    .B(_084_),
    .C(_085_),
    .X(_000_));
 sky130_fd_sc_hd__nand2_2 _136_ (.A(net31),
    .B(net15),
    .Y(_001_));
 sky130_fd_sc_hd__or2_2 _137_ (.A(net31),
    .B(net15),
    .X(_002_));
 sky130_fd_sc_hd__nand2_2 _138_ (.A(_001_),
    .B(_002_),
    .Y(_003_));
 sky130_fd_sc_hd__xor2_2 _139_ (.A(_000_),
    .B(_003_),
    .X(net49));
 sky130_fd_sc_hd__nand2_2 _140_ (.A(net32),
    .B(net16),
    .Y(_004_));
 sky130_fd_sc_hd__or2_2 _141_ (.A(net32),
    .B(net16),
    .X(_005_));
 sky130_fd_sc_hd__nand2_2 _142_ (.A(_004_),
    .B(_005_),
    .Y(_006_));
 sky130_fd_sc_hd__o21ai_2 _143_ (.A1(_000_),
    .A2(_003_),
    .B1(_001_),
    .Y(_007_));
 sky130_fd_sc_hd__xnor2_2 _144_ (.A(_006_),
    .B(_007_),
    .Y(net50));
 sky130_fd_sc_hd__or2_2 _145_ (.A(net18),
    .B(net2),
    .X(_008_));
 sky130_fd_sc_hd__nand2_2 _146_ (.A(net18),
    .B(net2),
    .Y(_009_));
 sky130_fd_sc_hd__nand2_2 _147_ (.A(_008_),
    .B(_009_),
    .Y(_010_));
 sky130_fd_sc_hd__or2_2 _148_ (.A(_003_),
    .B(_006_),
    .X(_011_));
 sky130_fd_sc_hd__a21bo_2 _149_ (.A1(_001_),
    .A2(_004_),
    .B1_N(_005_),
    .X(_012_));
 sky130_fd_sc_hd__o21ai_2 _150_ (.A1(_000_),
    .A2(_011_),
    .B1(_012_),
    .Y(_013_));
 sky130_fd_sc_hd__xnor2_2 _151_ (.A(_010_),
    .B(_013_),
    .Y(net36));
 sky130_fd_sc_hd__or2_2 _152_ (.A(net19),
    .B(net3),
    .X(_014_));
 sky130_fd_sc_hd__nand2_2 _153_ (.A(net19),
    .B(net3),
    .Y(_015_));
 sky130_fd_sc_hd__nand2_2 _154_ (.A(_014_),
    .B(_015_),
    .Y(_016_));
 sky130_fd_sc_hd__nand2b_2 _155_ (.A_N(_012_),
    .B(_008_),
    .Y(_017_));
 sky130_fd_sc_hd__o311a_2 _156_ (.A1(_000_),
    .A2(_010_),
    .A3(_011_),
    .B1(_017_),
    .C1(_009_),
    .X(_018_));
 sky130_fd_sc_hd__xor2_2 _157_ (.A(_016_),
    .B(_018_),
    .X(net37));
 sky130_fd_sc_hd__nand2b_2 _158_ (.A_N(_009_),
    .B(_014_),
    .Y(_019_));
 sky130_fd_sc_hd__o311a_2 _159_ (.A1(_010_),
    .A2(_012_),
    .A3(_016_),
    .B1(_019_),
    .C1(_015_),
    .X(_020_));
 sky130_fd_sc_hd__or3_2 _160_ (.A(_010_),
    .B(_011_),
    .C(_016_),
    .X(_021_));
 sky130_fd_sc_hd__a31o_2 _161_ (.A1(_082_),
    .A2(_084_),
    .A3(_085_),
    .B1(_021_),
    .X(_022_));
 sky130_fd_sc_hd__nand2_2 _162_ (.A(_020_),
    .B(_022_),
    .Y(_023_));
 sky130_fd_sc_hd__nor2_2 _163_ (.A(net20),
    .B(net4),
    .Y(_024_));
 sky130_fd_sc_hd__nand2_2 _164_ (.A(net20),
    .B(net4),
    .Y(_025_));
 sky130_fd_sc_hd__and2b_2 _165_ (.A_N(_024_),
    .B(_025_),
    .X(_026_));
 sky130_fd_sc_hd__xor2_2 _166_ (.A(_023_),
    .B(_026_),
    .X(net38));
 sky130_fd_sc_hd__nor2_2 _167_ (.A(net21),
    .B(net5),
    .Y(_027_));
 sky130_fd_sc_hd__or2_2 _168_ (.A(net21),
    .B(net5),
    .X(_028_));
 sky130_fd_sc_hd__nand2_2 _169_ (.A(net21),
    .B(net5),
    .Y(_029_));
 sky130_fd_sc_hd__nand2_2 _170_ (.A(_028_),
    .B(_029_),
    .Y(_030_));
 sky130_fd_sc_hd__a31o_2 _171_ (.A1(_020_),
    .A2(_022_),
    .A3(_025_),
    .B1(_024_),
    .X(_031_));
 sky130_fd_sc_hd__xor2_2 _172_ (.A(_030_),
    .B(_031_),
    .X(net39));
 sky130_fd_sc_hd__nor2_2 _173_ (.A(net22),
    .B(net6),
    .Y(_032_));
 sky130_fd_sc_hd__nand2_2 _174_ (.A(net22),
    .B(net6),
    .Y(_033_));
 sky130_fd_sc_hd__and2b_2 _175_ (.A_N(_032_),
    .B(_033_),
    .X(_034_));
 sky130_fd_sc_hd__a21o_2 _176_ (.A1(_025_),
    .A2(_029_),
    .B1(_027_),
    .X(_035_));
 sky130_fd_sc_hd__a31o_2 _177_ (.A1(_024_),
    .A2(_025_),
    .A3(_029_),
    .B1(_027_),
    .X(_036_));
 sky130_fd_sc_hd__a31o_2 _178_ (.A1(_020_),
    .A2(_022_),
    .A3(_035_),
    .B1(_036_),
    .X(_037_));
 sky130_fd_sc_hd__xnor2_2 _179_ (.A(_034_),
    .B(_037_),
    .Y(net40));
 sky130_fd_sc_hd__nor2_2 _180_ (.A(net23),
    .B(net7),
    .Y(_038_));
 sky130_fd_sc_hd__and2_2 _181_ (.A(net23),
    .B(net7),
    .X(_039_));
 sky130_fd_sc_hd__o21ai_2 _182_ (.A1(_032_),
    .A2(_035_),
    .B1(_033_),
    .Y(_040_));
 sky130_fd_sc_hd__inv_2 _183_ (.A(_040_),
    .Y(_041_));
 sky130_fd_sc_hd__a41oi_2 _184_ (.A1(_026_),
    .A2(_028_),
    .A3(_029_),
    .A4(_034_),
    .B1(_040_),
    .Y(_042_));
 sky130_fd_sc_hd__a31oi_2 _185_ (.A1(_020_),
    .A2(_022_),
    .A3(_041_),
    .B1(_042_),
    .Y(_043_));
 sky130_fd_sc_hd__or2_2 _186_ (.A(_038_),
    .B(_039_),
    .X(_044_));
 sky130_fd_sc_hd__o21ba_2 _187_ (.A1(_039_),
    .A2(_043_),
    .B1_N(_038_),
    .X(net34));
 sky130_fd_sc_hd__xnor2_2 _188_ (.A(_043_),
    .B(_044_),
    .Y(net41));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input1 (.A(A[0]),
    .X(net1));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input10 (.A(A[3]),
    .X(net10));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input11 (.A(A[4]),
    .X(net11));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input12 (.A(A[5]),
    .X(net12));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input13 (.A(A[6]),
    .X(net13));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input14 (.A(A[7]),
    .X(net14));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input15 (.A(A[8]),
    .X(net15));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input16 (.A(A[9]),
    .X(net16));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input17 (.A(B[0]),
    .X(net17));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input18 (.A(B[10]),
    .X(net18));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input19 (.A(B[11]),
    .X(net19));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input2 (.A(A[10]),
    .X(net2));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input20 (.A(B[12]),
    .X(net20));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input21 (.A(B[13]),
    .X(net21));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input22 (.A(B[14]),
    .X(net22));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input23 (.A(B[15]),
    .X(net23));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input24 (.A(B[1]),
    .X(net24));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input25 (.A(B[2]),
    .X(net25));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input26 (.A(B[3]),
    .X(net26));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input27 (.A(B[4]),
    .X(net27));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input28 (.A(B[5]),
    .X(net28));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input29 (.A(B[6]),
    .X(net29));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input3 (.A(A[11]),
    .X(net3));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input30 (.A(B[7]),
    .X(net30));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input31 (.A(B[8]),
    .X(net31));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input32 (.A(B[9]),
    .X(net32));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input33 (.A(Cin),
    .X(net33));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input4 (.A(A[12]),
    .X(net4));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input5 (.A(A[13]),
    .X(net5));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input6 (.A(A[14]),
    .X(net6));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input7 (.A(A[15]),
    .X(net7));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input8 (.A(A[1]),
    .X(net8));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input9 (.A(A[2]),
    .X(net9));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output34 (.A(net34),
    .X(Cout));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output35 (.A(net35),
    .X(S[0]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output36 (.A(net36),
    .X(S[10]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output37 (.A(net37),
    .X(S[11]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output38 (.A(net38),
    .X(S[12]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output39 (.A(net39),
    .X(S[13]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output40 (.A(net40),
    .X(S[14]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output41 (.A(net41),
    .X(S[15]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output42 (.A(net42),
    .X(S[1]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output43 (.A(net43),
    .X(S[2]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output44 (.A(net44),
    .X(S[3]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output45 (.A(net45),
    .X(S[4]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output46 (.A(net46),
    .X(S[5]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output47 (.A(net47),
    .X(S[6]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output48 (.A(net48),
    .X(S[7]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output49 (.A(net49),
    .X(S[8]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output50 (.A(net50),
    .X(S[9]));
endmodule
