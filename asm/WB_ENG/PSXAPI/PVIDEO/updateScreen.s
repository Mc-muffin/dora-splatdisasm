.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel updateScreen
/* 4AE5C 8005A65C 2811848F */  lw         $a0, %gp_rel(HSyncFrameRate)($gp)
/* 4AE60 8005A660 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 4AE64 8005A664 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 4AE68 8005A668 2800B2AF */  sw         $s2, 0x28($sp)
/* 4AE6C 8005A66C 2400B1AF */  sw         $s1, 0x24($sp)
/* 4AE70 8005A670 B36D010C */  jal        UpdateFrameRateBar
/* 4AE74 8005A674 2000B0AF */   sw        $s0, 0x20($sp)
/* 4AE78 8005A678 B4C3000C */  jal        ServiceFader
/* 4AE7C 8005A67C 00000000 */   nop
/* 4AE80 8005A680 D010838F */  lw         $v1, %gp_rel(ResolutionMode)($gp)
/* 4AE84 8005A684 00000000 */  nop
/* 4AE88 8005A688 08006014 */  bnez       $v1, .L8005A6AC
/* 4AE8C 8005A68C 02000324 */   addiu     $v1, $zero, 0x2
.L8005A690:
/* 4AE90 8005A690 DC10828F */  lw         $v0, %gp_rel(RenderState)($gp)
/* 4AE94 8005A694 00000000 */  nop
/* 4AE98 8005A698 FDFF4314 */  bne        $v0, $v1, .L8005A690
/* 4AE9C 8005A69C 00000000 */   nop
/* 4AEA0 8005A6A0 DC1080AF */  sw         $zero, %gp_rel(RenderState)($gp)
/* 4AEA4 8005A6A4 8B6A0108 */  j          .L8005AA2C
/* 4AEA8 8005A6A8 00000000 */   nop
.L8005A6AC:
/* 4AEAC 8005A6AC DE75010C */  jal        CheckUpdateCluts
/* 4AEB0 8005A6B0 00000000 */   nop
/* 4AEB4 8005A6B4 0017828F */  lw         $v0, %gp_rel(FrameCount)($gp)
/* 4AEB8 8005A6B8 01000424 */  addiu      $a0, $zero, 0x1
/* 4AEBC 8005A6BC 01004224 */  addiu      $v0, $v0, 0x1
/* 4AEC0 8005A6C0 001782AF */  sw         $v0, %gp_rel(FrameCount)($gp)
/* 4AEC4 8005A6C4 EBD6010C */  jal        VSync
/* 4AEC8 8005A6C8 00000000 */   nop
/* 4AECC 8005A6CC 1C1182AF */  sw         $v0, %gp_rel(hsyncs1)($gp)
.L8005A6D0:
/* 4AED0 8005A6D0 36DB010C */  jal        DrawSync
/* 4AED4 8005A6D4 01000424 */   addiu     $a0, $zero, 0x1
/* 4AED8 8005A6D8 FDFF4014 */  bnez       $v0, .L8005A6D0
/* 4AEDC 8005A6DC 00000000 */   nop
/* 4AEE0 8005A6E0 57DA010C */  jal        ResetGraph
/* 4AEE4 8005A6E4 01000424 */   addiu     $a0, $zero, 0x1
/* 4AEE8 8005A6E8 EBD6010C */  jal        VSync
/* 4AEEC 8005A6EC 01000424 */   addiu     $a0, $zero, 0x1
/* 4AEF0 8005A6F0 201182AF */  sw         $v0, %gp_rel(hsyncs2)($gp)
/* 4AEF4 8005A6F4 EBD6010C */  jal        VSync
/* 4AEF8 8005A6F8 21200000 */   addu      $a0, $zero, $zero
/* 4AEFC 8005A6FC EBD6010C */  jal        VSync
/* 4AF00 8005A700 FFFF0424 */   addiu     $a0, $zero, -0x1
/* 4AF04 8005A704 F416838F */  lw         $v1, %gp_rel(gOldVCount)($gp)
/* 4AF08 8005A708 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 4AF0C 8005A70C 03006214 */  bne        $v1, $v0, .L8005A71C
/* 4AF10 8005A710 00000000 */   nop
/* 4AF14 8005A714 EBD6010C */  jal        VSync
/* 4AF18 8005A718 21200000 */   addu      $a0, $zero, $zero
.L8005A71C:
/* 4AF1C 8005A71C EBD6010C */  jal        VSync
/* 4AF20 8005A720 FFFF0424 */   addiu     $a0, $zero, -0x1
/* 4AF24 8005A724 2184063C */  lui        $a2, (0x84210843 >> 16)
/* 4AF28 8005A728 1C11848F */  lw         $a0, %gp_rel(hsyncs1)($gp)
/* 4AF2C 8005A72C 4308C634 */  ori        $a2, $a2, (0x84210843 & 0xFFFF)
/* 4AF30 8005A730 40180400 */  sll        $v1, $a0, 1
/* 4AF34 8005A734 21186400 */  addu       $v1, $v1, $a0
/* 4AF38 8005A738 C0180300 */  sll        $v1, $v1, 3
/* 4AF3C 8005A73C 21186400 */  addu       $v1, $v1, $a0
/* 4AF40 8005A740 80180300 */  sll        $v1, $v1, 2
/* 4AF44 8005A744 18006600 */  mult       $v1, $a2
/* 4AF48 8005A748 EB51073C */  lui        $a3, (0x51EB851F >> 16)
/* 4AF4C 8005A74C 1F85E734 */  ori        $a3, $a3, (0x51EB851F & 0xFFFF)
/* 4AF50 8005A750 10300000 */  mfhi       $a2
/* 4AF54 8005A754 2130C300 */  addu       $a2, $a2, $v1
/* 4AF58 8005A758 03320600 */  sra        $a2, $a2, 8
/* 4AF5C 8005A75C C31F0300 */  sra        $v1, $v1, 31
/* 4AF60 8005A760 2330C300 */  subu       $a2, $a2, $v1
/* 4AF64 8005A764 80280600 */  sll        $a1, $a2, 2
/* 4AF68 8005A768 2128A600 */  addu       $a1, $a1, $a2
/* 4AF6C 8005A76C 80290500 */  sll        $a1, $a1, 6
/* 4AF70 8005A770 1800A700 */  mult       $a1, $a3
/* 4AF74 8005A774 0B80103C */  lui        $s0, %hi(gDoubleBuffer + 0x5C)
/* 4AF78 8005A778 E410848F */  lw         $a0, %gp_rel(ot_ndx)($gp)
/* 4AF7C 8005A77C D4B91026 */  addiu      $s0, $s0, %lo(gDoubleBuffer + 0x5C)
/* 4AF80 8005A780 F41682AF */  sw         $v0, %gp_rel(gOldVCount)($gp)
/* 4AF84 8005A784 C0210400 */  sll        $a0, $a0, 7
/* 4AF88 8005A788 C32F0500 */  sra        $a1, $a1, 31
/* 4AF8C 8005A78C 201186AF */  sw         $a2, %gp_rel(hsyncs2)($gp)
/* 4AF90 8005A790 10380000 */  mfhi       $a3
/* 4AF94 8005A794 43390700 */  sra        $a3, $a3, 5
/* 4AF98 8005A798 2338E500 */  subu       $a3, $a3, $a1
/* 4AF9C 8005A79C 281187AF */  sw         $a3, %gp_rel(HSyncFrameRate)($gp)
/* 4AFA0 8005A7A0 42DD010C */  jal        PutDispEnv
/* 4AFA4 8005A7A4 21209000 */   addu      $a0, $a0, $s0
/* 4AFA8 8005A7A8 E410848F */  lw         $a0, %gp_rel(ot_ndx)($gp)
/* 4AFAC 8005A7AC A4FF1026 */  addiu      $s0, $s0, -0x5C
/* 4AFB0 8005A7B0 C0210400 */  sll        $a0, $a0, 7
/* 4AFB4 8005A7B4 CFDC010C */  jal        PutDrawEnv
/* 4AFB8 8005A7B8 21209000 */   addu      $a0, $a0, $s0
/* 4AFBC 8005A7BC 0B80043C */  lui        $a0, %hi(g_nt)
/* 4AFC0 8005A7C0 68BB8424 */  addiu      $a0, $a0, %lo(g_nt)
/* 4AFC4 8005A7C4 E410828F */  lw         $v0, %gp_rel(ot_ndx)($gp)
/* 4AFC8 8005A7C8 88130524 */  addiu      $a1, $zero, 0x1388
/* 4AFCC 8005A7CC C0110200 */  sll        $v0, $v0, 7
/* 4AFD0 8005A7D0 21105000 */  addu       $v0, $v0, $s0
/* 4AFD4 8005A7D4 E81682AF */  sw         $v0, %gp_rel(cdb)($gp)
/* 4AFD8 8005A7D8 C22A010C */  jal        UnlinkNTagR
/* 4AFDC 8005A7DC 70004624 */   addiu     $a2, $v0, 0x70
/* 4AFE0 8005A7E0 0B80043C */  lui        $a0, %hi(g_nt2)
/* 4AFE4 8005A7E4 A8578424 */  addiu      $a0, $a0, %lo(g_nt2)
/* 4AFE8 8005A7E8 E816868F */  lw         $a2, %gp_rel(cdb)($gp)
/* 4AFEC 8005A7EC F810858F */  lw         $a1, %gp_rel(g_ot2_size)($gp)
/* 4AFF0 8005A7F0 C22A010C */  jal        UnlinkNTagR
/* 4AFF4 8005A7F4 7400C624 */   addiu     $a2, $a2, 0x74
/* 4AFF8 8005A7F8 0B80033C */  lui        $v1, %hi(g_nt3)
/* 4AFFC 8005A7FC 38777224 */  addiu      $s2, $v1, %lo(g_nt3)
/* 4B000 8005A800 21204002 */  addu       $a0, $s2, $zero
/* 4B004 8005A804 E816868F */  lw         $a2, %gp_rel(cdb)($gp)
/* 4B008 8005A808 00040524 */  addiu      $a1, $zero, 0x400
/* 4B00C 8005A80C C22A010C */  jal        UnlinkNTagR
/* 4B010 8005A810 7800C624 */   addiu     $a2, $a2, 0x78
/* 4B014 8005A814 E816848F */  lw         $a0, %gp_rel(cdb)($gp)
/* 4B018 8005A818 B3DC010C */  jal        DrawOTag
/* 4B01C 8005A81C 74008424 */   addiu     $a0, $a0, 0x74
/* 4B020 8005A820 E816848F */  lw         $a0, %gp_rel(cdb)($gp)
/* 4B024 8005A824 B3DC010C */  jal        DrawOTag
/* 4B028 8005A828 70008424 */   addiu     $a0, $a0, 0x70
/* 4B02C 8005A82C E816848F */  lw         $a0, %gp_rel(cdb)($gp)
/* 4B030 8005A830 B3DC010C */  jal        DrawOTag
/* 4B034 8005A834 78008424 */   addiu     $a0, $a0, 0x78
/* 4B038 8005A838 E410828F */  lw         $v0, %gp_rel(ot_ndx)($gp)
/* 4B03C 8005A83C 1811838F */  lw         $v1, %gp_rel(SnapShot)($gp)
/* 4B040 8005A840 01004838 */  xori       $t0, $v0, 0x1
/* 4B044 8005A844 E41088AF */  sw         $t0, %gp_rel(ot_ndx)($gp)
/* 4B048 8005A848 72006010 */  beqz       $v1, .L8005AA14
/* 4B04C 8005A84C 40200800 */   sll       $a0, $t0, 1
/* 4B050 8005A850 21208800 */  addu       $a0, $a0, $t0
/* 4B054 8005A854 C0200400 */  sll        $a0, $a0, 3
/* 4B058 8005A858 0B80103C */  lui        $s0, %hi(MovePrim1)
/* 4B05C 8005A85C C0BA1126 */  addiu      $s1, $s0, %lo(MovePrim1)
/* 4B060 8005A860 21209100 */  addu       $a0, $a0, $s1
/* 4B064 8005A864 1000A527 */  addiu      $a1, $sp, 0x10
/* 4B068 8005A868 60030624 */  addiu      $a2, $zero, 0x360
/* 4B06C 8005A86C 00010724 */  addiu      $a3, $zero, 0x100
/* 4B070 8005A870 A0000324 */  addiu      $v1, $zero, 0xA0
/* 4B074 8005A874 00110800 */  sll        $v0, $t0, 4
/* 4B078 8005A878 23104800 */  subu       $v0, $v0, $t0
/* 4B07C 8005A87C 00110200 */  sll        $v0, $v0, 4
/* 4B080 8005A880 1200A2A7 */  sh         $v0, 0x12($sp)
/* 4B084 8005A884 F0000224 */  addiu      $v0, $zero, 0xF0
/* 4B088 8005A888 1000A3A7 */  sh         $v1, 0x10($sp)
/* 4B08C 8005A88C 1400A3A7 */  sh         $v1, 0x14($sp)
/* 4B090 8005A890 2FE7010C */  jal        SetDrawMove
/* 4B094 8005A894 1600A2A7 */   sh        $v0, 0x16($sp)
/* 4B098 8005A898 10004426 */  addiu      $a0, $s2, 0x10
/* 4B09C 8005A89C 1000428E */  lw         $v0, 0x10($s2)
/* 4B0A0 8005A8A0 00000000 */  nop
/* 4B0A4 8005A8A4 14004010 */  beqz       $v0, .L8005A8F8
/* 4B0A8 8005A8A8 21500002 */   addu      $t2, $s0, $zero
/* 4B0AC 8005A8AC 02008588 */  lwl        $a1, 0x2($a0)
/* 4B0B0 8005A8B0 E410838F */  lw         $v1, %gp_rel(ot_ndx)($gp)
/* 4B0B4 8005A8B4 00000000 */  nop
/* 4B0B8 8005A8B8 40100300 */  sll        $v0, $v1, 1
/* 4B0BC 8005A8BC 21104300 */  addu       $v0, $v0, $v1
/* 4B0C0 8005A8C0 C0100200 */  sll        $v0, $v0, 3
/* 4B0C4 8005A8C4 1000438E */  lw         $v1, 0x10($s2)
/* 4B0C8 8005A8C8 21105100 */  addu       $v0, $v0, $s1
/* 4B0CC 8005A8CC 001A0300 */  sll        $v1, $v1, 8
/* 4B0D0 8005A8D0 020043A8 */  swl        $v1, 0x2($v0)
/* 4B0D4 8005A8D4 E410848F */  lw         $a0, %gp_rel(ot_ndx)($gp)
/* 4B0D8 8005A8D8 00000000 */  nop
/* 4B0DC 8005A8DC 40100400 */  sll        $v0, $a0, 1
/* 4B0E0 8005A8E0 21104400 */  addu       $v0, $v0, $a0
/* 4B0E4 8005A8E4 C0100200 */  sll        $v0, $v0, 3
/* 4B0E8 8005A8E8 21105100 */  addu       $v0, $v0, $s1
/* 4B0EC 8005A8EC 020045A8 */  swl        $a1, 0x2($v0)
/* 4B0F0 8005A8F0 466A0108 */  j          .L8005A918
/* 4B0F4 8005A8F4 1000A527 */   addiu     $a1, $sp, 0x10
.L8005A8F8:
/* 4B0F8 8005A8F8 E410838F */  lw         $v1, %gp_rel(ot_ndx)($gp)
/* 4B0FC 8005A8FC 00000000 */  nop
/* 4B100 8005A900 40100300 */  sll        $v0, $v1, 1
/* 4B104 8005A904 21104300 */  addu       $v0, $v0, $v1
/* 4B108 8005A908 C0100200 */  sll        $v0, $v0, 3
/* 4B10C 8005A90C 21105100 */  addu       $v0, $v0, $s1
/* 4B110 8005A910 040082AC */  sw         $v0, 0x4($a0)
/* 4B114 8005A914 1000A527 */  addiu      $a1, $sp, 0x10
.L8005A918:
/* 4B118 8005A918 60030624 */  addiu      $a2, $zero, 0x360
/* 4B11C 8005A91C 21380000 */  addu       $a3, $zero, $zero
/* 4B120 8005A920 A0000224 */  addiu      $v0, $zero, 0xA0
/* 4B124 8005A924 1400A2A7 */  sh         $v0, 0x14($sp)
/* 4B128 8005A928 F0000224 */  addiu      $v0, $zero, 0xF0
/* 4B12C 8005A92C 0B80103C */  lui        $s0, %hi(MovePrim2)
/* 4B130 8005A930 F0BA1226 */  addiu      $s2, $s0, %lo(MovePrim2)
/* 4B134 8005A934 0B80093C */  lui        $t1, %hi(g_nt3 + 0x10)
/* 4B138 8005A938 1600A2A7 */  sh         $v0, 0x16($sp)
/* 4B13C 8005A93C C0BA4225 */  addiu      $v0, $t2, %lo(MovePrim1)
/* 4B140 8005A940 E410888F */  lw         $t0, %gp_rel(ot_ndx)($gp)
/* 4B144 8005A944 48773125 */  addiu      $s1, $t1, %lo(g_nt3 + 0x10)
/* 4B148 8005A948 1000A0A7 */  sh         $zero, 0x10($sp)
/* 4B14C 8005A94C 40180800 */  sll        $v1, $t0, 1
/* 4B150 8005A950 21186800 */  addu       $v1, $v1, $t0
/* 4B154 8005A954 C0180300 */  sll        $v1, $v1, 3
/* 4B158 8005A958 21207200 */  addu       $a0, $v1, $s2
/* 4B15C 8005A95C 21186200 */  addu       $v1, $v1, $v0
/* 4B160 8005A960 00110800 */  sll        $v0, $t0, 4
/* 4B164 8005A964 23104800 */  subu       $v0, $v0, $t0
/* 4B168 8005A968 00110200 */  sll        $v0, $v0, 4
/* 4B16C 8005A96C 487723AD */  sw         $v1, %lo(g_nt3 + 0x10)($t1)
/* 4B170 8005A970 2FE7010C */  jal        SetDrawMove
/* 4B174 8005A974 1200A2A7 */   sh        $v0, 0x12($sp)
/* 4B178 8005A978 F8FF228E */  lw         $v0, -0x8($s1)
/* 4B17C 8005A97C 00000000 */  nop
/* 4B180 8005A980 14004010 */  beqz       $v0, .L8005A9D4
/* 4B184 8005A984 F8FF2426 */   addiu     $a0, $s1, -0x8
/* 4B188 8005A988 02008588 */  lwl        $a1, 0x2($a0)
/* 4B18C 8005A98C E410838F */  lw         $v1, %gp_rel(ot_ndx)($gp)
/* 4B190 8005A990 00000000 */  nop
/* 4B194 8005A994 40100300 */  sll        $v0, $v1, 1
/* 4B198 8005A998 21104300 */  addu       $v0, $v0, $v1
/* 4B19C 8005A99C C0100200 */  sll        $v0, $v0, 3
/* 4B1A0 8005A9A0 F8FF238E */  lw         $v1, -0x8($s1)
/* 4B1A4 8005A9A4 21105200 */  addu       $v0, $v0, $s2
/* 4B1A8 8005A9A8 001A0300 */  sll        $v1, $v1, 8
/* 4B1AC 8005A9AC 020043A8 */  swl        $v1, 0x2($v0)
/* 4B1B0 8005A9B0 E410848F */  lw         $a0, %gp_rel(ot_ndx)($gp)
/* 4B1B4 8005A9B4 00000000 */  nop
/* 4B1B8 8005A9B8 40100400 */  sll        $v0, $a0, 1
/* 4B1BC 8005A9BC 21104400 */  addu       $v0, $v0, $a0
/* 4B1C0 8005A9C0 C0100200 */  sll        $v0, $v0, 3
/* 4B1C4 8005A9C4 21105200 */  addu       $v0, $v0, $s2
/* 4B1C8 8005A9C8 020045A8 */  swl        $a1, 0x2($v0)
/* 4B1CC 8005A9CC 7C6A0108 */  j          .L8005A9F0
/* 4B1D0 8005A9D0 00000000 */   nop
.L8005A9D4:
/* 4B1D4 8005A9D4 E410838F */  lw         $v1, %gp_rel(ot_ndx)($gp)
/* 4B1D8 8005A9D8 00000000 */  nop
/* 4B1DC 8005A9DC 40100300 */  sll        $v0, $v1, 1
/* 4B1E0 8005A9E0 21104300 */  addu       $v0, $v0, $v1
/* 4B1E4 8005A9E4 C0100200 */  sll        $v0, $v0, 3
/* 4B1E8 8005A9E8 21105200 */  addu       $v0, $v0, $s2
/* 4B1EC 8005A9EC 040082AC */  sw         $v0, 0x4($a0)
.L8005A9F0:
/* 4B1F0 8005A9F0 E410838F */  lw         $v1, %gp_rel(ot_ndx)($gp)
/* 4B1F4 8005A9F4 0B80043C */  lui        $a0, %hi(g_nt3 + 0x8)
/* 4B1F8 8005A9F8 181180AF */  sw         $zero, %gp_rel(SnapShot)($gp)
/* 4B1FC 8005A9FC 40100300 */  sll        $v0, $v1, 1
/* 4B200 8005AA00 21104300 */  addu       $v0, $v0, $v1
/* 4B204 8005AA04 C0100200 */  sll        $v0, $v0, 3
/* 4B208 8005AA08 F0BA0326 */  addiu      $v1, $s0, %lo(MovePrim2)
/* 4B20C 8005AA0C 21104300 */  addu       $v0, $v0, $v1
/* 4B210 8005AA10 407782AC */  sw         $v0, %lo(g_nt3 + 0x8)($a0)
.L8005AA14:
/* 4B214 8005AA14 0B80023C */  lui        $v0, %hi(gDoubleBuffer)
/* 4B218 8005AA18 E410838F */  lw         $v1, %gp_rel(ot_ndx)($gp)
/* 4B21C 8005AA1C 78B94224 */  addiu      $v0, $v0, %lo(gDoubleBuffer)
/* 4B220 8005AA20 C0190300 */  sll        $v1, $v1, 7
/* 4B224 8005AA24 21186200 */  addu       $v1, $v1, $v0
/* 4B228 8005AA28 E81683AF */  sw         $v1, %gp_rel(cdb)($gp)
.L8005AA2C:
/* 4B22C 8005AA2C E010848F */  lw         $a0, %gp_rel(TESTZ)($gp)
/* 4B230 8005AA30 CC1080AF */  sw         $zero, %gp_rel(TellTimerUpdateScreen)($gp)
/* 4B234 8005AA34 EBED010C */  jal        SetGeomScreen
/* 4B238 8005AA38 00000000 */   nop
/* 4B23C 8005AA3C 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 4B240 8005AA40 2800B28F */  lw         $s2, 0x28($sp)
/* 4B244 8005AA44 2400B18F */  lw         $s1, 0x24($sp)
/* 4B248 8005AA48 2000B08F */  lw         $s0, 0x20($sp)
/* 4B24C 8005AA4C 0800E003 */  jr         $ra
/* 4B250 8005AA50 3000BD27 */   addiu     $sp, $sp, 0x30
.size updateScreen, . - updateScreen
