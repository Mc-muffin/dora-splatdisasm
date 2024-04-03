.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel HighRezVSyncFunc
/* 4A8FC 8005A0FC F816848F */  lw         $a0, %gp_rel(Frame)($gp)
/* 4A900 8005A100 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 4A904 8005A104 2800B0AF */  sw         $s0, 0x28($sp)
/* 4A908 8005A108 041184AF */  sw         $a0, %gp_rel(mphirezI)($gp)
/* 4A90C 8005A10C 081180AF */  sw         $zero, %gp_rel(mphirezCNT)($gp)
/* 4A910 8005A110 F816828F */  lw         $v0, %gp_rel(Frame)($gp)
/* 4A914 8005A114 0B80103C */  lui        $s0, %hi(gDoubleBuffer)
/* 4A918 8005A118 5A680108 */  j          .L8005A168
/* 4A91C 8005A11C 2C00BFAF */   sw        $ra, 0x2C($sp)
.L8005A120:
/* 4A920 8005A120 8DDE010C */  jal        GetODE
/* 4A924 8005A124 00000000 */   nop
/* 4A928 8005A128 21204000 */  addu       $a0, $v0, $zero
/* 4A92C 8005A12C 041182AF */  sw         $v0, %gp_rel(mphirezI)($gp)
/* 4A930 8005A130 0811828F */  lw         $v0, %gp_rel(mphirezCNT)($gp)
/* 4A934 8005A134 00000000 */  nop
/* 4A938 8005A138 01004224 */  addiu      $v0, $v0, 0x1
/* 4A93C 8005A13C 081182AF */  sw         $v0, %gp_rel(mphirezCNT)($gp)
/* 4A940 8005A140 0811838F */  lw         $v1, %gp_rel(mphirezCNT)($gp)
/* 4A944 8005A144 0C11828F */  lw         $v0, %gp_rel(mphirezCNTMAX)($gp)
/* 4A948 8005A148 00000000 */  nop
/* 4A94C 8005A14C 2A104300 */  slt        $v0, $v0, $v1
/* 4A950 8005A150 04004010 */  beqz       $v0, .L8005A164
/* 4A954 8005A154 00000000 */   nop
/* 4A958 8005A158 0811828F */  lw         $v0, %gp_rel(mphirezCNT)($gp)
/* 4A95C 8005A15C 00000000 */  nop
/* 4A960 8005A160 0C1182AF */  sw         $v0, %gp_rel(mphirezCNTMAX)($gp)
.L8005A164:
/* 4A964 8005A164 F816828F */  lw         $v0, %gp_rel(Frame)($gp)
.L8005A168:
/* 4A968 8005A168 00000000 */  nop
/* 4A96C 8005A16C 06004414 */  bne        $v0, $a0, .L8005A188
/* 4A970 8005A170 00000000 */   nop
/* 4A974 8005A174 0811828F */  lw         $v0, %gp_rel(mphirezCNT)($gp)
/* 4A978 8005A178 00000000 */  nop
/* 4A97C 8005A17C 00024228 */  slti       $v0, $v0, 0x200
/* 4A980 8005A180 E7FF4014 */  bnez       $v0, .L8005A120
/* 4A984 8005A184 00000000 */   nop
.L8005A188:
/* 4A988 8005A188 F81684AF */  sw         $a0, %gp_rel(Frame)($gp)
/* 4A98C 8005A18C 36DB010C */  jal        DrawSync
/* 4A990 8005A190 01000424 */   addiu     $a0, $zero, 0x1
/* 4A994 8005A194 05004010 */  beqz       $v0, .L8005A1AC
/* 4A998 8005A198 00000000 */   nop
/* 4A99C 8005A19C 1011828F */  lw         $v0, %gp_rel(eggoverdrawcount)($gp)
/* 4A9A0 8005A1A0 00000000 */  nop
/* 4A9A4 8005A1A4 01004224 */  addiu      $v0, $v0, 0x1
/* 4A9A8 8005A1A8 101182AF */  sw         $v0, %gp_rel(eggoverdrawcount)($gp)
.L8005A1AC:
/* 4A9AC 8005A1AC 57DA010C */  jal        ResetGraph
/* 4A9B0 8005A1B0 01000424 */   addiu     $a0, $zero, 0x1
/* 4A9B4 8005A1B4 FC10868F */  lw         $a2, %gp_rel(VBLoadImageIndex)($gp)
/* 4A9B8 8005A1B8 00000000 */  nop
/* 4A9BC 8005A1BC 0B00C010 */  beqz       $a2, .L8005A1EC
/* 4A9C0 8005A1C0 FFFFC624 */   addiu     $a2, $a2, -0x1
/* 4A9C4 8005A1C4 40100600 */  sll        $v0, $a2, 1
/* 4A9C8 8005A1C8 21104600 */  addu       $v0, $v0, $a2
/* 4A9CC 8005A1CC 80100200 */  sll        $v0, $v0, 2
/* 4A9D0 8005A1D0 0B80043C */  lui        $a0, %hi(VBLoadImageRects)
/* 4A9D4 8005A1D4 C8B78424 */  addiu      $a0, $a0, %lo(VBLoadImageRects)
/* 4A9D8 8005A1D8 21188200 */  addu       $v1, $a0, $v0
/* 4A9DC 8005A1DC 0800658C */  lw         $a1, 0x8($v1)
/* 4A9E0 8005A1E0 FC1086AF */  sw         $a2, %gp_rel(VBLoadImageIndex)($gp)
/* 4A9E4 8005A1E4 E1DB010C */  jal        LoadImage
/* 4A9E8 8005A1E8 21204400 */   addu      $a0, $v0, $a0
.L8005A1EC:
/* 4A9EC 8005A1EC E816848F */  lw         $a0, %gp_rel(cdb)($gp)
/* 4A9F0 8005A1F0 EC108293 */  lbu        $v0, %gp_rel(UpdateScreenFlag2)($gp)
/* 4A9F4 8005A1F4 78B91026 */  addiu      $s0, $s0, %lo(gDoubleBuffer)
/* 4A9F8 8005A1F8 EC1680AF */  sw         $zero, %gp_rel(VsyncWait)($gp)
/* 4A9FC 8005A1FC 5C008424 */  addiu      $a0, $a0, 0x5C
/* 4AA00 8005A200 980002A2 */  sb         $v0, 0x98($s0)
/* 4AA04 8005A204 42DD010C */  jal        PutDispEnv
/* 4AA08 8005A208 180002A2 */   sb        $v0, 0x18($s0)
/* 4AA0C 8005A20C E816848F */  lw         $a0, %gp_rel(cdb)($gp)
/* 4AA10 8005A210 CFDC010C */  jal        PutDrawEnv
/* 4AA14 8005A214 00000000 */   nop
/* 4AA18 8005A218 E810838F */  lw         $v1, %gp_rel(UpdateScreenFlag)($gp)
/* 4AA1C 8005A21C 00000000 */  nop
/* 4AA20 8005A220 2A006010 */  beqz       $v1, .L8005A2CC
/* 4AA24 8005A224 02000224 */   addiu     $v0, $zero, 0x2
/* 4AA28 8005A228 DC10828F */  lw         $v0, %gp_rel(RenderState)($gp)
/* 4AA2C 8005A22C 01000324 */  addiu      $v1, $zero, 0x1
/* 4AA30 8005A230 EC1083AF */  sw         $v1, %gp_rel(UpdateScreenFlag2)($gp)
/* 4AA34 8005A234 01004224 */  addiu      $v0, $v0, 0x1
/* 4AA38 8005A238 0200422C */  sltiu      $v0, $v0, 0x2
/* 4AA3C 8005A23C 0A004014 */  bnez       $v0, .L8005A268
/* 4AA40 8005A240 02000324 */   addiu     $v1, $zero, 0x2
/* 4AA44 8005A244 E410828F */  lw         $v0, %gp_rel(ot_ndx)($gp)
/* 4AA48 8005A248 DC1083AF */  sw         $v1, %gp_rel(RenderState)($gp)
/* 4AA4C 8005A24C 01004238 */  xori       $v0, $v0, 0x1
/* 4AA50 8005A250 E41082AF */  sw         $v0, %gp_rel(ot_ndx)($gp)
/* 4AA54 8005A254 C0110200 */  sll        $v0, $v0, 7
/* 4AA58 8005A258 21105000 */  addu       $v0, $v0, $s0
/* 4AA5C 8005A25C E81682AF */  sw         $v0, %gp_rel(cdb)($gp)
/* 4AA60 8005A260 9F680108 */  j          .L8005A27C
/* 4AA64 8005A264 0B80103C */   lui       $s0, %hi(gDoubleBuffer + 0x74)
.L8005A268:
/* 4AA68 8005A268 DC10828F */  lw         $v0, %gp_rel(RenderState)($gp)
/* 4AA6C 8005A26C 00000000 */  nop
/* 4AA70 8005A270 01004224 */  addiu      $v0, $v0, 0x1
/* 4AA74 8005A274 DC1082AF */  sw         $v0, %gp_rel(RenderState)($gp)
/* 4AA78 8005A278 0B80103C */  lui        $s0, %hi(gDoubleBuffer + 0x74)
.L8005A27C:
/* 4AA7C 8005A27C E410848F */  lw         $a0, %gp_rel(ot_ndx)($gp)
/* 4AA80 8005A280 ECB91026 */  addiu      $s0, $s0, %lo(gDoubleBuffer + 0x74)
/* 4AA84 8005A284 01008438 */  xori       $a0, $a0, 0x1
/* 4AA88 8005A288 C0210400 */  sll        $a0, $a0, 7
/* 4AA8C 8005A28C B3DC010C */  jal        DrawOTag
/* 4AA90 8005A290 21209000 */   addu      $a0, $a0, $s0
/* 4AA94 8005A294 E410848F */  lw         $a0, %gp_rel(ot_ndx)($gp)
/* 4AA98 8005A298 FCFF0226 */  addiu      $v0, $s0, -0x4
/* 4AA9C 8005A29C 01008438 */  xori       $a0, $a0, 0x1
/* 4AAA0 8005A2A0 C0210400 */  sll        $a0, $a0, 7
/* 4AAA4 8005A2A4 B3DC010C */  jal        DrawOTag
/* 4AAA8 8005A2A8 21208200 */   addu      $a0, $a0, $v0
/* 4AAAC 8005A2AC E410848F */  lw         $a0, %gp_rel(ot_ndx)($gp)
/* 4AAB0 8005A2B0 04001026 */  addiu      $s0, $s0, 0x4
/* 4AAB4 8005A2B4 01008438 */  xori       $a0, $a0, 0x1
/* 4AAB8 8005A2B8 C0210400 */  sll        $a0, $a0, 7
/* 4AABC 8005A2BC B3DC010C */  jal        DrawOTag
/* 4AAC0 8005A2C0 21209000 */   addu      $a0, $a0, $s0
/* 4AAC4 8005A2C4 B4680108 */  j          .L8005A2D0
/* 4AAC8 8005A2C8 00000000 */   nop
.L8005A2CC:
/* 4AACC 8005A2CC DC1082AF */  sw         $v0, %gp_rel(RenderState)($gp)
.L8005A2D0:
/* 4AAD0 8005A2D0 C416828F */  lw         $v0, %gp_rel(VCounter)($gp)
/* 4AAD4 8005A2D4 00000000 */  nop
/* 4AAD8 8005A2D8 01004224 */  addiu      $v0, $v0, 0x1
/* 4AADC 8005A2DC C41682AF */  sw         $v0, %gp_rel(VCounter)($gp)
/* 4AAE0 8005A2E0 C416848F */  lw         $a0, %gp_rel(VCounter)($gp)
/* 4AAE4 8005A2E4 8888033C */  lui        $v1, (0x88888889 >> 16)
/* 4AAE8 8005A2E8 89886334 */  ori        $v1, $v1, (0x88888889 & 0xFFFF)
/* 4AAEC 8005A2EC 19008300 */  multu      $a0, $v1
/* 4AAF0 8005A2F0 10180000 */  mfhi       $v1
/* 4AAF4 8005A2F4 42190300 */  srl        $v1, $v1, 5
/* 4AAF8 8005A2F8 00110300 */  sll        $v0, $v1, 4
/* 4AAFC 8005A2FC 23104300 */  subu       $v0, $v0, $v1
/* 4AB00 8005A300 80100200 */  sll        $v0, $v0, 2
/* 4AB04 8005A304 06008214 */  bne        $a0, $v0, .L8005A320
/* 4AB08 8005A308 00000000 */   nop
/* 4AB0C 8005A30C 0017828F */  lw         $v0, %gp_rel(FrameCount)($gp)
/* 4AB10 8005A310 00000000 */  nop
/* 4AB14 8005A314 FC1682AF */  sw         $v0, %gp_rel(FramesPerSecond)($gp)
/* 4AB18 8005A318 C41680AF */  sw         $zero, %gp_rel(VCounter)($gp)
/* 4AB1C 8005A31C 001780AF */  sw         $zero, %gp_rel(FrameCount)($gp)
.L8005A320:
/* 4AB20 8005A320 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 4AB24 8005A324 2800B08F */  lw         $s0, 0x28($sp)
/* 4AB28 8005A328 0800E003 */  jr         $ra
/* 4AB2C 8005A32C 3000BD27 */   addiu     $sp, $sp, 0x30
.size HighRezVSyncFunc, . - HighRezVSyncFunc
