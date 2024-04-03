.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel EditWater
/* 228A4 800320A4 0980033C */  lui        $v1, %hi(Trg0)
/* 228A8 800320A8 30596394 */  lhu        $v1, %lo(Trg0)($v1)
/* 228AC 800320AC C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 228B0 800320B0 3400BFAF */  sw         $ra, 0x34($sp)
/* 228B4 800320B4 3000B2AF */  sw         $s2, 0x30($sp)
/* 228B8 800320B8 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 228BC 800320BC 00026230 */  andi       $v0, $v1, 0x200
/* 228C0 800320C0 05004010 */  beqz       $v0, .L800320D8
/* 228C4 800320C4 2800B0AF */   sw        $s0, 0x28($sp)
/* 228C8 800320C8 0809828F */  lw         $v0, %gp_rel(EditWaterFlag)($gp)
/* 228CC 800320CC 00000000 */  nop
/* 228D0 800320D0 01004238 */  xori       $v0, $v0, 0x1
/* 228D4 800320D4 080982AF */  sw         $v0, %gp_rel(EditWaterFlag)($gp)
.L800320D8:
/* 228D8 800320D8 0809828F */  lw         $v0, %gp_rel(EditWaterFlag)($gp)
/* 228DC 800320DC 00000000 */  nop
/* 228E0 800320E0 6A014010 */  beqz       $v0, .L8003268C
/* 228E4 800320E4 00086230 */   andi      $v0, $v1, 0x800
/* 228E8 800320E8 0980013C */  lui        $at, %hi(EditCameraFlag)
/* 228EC 800320EC DC4D20AC */  sw         $zero, %lo(EditCameraFlag)($at)
/* 228F0 800320F0 05004010 */  beqz       $v0, .L80032108
/* 228F4 800320F4 20000424 */   addiu     $a0, $zero, 0x20
/* 228F8 800320F8 0C09828F */  lw         $v0, %gp_rel(WaterWireFlag)($gp)
/* 228FC 800320FC 00000000 */  nop
/* 22900 80032100 01004238 */  xori       $v0, $v0, 0x1
/* 22904 80032104 0C0982AF */  sw         $v0, %gp_rel(WaterWireFlag)($gp)
.L80032108:
/* 22908 80032108 20000524 */  addiu      $a1, $zero, 0x20
/* 2290C 8003210C 21300000 */  addu       $a2, $zero, $zero
/* 22910 80032110 0180073C */  lui        $a3, %hi(D_80011A84)
/* 22914 80032114 3063010C */  jal        Print
/* 22918 80032118 841AE724 */   addiu     $a3, $a3, %lo(D_80011A84)
/* 2291C 8003211C 2009838F */  lw         $v1, %gp_rel(WaterMenuSelection)($gp)
/* 22920 80032120 00000000 */  nop
/* 22924 80032124 13006014 */  bnez       $v1, .L80032174
/* 22928 80032128 00000000 */   nop
/* 2292C 8003212C 159F000C */  jal        HightlightText
/* 22930 80032130 00000000 */   nop
/* 22934 80032134 21200000 */  addu       $a0, $zero, $zero
/* 22938 80032138 04000524 */  addiu      $a1, $zero, 0x4
/* 2293C 8003213C 80000624 */  addiu      $a2, $zero, 0x80
/* 22940 80032140 20000724 */  addiu      $a3, $zero, 0x20
/* 22944 80032144 0980033C */  lui        $v1, %hi(Trg0)
/* 22948 80032148 30596384 */  lh         $v1, %lo(Trg0)($v1)
/* 2294C 8003214C 1C098227 */  addiu      $v0, $gp, %gp_rel(WaterTextureSelection)
/* 22950 80032150 1400A0AF */  sw         $zero, 0x14($sp)
/* 22954 80032154 1800A2AF */  sw         $v0, 0x18($sp)
/* 22958 80032158 4649010C */  jal        CheckOption
/* 2295C 8003215C 1000A3AF */   sw        $v1, 0x10($sp)
/* 22960 80032160 06004010 */  beqz       $v0, .L8003217C
/* 22964 80032164 02000224 */   addiu     $v0, $zero, 0x2
/* 22968 80032168 180982AF */  sw         $v0, %gp_rel(WaterTextureSelectionCounter)($gp)
/* 2296C 8003216C 60C80008 */  j          .L80032180
/* 22970 80032170 20000424 */   addiu     $a0, $zero, 0x20
.L80032174:
/* 22974 80032174 209F000C */  jal        UnHightlightText
/* 22978 80032178 00000000 */   nop
.L8003217C:
/* 2297C 8003217C 20000424 */  addiu      $a0, $zero, 0x20
.L80032180:
/* 22980 80032180 30000524 */  addiu      $a1, $zero, 0x30
/* 22984 80032184 21300000 */  addu       $a2, $zero, $zero
/* 22988 80032188 0180073C */  lui        $a3, %hi(D_80011A90)
/* 2298C 8003218C 901AE724 */  addiu      $a3, $a3, %lo(D_80011A90)
/* 22990 80032190 40001024 */  addiu      $s0, $zero, 0x40
/* 22994 80032194 1C09828F */  lw         $v0, %gp_rel(WaterTextureSelection)($gp)
/* 22998 80032198 01001124 */  addiu      $s1, $zero, 0x1
/* 2299C 8003219C 3063010C */  jal        Print
/* 229A0 800321A0 1000A2AF */   sw        $v0, 0x10($sp)
/* 229A4 800321A4 2009838F */  lw         $v1, %gp_rel(WaterMenuSelection)($gp)
/* 229A8 800321A8 00000000 */  nop
/* 229AC 800321AC 13007114 */  bne        $v1, $s1, .L800321FC
/* 229B0 800321B0 02001224 */   addiu     $s2, $zero, 0x2
/* 229B4 800321B4 159F000C */  jal        HightlightText
/* 229B8 800321B8 00000000 */   nop
/* 229BC 800321BC FFFF0424 */  addiu      $a0, $zero, -0x1
/* 229C0 800321C0 04000524 */  addiu      $a1, $zero, 0x4
/* 229C4 800321C4 80000624 */  addiu      $a2, $zero, 0x80
/* 229C8 800321C8 20000724 */  addiu      $a3, $zero, 0x20
/* 229CC 800321CC 0980033C */  lui        $v1, %hi(Trg0)
/* 229D0 800321D0 30596384 */  lh         $v1, %lo(Trg0)($v1)
/* 229D4 800321D4 10098227 */  addiu      $v0, $gp, %gp_rel(WaterTransType)
/* 229D8 800321D8 1400A0AF */  sw         $zero, 0x14($sp)
/* 229DC 800321DC 1800A2AF */  sw         $v0, 0x18($sp)
/* 229E0 800321E0 4649010C */  jal        CheckOption
/* 229E4 800321E4 1000A3AF */   sw        $v1, 0x10($sp)
/* 229E8 800321E8 06004010 */  beqz       $v0, .L80032204
/* 229EC 800321EC 00000000 */   nop
/* 229F0 800321F0 140992AF */  sw         $s2, %gp_rel(ChangeWaterTransType)($gp)
/* 229F4 800321F4 81C80008 */  j          .L80032204
/* 229F8 800321F8 00000000 */   nop
.L800321FC:
/* 229FC 800321FC 209F000C */  jal        UnHightlightText
/* 22A00 80032200 00000000 */   nop
.L80032204:
/* 22A04 80032204 1009828F */  lw         $v0, %gp_rel(WaterTransType)($gp)
/* 22A08 80032208 00000000 */  nop
/* 22A0C 8003220C 01004424 */  addiu      $a0, $v0, 0x1
/* 22A10 80032210 0500832C */  sltiu      $v1, $a0, 0x5
/* 22A14 80032214 27006010 */  beqz       $v1, .L800322B4
/* 22A18 80032218 0180023C */   lui       $v0, %hi(jtbl_80011BB8)
/* 22A1C 8003221C B81B4224 */  addiu      $v0, $v0, %lo(jtbl_80011BB8)
/* 22A20 80032220 80180400 */  sll        $v1, $a0, 2
/* 22A24 80032224 21186200 */  addu       $v1, $v1, $v0
/* 22A28 80032228 0000648C */  lw         $a0, 0x0($v1)
/* 22A2C 8003222C 00000000 */  nop
/* 22A30 80032230 08008000 */  jr         $a0
/* 22A34 80032234 00000000 */   nop
jlabel .L80032238
/* 22A38 80032238 20000424 */  addiu      $a0, $zero, 0x20
/* 22A3C 8003223C 40000524 */  addiu      $a1, $zero, 0x40
/* 22A40 80032240 21300000 */  addu       $a2, $zero, $zero
/* 22A44 80032244 0180073C */  lui        $a3, %hi(D_80011A9C)
/* 22A48 80032248 ABC80008 */  j          .L800322AC
/* 22A4C 8003224C 9C1AE724 */   addiu     $a3, $a3, %lo(D_80011A9C)
jlabel .L80032250
/* 22A50 80032250 20000424 */  addiu      $a0, $zero, 0x20
/* 22A54 80032254 40000524 */  addiu      $a1, $zero, 0x40
/* 22A58 80032258 21300000 */  addu       $a2, $zero, $zero
/* 22A5C 8003225C 0980073C */  lui        $a3, %hi(D_80094B98)
/* 22A60 80032260 ABC80008 */  j          .L800322AC
/* 22A64 80032264 984BE724 */   addiu     $a3, $a3, %lo(D_80094B98)
jlabel .L80032268
/* 22A68 80032268 20000424 */  addiu      $a0, $zero, 0x20
/* 22A6C 8003226C 40000524 */  addiu      $a1, $zero, 0x40
/* 22A70 80032270 21300000 */  addu       $a2, $zero, $zero
/* 22A74 80032274 0180073C */  lui        $a3, %hi(D_80011AA8)
/* 22A78 80032278 ABC80008 */  j          .L800322AC
/* 22A7C 8003227C A81AE724 */   addiu     $a3, $a3, %lo(D_80011AA8)
jlabel .L80032280
/* 22A80 80032280 20000424 */  addiu      $a0, $zero, 0x20
/* 22A84 80032284 40000524 */  addiu      $a1, $zero, 0x40
/* 22A88 80032288 21300000 */  addu       $a2, $zero, $zero
/* 22A8C 8003228C 0180073C */  lui        $a3, %hi(D_80011AB4)
/* 22A90 80032290 ABC80008 */  j          .L800322AC
/* 22A94 80032294 B41AE724 */   addiu     $a3, $a3, %lo(D_80011AB4)
jlabel .L80032298
/* 22A98 80032298 20000424 */  addiu      $a0, $zero, 0x20
/* 22A9C 8003229C 40000524 */  addiu      $a1, $zero, 0x40
/* 22AA0 800322A0 21300000 */  addu       $a2, $zero, $zero
/* 22AA4 800322A4 0180073C */  lui        $a3, %hi(D_80011AC0)
/* 22AA8 800322A8 C01AE724 */  addiu      $a3, $a3, %lo(D_80011AC0)
.L800322AC:
/* 22AAC 800322AC 3063010C */  jal        Print
/* 22AB0 800322B0 50001024 */   addiu     $s0, $zero, 0x50
.L800322B4:
/* 22AB4 800322B4 02001124 */  addiu      $s1, $zero, 0x2
/* 22AB8 800322B8 2009828F */  lw         $v0, %gp_rel(WaterMenuSelection)($gp)
/* 22ABC 800322BC 00000000 */  nop
/* 22AC0 800322C0 25005114 */  bne        $v0, $s1, .L80032358
/* 22AC4 800322C4 03001224 */   addiu     $s2, $zero, 0x3
/* 22AC8 800322C8 159F000C */  jal        HightlightText
/* 22ACC 800322CC 00000000 */   nop
/* 22AD0 800322D0 0980033C */  lui        $v1, %hi(Pad0)
/* 22AD4 800322D4 2C596394 */  lhu        $v1, %lo(Pad0)($v1)
/* 22AD8 800322D8 00000000 */  nop
/* 22ADC 800322DC 00406330 */  andi       $v1, $v1, 0x4000
/* 22AE0 800322E0 11006010 */  beqz       $v1, .L80032328
/* 22AE4 800322E4 21200000 */   addu      $a0, $zero, $zero
/* 22AE8 800322E8 00010524 */  addiu      $a1, $zero, 0x100
/* 22AEC 800322EC FFFF0634 */  ori        $a2, $zero, 0xFFFF
/* 22AF0 800322F0 01000724 */  addiu      $a3, $zero, 0x1
/* 22AF4 800322F4 20000324 */  addiu      $v1, $zero, 0x20
/* 22AF8 800322F8 1400A3AF */  sw         $v1, 0x14($sp)
/* 22AFC 800322FC 0980033C */  lui        $v1, %hi(Pad0)
/* 22B00 80032300 2C596394 */  lhu        $v1, %lo(Pad0)($v1)
/* 22B04 80032304 80000224 */  addiu      $v0, $zero, 0x80
/* 22B08 80032308 1000A2AF */  sw         $v0, 0x10($sp)
/* 22B0C 8003230C 24098227 */  addiu      $v0, $gp, %gp_rel(WaterR)
/* 22B10 80032310 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 22B14 80032314 2000A2AF */  sw         $v0, 0x20($sp)
/* 22B18 80032318 9949010C */  jal        CheckOptionShift
/* 22B1C 8003231C 1800A3AF */   sw        $v1, 0x18($sp)
/* 22B20 80032320 D9C80008 */  j          .L80032364
/* 22B24 80032324 20000424 */   addiu     $a0, $zero, 0x20
.L80032328:
/* 22B28 80032328 00010524 */  addiu      $a1, $zero, 0x100
/* 22B2C 8003232C 80000624 */  addiu      $a2, $zero, 0x80
/* 22B30 80032330 20000724 */  addiu      $a3, $zero, 0x20
/* 22B34 80032334 0980033C */  lui        $v1, %hi(Trg0)
/* 22B38 80032338 30596384 */  lh         $v1, %lo(Trg0)($v1)
/* 22B3C 8003233C 24098227 */  addiu      $v0, $gp, %gp_rel(WaterR)
/* 22B40 80032340 1400A0AF */  sw         $zero, 0x14($sp)
/* 22B44 80032344 1800A2AF */  sw         $v0, 0x18($sp)
/* 22B48 80032348 4649010C */  jal        CheckOption
/* 22B4C 8003234C 1000A3AF */   sw        $v1, 0x10($sp)
/* 22B50 80032350 D9C80008 */  j          .L80032364
/* 22B54 80032354 20000424 */   addiu     $a0, $zero, 0x20
.L80032358:
/* 22B58 80032358 209F000C */  jal        UnHightlightText
/* 22B5C 8003235C 00000000 */   nop
/* 22B60 80032360 20000424 */  addiu      $a0, $zero, 0x20
.L80032364:
/* 22B64 80032364 21280002 */  addu       $a1, $s0, $zero
/* 22B68 80032368 21300000 */  addu       $a2, $zero, $zero
/* 22B6C 8003236C 0180073C */  lui        $a3, %hi(D_80011ACC)
/* 22B70 80032370 CC1AE724 */  addiu      $a3, $a3, %lo(D_80011ACC)
/* 22B74 80032374 10001026 */  addiu      $s0, $s0, 0x10
/* 22B78 80032378 2409828F */  lw         $v0, %gp_rel(WaterR)($gp)
/* 22B7C 8003237C 01003126 */  addiu      $s1, $s1, 0x1
/* 22B80 80032380 3063010C */  jal        Print
/* 22B84 80032384 1000A2AF */   sw        $v0, 0x10($sp)
/* 22B88 80032388 21184002 */  addu       $v1, $s2, $zero
/* 22B8C 8003238C 2009828F */  lw         $v0, %gp_rel(WaterMenuSelection)($gp)
/* 22B90 80032390 00000000 */  nop
/* 22B94 80032394 25006214 */  bne        $v1, $v0, .L8003242C
/* 22B98 80032398 01005226 */   addiu     $s2, $s2, 0x1
/* 22B9C 8003239C 159F000C */  jal        HightlightText
/* 22BA0 800323A0 00000000 */   nop
/* 22BA4 800323A4 0980033C */  lui        $v1, %hi(Pad0)
/* 22BA8 800323A8 2C596394 */  lhu        $v1, %lo(Pad0)($v1)
/* 22BAC 800323AC 00000000 */  nop
/* 22BB0 800323B0 00406330 */  andi       $v1, $v1, 0x4000
/* 22BB4 800323B4 11006010 */  beqz       $v1, .L800323FC
/* 22BB8 800323B8 21200000 */   addu      $a0, $zero, $zero
/* 22BBC 800323BC 00010524 */  addiu      $a1, $zero, 0x100
/* 22BC0 800323C0 FFFF0634 */  ori        $a2, $zero, 0xFFFF
/* 22BC4 800323C4 01000724 */  addiu      $a3, $zero, 0x1
/* 22BC8 800323C8 20000324 */  addiu      $v1, $zero, 0x20
/* 22BCC 800323CC 1400A3AF */  sw         $v1, 0x14($sp)
/* 22BD0 800323D0 0980033C */  lui        $v1, %hi(Pad0)
/* 22BD4 800323D4 2C596394 */  lhu        $v1, %lo(Pad0)($v1)
/* 22BD8 800323D8 80000224 */  addiu      $v0, $zero, 0x80
/* 22BDC 800323DC 1000A2AF */  sw         $v0, 0x10($sp)
/* 22BE0 800323E0 28098227 */  addiu      $v0, $gp, %gp_rel(WaterG)
/* 22BE4 800323E4 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 22BE8 800323E8 2000A2AF */  sw         $v0, 0x20($sp)
/* 22BEC 800323EC 9949010C */  jal        CheckOptionShift
/* 22BF0 800323F0 1800A3AF */   sw        $v1, 0x18($sp)
/* 22BF4 800323F4 0EC90008 */  j          .L80032438
/* 22BF8 800323F8 20000424 */   addiu     $a0, $zero, 0x20
.L800323FC:
/* 22BFC 800323FC 00010524 */  addiu      $a1, $zero, 0x100
/* 22C00 80032400 80000624 */  addiu      $a2, $zero, 0x80
/* 22C04 80032404 20000724 */  addiu      $a3, $zero, 0x20
/* 22C08 80032408 0980033C */  lui        $v1, %hi(Trg0)
/* 22C0C 8003240C 30596384 */  lh         $v1, %lo(Trg0)($v1)
/* 22C10 80032410 28098227 */  addiu      $v0, $gp, %gp_rel(WaterG)
/* 22C14 80032414 1400A0AF */  sw         $zero, 0x14($sp)
/* 22C18 80032418 1800A2AF */  sw         $v0, 0x18($sp)
/* 22C1C 8003241C 4649010C */  jal        CheckOption
/* 22C20 80032420 1000A3AF */   sw        $v1, 0x10($sp)
/* 22C24 80032424 0EC90008 */  j          .L80032438
/* 22C28 80032428 20000424 */   addiu     $a0, $zero, 0x20
.L8003242C:
/* 22C2C 8003242C 209F000C */  jal        UnHightlightText
/* 22C30 80032430 00000000 */   nop
/* 22C34 80032434 20000424 */  addiu      $a0, $zero, 0x20
.L80032438:
/* 22C38 80032438 21280002 */  addu       $a1, $s0, $zero
/* 22C3C 8003243C 21300000 */  addu       $a2, $zero, $zero
/* 22C40 80032440 0180073C */  lui        $a3, %hi(D_80011AD8)
/* 22C44 80032444 D81AE724 */  addiu      $a3, $a3, %lo(D_80011AD8)
/* 22C48 80032448 10001026 */  addiu      $s0, $s0, 0x10
/* 22C4C 8003244C 2809828F */  lw         $v0, %gp_rel(WaterG)($gp)
/* 22C50 80032450 01003126 */  addiu      $s1, $s1, 0x1
/* 22C54 80032454 3063010C */  jal        Print
/* 22C58 80032458 1000A2AF */   sw        $v0, 0x10($sp)
/* 22C5C 8003245C 21184002 */  addu       $v1, $s2, $zero
/* 22C60 80032460 2009828F */  lw         $v0, %gp_rel(WaterMenuSelection)($gp)
/* 22C64 80032464 00000000 */  nop
/* 22C68 80032468 25006214 */  bne        $v1, $v0, .L80032500
/* 22C6C 8003246C 01005226 */   addiu     $s2, $s2, 0x1
/* 22C70 80032470 159F000C */  jal        HightlightText
/* 22C74 80032474 00000000 */   nop
/* 22C78 80032478 0980033C */  lui        $v1, %hi(Pad0)
/* 22C7C 8003247C 2C596394 */  lhu        $v1, %lo(Pad0)($v1)
/* 22C80 80032480 00000000 */  nop
/* 22C84 80032484 00406330 */  andi       $v1, $v1, 0x4000
/* 22C88 80032488 11006010 */  beqz       $v1, .L800324D0
/* 22C8C 8003248C 21200000 */   addu      $a0, $zero, $zero
/* 22C90 80032490 00010524 */  addiu      $a1, $zero, 0x100
/* 22C94 80032494 FFFF0634 */  ori        $a2, $zero, 0xFFFF
/* 22C98 80032498 01000724 */  addiu      $a3, $zero, 0x1
/* 22C9C 8003249C 20000324 */  addiu      $v1, $zero, 0x20
/* 22CA0 800324A0 1400A3AF */  sw         $v1, 0x14($sp)
/* 22CA4 800324A4 0980033C */  lui        $v1, %hi(Pad0)
/* 22CA8 800324A8 2C596394 */  lhu        $v1, %lo(Pad0)($v1)
/* 22CAC 800324AC 80000224 */  addiu      $v0, $zero, 0x80
/* 22CB0 800324B0 1000A2AF */  sw         $v0, 0x10($sp)
/* 22CB4 800324B4 2C098227 */  addiu      $v0, $gp, %gp_rel(WaterB)
/* 22CB8 800324B8 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 22CBC 800324BC 2000A2AF */  sw         $v0, 0x20($sp)
/* 22CC0 800324C0 9949010C */  jal        CheckOptionShift
/* 22CC4 800324C4 1800A3AF */   sw        $v1, 0x18($sp)
/* 22CC8 800324C8 43C90008 */  j          .L8003250C
/* 22CCC 800324CC 20000424 */   addiu     $a0, $zero, 0x20
.L800324D0:
/* 22CD0 800324D0 00010524 */  addiu      $a1, $zero, 0x100
/* 22CD4 800324D4 80000624 */  addiu      $a2, $zero, 0x80
/* 22CD8 800324D8 20000724 */  addiu      $a3, $zero, 0x20
/* 22CDC 800324DC 0980033C */  lui        $v1, %hi(Trg0)
/* 22CE0 800324E0 30596384 */  lh         $v1, %lo(Trg0)($v1)
/* 22CE4 800324E4 2C098227 */  addiu      $v0, $gp, %gp_rel(WaterB)
/* 22CE8 800324E8 1400A0AF */  sw         $zero, 0x14($sp)
/* 22CEC 800324EC 1800A2AF */  sw         $v0, 0x18($sp)
/* 22CF0 800324F0 4649010C */  jal        CheckOption
/* 22CF4 800324F4 1000A3AF */   sw        $v1, 0x10($sp)
/* 22CF8 800324F8 43C90008 */  j          .L8003250C
/* 22CFC 800324FC 20000424 */   addiu     $a0, $zero, 0x20
.L80032500:
/* 22D00 80032500 209F000C */  jal        UnHightlightText
/* 22D04 80032504 00000000 */   nop
/* 22D08 80032508 20000424 */  addiu      $a0, $zero, 0x20
.L8003250C:
/* 22D0C 8003250C 21280002 */  addu       $a1, $s0, $zero
/* 22D10 80032510 21300000 */  addu       $a2, $zero, $zero
/* 22D14 80032514 0180073C */  lui        $a3, %hi(D_80011AE4)
/* 22D18 80032518 E41AE724 */  addiu      $a3, $a3, %lo(D_80011AE4)
/* 22D1C 8003251C 2C09828F */  lw         $v0, %gp_rel(WaterB)($gp)
/* 22D20 80032520 10001026 */  addiu      $s0, $s0, 0x10
/* 22D24 80032524 3063010C */  jal        Print
/* 22D28 80032528 1000A2AF */   sw        $v0, 0x10($sp)
/* 22D2C 8003252C 2009838F */  lw         $v1, %gp_rel(WaterMenuSelection)($gp)
/* 22D30 80032530 00000000 */  nop
/* 22D34 80032534 25004316 */  bne        $s2, $v1, .L800325CC
/* 22D38 80032538 01003126 */   addiu     $s1, $s1, 0x1
/* 22D3C 8003253C 159F000C */  jal        HightlightText
/* 22D40 80032540 00000000 */   nop
/* 22D44 80032544 0980033C */  lui        $v1, %hi(Pad0)
/* 22D48 80032548 2C596394 */  lhu        $v1, %lo(Pad0)($v1)
/* 22D4C 8003254C 00000000 */  nop
/* 22D50 80032550 00406330 */  andi       $v1, $v1, 0x4000
/* 22D54 80032554 11006010 */  beqz       $v1, .L8003259C
/* 22D58 80032558 00010524 */   addiu     $a1, $zero, 0x100
/* 22D5C 8003255C 21200000 */  addu       $a0, $zero, $zero
/* 22D60 80032560 FFFF0634 */  ori        $a2, $zero, 0xFFFF
/* 22D64 80032564 01000724 */  addiu      $a3, $zero, 0x1
/* 22D68 80032568 20000324 */  addiu      $v1, $zero, 0x20
/* 22D6C 8003256C 1400A3AF */  sw         $v1, 0x14($sp)
/* 22D70 80032570 0980033C */  lui        $v1, %hi(Pad0)
/* 22D74 80032574 2C596394 */  lhu        $v1, %lo(Pad0)($v1)
/* 22D78 80032578 80000224 */  addiu      $v0, $zero, 0x80
/* 22D7C 8003257C 1000A2AF */  sw         $v0, 0x10($sp)
/* 22D80 80032580 30098227 */  addiu      $v0, $gp, %gp_rel(WaterSpeed)
/* 22D84 80032584 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 22D88 80032588 2000A2AF */  sw         $v0, 0x20($sp)
/* 22D8C 8003258C 9949010C */  jal        CheckOptionShift
/* 22D90 80032590 1800A3AF */   sw        $v1, 0x18($sp)
/* 22D94 80032594 76C90008 */  j          .L800325D8
/* 22D98 80032598 20000424 */   addiu     $a0, $zero, 0x20
.L8003259C:
/* 22D9C 8003259C 21200000 */  addu       $a0, $zero, $zero
/* 22DA0 800325A0 80000624 */  addiu      $a2, $zero, 0x80
/* 22DA4 800325A4 20000724 */  addiu      $a3, $zero, 0x20
/* 22DA8 800325A8 0980033C */  lui        $v1, %hi(Trg0)
/* 22DAC 800325AC 30596384 */  lh         $v1, %lo(Trg0)($v1)
/* 22DB0 800325B0 30098227 */  addiu      $v0, $gp, %gp_rel(WaterSpeed)
/* 22DB4 800325B4 1400A0AF */  sw         $zero, 0x14($sp)
/* 22DB8 800325B8 1800A2AF */  sw         $v0, 0x18($sp)
/* 22DBC 800325BC 4649010C */  jal        CheckOption
/* 22DC0 800325C0 1000A3AF */   sw        $v1, 0x10($sp)
/* 22DC4 800325C4 76C90008 */  j          .L800325D8
/* 22DC8 800325C8 20000424 */   addiu     $a0, $zero, 0x20
.L800325CC:
/* 22DCC 800325CC 209F000C */  jal        UnHightlightText
/* 22DD0 800325D0 00000000 */   nop
/* 22DD4 800325D4 20000424 */  addiu      $a0, $zero, 0x20
.L800325D8:
/* 22DD8 800325D8 21280002 */  addu       $a1, $s0, $zero
/* 22DDC 800325DC 21300000 */  addu       $a2, $zero, $zero
/* 22DE0 800325E0 0180073C */  lui        $a3, %hi(D_80011AF0)
/* 22DE4 800325E4 F01AE724 */  addiu      $a3, $a3, %lo(D_80011AF0)
/* 22DE8 800325E8 10001026 */  addiu      $s0, $s0, 0x10
/* 22DEC 800325EC 3009828F */  lw         $v0, %gp_rel(WaterSpeed)($gp)
/* 22DF0 800325F0 01003126 */  addiu      $s1, $s1, 0x1
/* 22DF4 800325F4 3063010C */  jal        Print
/* 22DF8 800325F8 1000A2AF */   sw        $v0, 0x10($sp)
/* 22DFC 800325FC 209F000C */  jal        UnHightlightText
/* 22E00 80032600 00000000 */   nop
/* 22E04 80032604 21200000 */  addu       $a0, $zero, $zero
/* 22E08 80032608 21282002 */  addu       $a1, $s1, $zero
/* 22E0C 8003260C 10000624 */  addiu      $a2, $zero, 0x10
/* 22E10 80032610 40000724 */  addiu      $a3, $zero, 0x40
/* 22E14 80032614 0980033C */  lui        $v1, %hi(Trg0)
/* 22E18 80032618 30596384 */  lh         $v1, %lo(Trg0)($v1)
/* 22E1C 8003261C 20098227 */  addiu      $v0, $gp, %gp_rel(WaterMenuSelection)
/* 22E20 80032620 1400A0AF */  sw         $zero, 0x14($sp)
/* 22E24 80032624 1800A2AF */  sw         $v0, 0x18($sp)
/* 22E28 80032628 4649010C */  jal        CheckOption
/* 22E2C 8003262C 1000A3AF */   sw        $v1, 0x10($sp)
/* 22E30 80032630 8F49010C */  jal        UITB_SetBoxStyle
/* 22E34 80032634 21200000 */   addu      $a0, $zero, $zero
/* 22E38 80032638 8949010C */  jal        UITB_SetBorderStyle
/* 22E3C 8003263C 21200000 */   addu      $a0, $zero, $zero
/* 22E40 80032640 21200000 */  addu       $a0, $zero, $zero
/* 22E44 80032644 21280000 */  addu       $a1, $zero, $zero
/* 22E48 80032648 45000624 */  addiu      $a2, $zero, 0x45
/* 22E4C 8003264C 05000724 */  addiu      $a3, $zero, 0x5
/* 22E50 80032650 05000224 */  addiu      $v0, $zero, 0x5
/* 22E54 80032654 80000324 */  addiu      $v1, $zero, 0x80
/* 22E58 80032658 1000A2AF */  sw         $v0, 0x10($sp)
/* 22E5C 8003265C 7A49010C */  jal        UITB_SetDrawBoxColor
/* 22E60 80032660 1400A3AF */   sw        $v1, 0x14($sp)
/* 22E64 80032664 10000424 */  addiu      $a0, $zero, 0x10
/* 22E68 80032668 10000524 */  addiu      $a1, $zero, 0x10
/* 22E6C 8003266C B0000624 */  addiu      $a2, $zero, 0xB0
/* 22E70 80032670 21380002 */  addu       $a3, $s0, $zero
/* 22E74 80032674 01000324 */  addiu      $v1, $zero, 0x1
/* 22E78 80032678 0A000224 */  addiu      $v0, $zero, 0xA
/* 22E7C 8003267C 1000A3AF */  sw         $v1, 0x10($sp)
/* 22E80 80032680 1400A3AF */  sw         $v1, 0x14($sp)
/* 22E84 80032684 B043010C */  jal        UITB_DrawBox
/* 22E88 80032688 1800A2AF */   sw        $v0, 0x18($sp)
.L8003268C:
/* 22E8C 8003268C 3400BF8F */  lw         $ra, 0x34($sp)
/* 22E90 80032690 3000B28F */  lw         $s2, 0x30($sp)
/* 22E94 80032694 2C00B18F */  lw         $s1, 0x2C($sp)
/* 22E98 80032698 2800B08F */  lw         $s0, 0x28($sp)
/* 22E9C 8003269C 0800E003 */  jr         $ra
/* 22EA0 800326A0 3800BD27 */   addiu     $sp, $sp, 0x38
.size EditWater, . - EditWater
