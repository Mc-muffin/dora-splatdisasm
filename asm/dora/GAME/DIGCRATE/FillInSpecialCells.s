.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel FillInSpecialCells
/* 11274 80020A74 0880033C */  lui        $v1, %hi(TestWorld)
/* 11278 80020A78 8C65628C */  lw         $v0, %lo(TestWorld)($v1)
/* 1127C 80020A7C A0FFBD27 */  addiu      $sp, $sp, -0x60
/* 11280 80020A80 4C00B5AF */  sw         $s5, 0x4C($sp)
/* 11284 80020A84 21A80000 */  addu       $s5, $zero, $zero
/* 11288 80020A88 5C00BFAF */  sw         $ra, 0x5C($sp)
/* 1128C 80020A8C 5800BEAF */  sw         $fp, 0x58($sp)
/* 11290 80020A90 5400B7AF */  sw         $s7, 0x54($sp)
/* 11294 80020A94 5000B6AF */  sw         $s6, 0x50($sp)
/* 11298 80020A98 4800B4AF */  sw         $s4, 0x48($sp)
/* 1129C 80020A9C 4400B3AF */  sw         $s3, 0x44($sp)
/* 112A0 80020AA0 4000B2AF */  sw         $s2, 0x40($sp)
/* 112A4 80020AA4 3C00B1AF */  sw         $s1, 0x3C($sp)
/* 112A8 80020AA8 3800B0AF */  sw         $s0, 0x38($sp)
/* 112AC 80020AAC 1800A0AF */  sw         $zero, 0x18($sp)
/* 112B0 80020AB0 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 112B4 80020AB4 C8004010 */  beqz       $v0, .L80020DD8
/* 112B8 80020AB8 2000A0AF */   sw        $zero, 0x20($sp)
/* 112BC 80020ABC 21980000 */  addu       $s3, $zero, $zero
.L80020AC0:
/* 112C0 80020AC0 8C656324 */  addiu      $v1, $v1, %lo(TestWorld)
/* 112C4 80020AC4 0400628C */  lw         $v0, 0x4($v1)
/* 112C8 80020AC8 0100A426 */  addiu      $a0, $s5, 0x1
/* 112CC 80020ACC BB004010 */  beqz       $v0, .L80020DBC
/* 112D0 80020AD0 2800A4AF */   sw        $a0, 0x28($sp)
/* 112D4 80020AD4 2000A38F */  lw         $v1, 0x20($sp)
/* 112D8 80020AD8 1C00A48F */  lw         $a0, 0x1C($sp)
/* 112DC 80020ADC 80100300 */  sll        $v0, $v1, 2
/* 112E0 80020AE0 21104300 */  addu       $v0, $v0, $v1
/* 112E4 80020AE4 40180400 */  sll        $v1, $a0, 1
/* 112E8 80020AE8 21186400 */  addu       $v1, $v1, $a0
/* 112EC 80020AEC 00190300 */  sll        $v1, $v1, 4
/* 112F0 80020AF0 3000A3AF */  sw         $v1, 0x30($sp)
/* 112F4 80020AF4 1800A38F */  lw         $v1, 0x18($sp)
/* 112F8 80020AF8 C0100200 */  sll        $v0, $v0, 3
/* 112FC 80020AFC 2C00A2AF */  sw         $v0, 0x2C($sp)
/* 11300 80020B00 40100300 */  sll        $v0, $v1, 1
/* 11304 80020B04 21104300 */  addu       $v0, $v0, $v1
/* 11308 80020B08 00110200 */  sll        $v0, $v0, 4
/* 1130C 80020B0C 3400A2AF */  sw         $v0, 0x34($sp)
/* 11310 80020B10 0880043C */  lui        $a0, %hi(TestWorld)
.L80020B14:
/* 11314 80020B14 8C658424 */  addiu      $a0, $a0, %lo(TestWorld)
/* 11318 80020B18 0800828C */  lw         $v0, 0x8($a0)
/* 1131C 80020B1C 00000000 */  nop
/* 11320 80020B20 9F004010 */  beqz       $v0, .L80020DA0
/* 11324 80020B24 21880000 */   addu      $s1, $zero, $zero
/* 11328 80020B28 2C00BE8F */  lw         $fp, 0x2C($sp)
/* 1132C 80020B2C 3000B78F */  lw         $s7, 0x30($sp)
/* 11330 80020B30 3400B68F */  lw         $s6, 0x34($sp)
/* 11334 80020B34 C0111500 */  sll        $v0, $s5, 7
/* 11338 80020B38 2400A2AF */  sw         $v0, 0x24($sp)
/* 1133C 80020B3C 2120A002 */  addu       $a0, $s5, $zero
.L80020B40:
/* 11340 80020B40 21286002 */  addu       $a1, $s3, $zero
/* 11344 80020B44 1694010C */  jal        GetCelIndex
/* 11348 80020B48 21302002 */   addu      $a2, $s1, $zero
/* 1134C 80020B4C 21204000 */  addu       $a0, $v0, $zero
/* 11350 80020B50 FF038330 */  andi       $v1, $a0, 0x3FF
/* 11354 80020B54 FF030224 */  addiu      $v0, $zero, 0x3FF
/* 11358 80020B58 8A006210 */  beq        $v1, $v0, .L80020D84
/* 1135C 80020B5C 02930400 */   srl       $s2, $a0, 12
/* 11360 80020B60 80100300 */  sll        $v0, $v1, 2
/* 11364 80020B64 21104300 */  addu       $v0, $v0, $v1
/* 11368 80020B68 0980033C */  lui        $v1, %hi(CellAttributesPtr)
/* 1136C 80020B6C 6C50638C */  lw         $v1, %lo(CellAttributesPtr)($v1)
/* 11370 80020B70 C0100200 */  sll        $v0, $v0, 3
/* 11374 80020B74 02004016 */  bnez       $s2, .L80020B80
/* 11378 80020B78 21A06200 */   addu      $s4, $v1, $v0
/* 1137C 80020B7C 01001224 */  addiu      $s2, $zero, 0x1
.L80020B80:
/* 11380 80020B80 0800838E */  lw         $v1, 0x8($s4)
/* 11384 80020B84 0002023C */  lui        $v0, (0x2000000 >> 16)
/* 11388 80020B88 24186200 */  and        $v1, $v1, $v0
/* 1138C 80020B8C 2E006010 */  beqz       $v1, .L80020C48
/* 11390 80020B90 FFFF4426 */   addiu     $a0, $s2, -0x1
/* 11394 80020B94 7413828F */  lw         $v0, %gp_rel(WorldDigPtr)($gp)
/* 11398 80020B98 2400A38F */  lw         $v1, 0x24($sp)
/* 1139C 80020B9C 21805600 */  addu       $s0, $v0, $s6
/* 113A0 80020BA0 C0111300 */  sll        $v0, $s3, 7
/* 113A4 80020BA4 100003AE */  sw         $v1, 0x10($s0)
/* 113A8 80020BA8 C0191100 */  sll        $v1, $s1, 7
/* 113AC 80020BAC 140002AE */  sw         $v0, 0x14($s0)
/* 113B0 80020BB0 06000224 */  addiu      $v0, $zero, 0x6
/* 113B4 80020BB4 180003AE */  sw         $v1, 0x18($s0)
/* 113B8 80020BB8 0B008214 */  bne        $a0, $v0, .L80020BE8
/* 113BC 80020BBC 280004AE */   sw        $a0, 0x28($s0)
/* 113C0 80020BC0 2120A002 */  addu       $a0, $s5, $zero
/* 113C4 80020BC4 FFFF6526 */  addiu      $a1, $s3, -0x1
/* 113C8 80020BC8 090C010C */  jal        LookUpSpawn
/* 113CC 80020BCC 21302002 */   addu      $a2, $s1, $zero
/* 113D0 80020BD0 02004014 */  bnez       $v0, .L80020BDC
/* 113D4 80020BD4 00000000 */   nop
/* 113D8 80020BD8 01001324 */  addiu      $s3, $zero, 0x1
.L80020BDC:
/* 113DC 80020BDC E701010C */  jal        GetSpawnTriggerIndex
/* 113E0 80020BE0 21204000 */   addu      $a0, $v0, $zero
/* 113E4 80020BE4 2C0002AE */  sw         $v0, 0x2C($s0)
.L80020BE8:
/* 113E8 80020BE8 04000426 */  addiu      $a0, $s0, 0x4
/* 113EC 80020BEC 21300000 */  addu       $a2, $zero, $zero
/* 113F0 80020BF0 21380000 */  addu       $a3, $zero, $zero
/* 113F4 80020BF4 3000D626 */  addiu      $s6, $s6, 0x30
/* 113F8 80020BF8 3400A28F */  lw         $v0, 0x34($sp)
/* 113FC 80020BFC 1800A38F */  lw         $v1, 0x18($sp)
/* 11400 80020C00 30004224 */  addiu      $v0, $v0, 0x30
/* 11404 80020C04 01006324 */  addiu      $v1, $v1, 0x1
/* 11408 80020C08 3400A2AF */  sw         $v0, 0x34($sp)
/* 1140C 80020C0C 10000226 */  addiu      $v0, $s0, 0x10
/* 11410 80020C10 1800A3AF */  sw         $v1, 0x18($sp)
/* 11414 80020C14 0C0002AE */  sw         $v0, 0xC($s0)
/* 11418 80020C18 01000224 */  addiu      $v0, $zero, 0x1
/* 1141C 80020C1C 040002AE */  sw         $v0, 0x4($s0)
/* 11420 80020C20 240002AE */  sw         $v0, 0x24($s0)
/* 11424 80020C24 0280023C */  lui        $v0, %hi(DigLeaveObject)
/* 11428 80020C28 22008586 */  lh         $a1, 0x22($s4)
/* 1142C 80020C2C 3C124224 */  addiu      $v0, $v0, %lo(DigLeaveObject)
/* 11430 80020C30 E594010C */  jal        SetCelAnimLocation
/* 11434 80020C34 1000A2AF */   sw        $v0, 0x10($sp)
/* 11438 80020C38 21204000 */  addu       $a0, $v0, $zero
/* 1143C 80020C3C 08000524 */  addiu      $a1, $zero, 0x8
/* 11440 80020C40 CF94010C */  jal        SetCellAnimFlags
/* 11444 80020C44 000002AE */   sw        $v0, 0x0($s0)
.L80020C48:
/* 11448 80020C48 0800838E */  lw         $v1, 0x8($s4)
/* 1144C 80020C4C 0004023C */  lui        $v0, (0x4000000 >> 16)
/* 11450 80020C50 24186200 */  and        $v1, $v1, $v0
/* 11454 80020C54 28006010 */  beqz       $v1, .L80020CF8
/* 11458 80020C58 FFFF4426 */   addiu     $a0, $s2, -0x1
/* 1145C 80020C5C 7C13828F */  lw         $v0, %gp_rel(WorldCratePtr)($gp)
/* 11460 80020C60 2400A38F */  lw         $v1, 0x24($sp)
/* 11464 80020C64 21805700 */  addu       $s0, $v0, $s7
/* 11468 80020C68 C0111300 */  sll        $v0, $s3, 7
/* 1146C 80020C6C 100003AE */  sw         $v1, 0x10($s0)
/* 11470 80020C70 C0191100 */  sll        $v1, $s1, 7
/* 11474 80020C74 140002AE */  sw         $v0, 0x14($s0)
/* 11478 80020C78 06000224 */  addiu      $v0, $zero, 0x6
/* 1147C 80020C7C 180003AE */  sw         $v1, 0x18($s0)
/* 11480 80020C80 08008214 */  bne        $a0, $v0, .L80020CA4
/* 11484 80020C84 280004AE */   sw        $a0, 0x28($s0)
/* 11488 80020C88 2120A002 */  addu       $a0, $s5, $zero
/* 1148C 80020C8C FFFF6526 */  addiu      $a1, $s3, -0x1
/* 11490 80020C90 090C010C */  jal        LookUpSpawn
/* 11494 80020C94 21302002 */   addu      $a2, $s1, $zero
/* 11498 80020C98 E701010C */  jal        GetSpawnTriggerIndex
/* 1149C 80020C9C 21204000 */   addu      $a0, $v0, $zero
/* 114A0 80020CA0 2C0002AE */  sw         $v0, 0x2C($s0)
.L80020CA4:
/* 114A4 80020CA4 04000426 */  addiu      $a0, $s0, 0x4
/* 114A8 80020CA8 21300000 */  addu       $a2, $zero, $zero
/* 114AC 80020CAC 21380000 */  addu       $a3, $zero, $zero
/* 114B0 80020CB0 3000F726 */  addiu      $s7, $s7, 0x30
/* 114B4 80020CB4 3000A28F */  lw         $v0, 0x30($sp)
/* 114B8 80020CB8 1C00A38F */  lw         $v1, 0x1C($sp)
/* 114BC 80020CBC 30004224 */  addiu      $v0, $v0, 0x30
/* 114C0 80020CC0 01006324 */  addiu      $v1, $v1, 0x1
/* 114C4 80020CC4 3000A2AF */  sw         $v0, 0x30($sp)
/* 114C8 80020CC8 10000226 */  addiu      $v0, $s0, 0x10
/* 114CC 80020CCC 1C00A3AF */  sw         $v1, 0x1C($sp)
/* 114D0 80020CD0 0C0002AE */  sw         $v0, 0xC($s0)
/* 114D4 80020CD4 01000224 */  addiu      $v0, $zero, 0x1
/* 114D8 80020CD8 040002AE */  sw         $v0, 0x4($s0)
/* 114DC 80020CDC 0280023C */  lui        $v0, %hi(CrateLeaveObject)
/* 114E0 80020CE0 240000AE */  sw         $zero, 0x24($s0)
/* 114E4 80020CE4 22008586 */  lh         $a1, 0x22($s4)
/* 114E8 80020CE8 400F4224 */  addiu      $v0, $v0, %lo(CrateLeaveObject)
/* 114EC 80020CEC E594010C */  jal        SetCelAnimLocation
/* 114F0 80020CF0 1000A2AF */   sw        $v0, 0x10($sp)
/* 114F4 80020CF4 000002AE */  sw         $v0, 0x0($s0)
.L80020CF8:
/* 114F8 80020CF8 0108023C */  lui        $v0, (0x801E000 >> 16)
/* 114FC 80020CFC 0800838E */  lw         $v1, 0x8($s4)
/* 11500 80020D00 00E04234 */  ori        $v0, $v0, (0x801E000 & 0xFFFF)
/* 11504 80020D04 24186200 */  and        $v1, $v1, $v0
/* 11508 80020D08 1E006010 */  beqz       $v1, .L80020D84
/* 1150C 80020D0C 21300000 */   addu      $a2, $zero, $zero
/* 11510 80020D10 21380000 */  addu       $a3, $zero, $zero
/* 11514 80020D14 2C00A38F */  lw         $v1, 0x2C($sp)
/* 11518 80020D18 8413908F */  lw         $s0, %gp_rel(WorldSpringBoardPtr)($gp)
/* 1151C 80020D1C 2000A48F */  lw         $a0, 0x20($sp)
/* 11520 80020D20 2400A28F */  lw         $v0, 0x24($sp)
/* 11524 80020D24 28006324 */  addiu      $v1, $v1, 0x28
/* 11528 80020D28 01008424 */  addiu      $a0, $a0, 0x1
/* 1152C 80020D2C 21801E02 */  addu       $s0, $s0, $fp
/* 11530 80020D30 2000A4AF */  sw         $a0, 0x20($sp)
/* 11534 80020D34 04000426 */  addiu      $a0, $s0, 0x4
/* 11538 80020D38 2C00A3AF */  sw         $v1, 0x2C($sp)
/* 1153C 80020D3C 100002AE */  sw         $v0, 0x10($s0)
/* 11540 80020D40 C0111300 */  sll        $v0, $s3, 7
/* 11544 80020D44 C0191100 */  sll        $v1, $s1, 7
/* 11548 80020D48 140002AE */  sw         $v0, 0x14($s0)
/* 1154C 80020D4C 10000226 */  addiu      $v0, $s0, 0x10
/* 11550 80020D50 180003AE */  sw         $v1, 0x18($s0)
/* 11554 80020D54 01000324 */  addiu      $v1, $zero, 0x1
/* 11558 80020D58 0C0002AE */  sw         $v0, 0xC($s0)
/* 1155C 80020D5C 040003AE */  sw         $v1, 0x4($s0)
/* 11560 80020D60 240000AE */  sw         $zero, 0x24($s0)
/* 11564 80020D64 22008586 */  lh         $a1, 0x22($s4)
/* 11568 80020D68 2800DE27 */  addiu      $fp, $fp, 0x28
/* 1156C 80020D6C E594010C */  jal        SetCelAnimLocation
/* 11570 80020D70 1000A0AF */   sw        $zero, 0x10($sp)
/* 11574 80020D74 21204000 */  addu       $a0, $v0, $zero
/* 11578 80020D78 10000524 */  addiu      $a1, $zero, 0x10
/* 1157C 80020D7C CF94010C */  jal        SetCellAnimFlags
/* 11580 80020D80 000002AE */   sw        $v0, 0x0($s0)
.L80020D84:
/* 11584 80020D84 0880043C */  lui        $a0, %hi(TestWorld)
/* 11588 80020D88 8C658424 */  addiu      $a0, $a0, %lo(TestWorld)
/* 1158C 80020D8C 0800828C */  lw         $v0, 0x8($a0)
/* 11590 80020D90 01003126 */  addiu      $s1, $s1, 0x1
/* 11594 80020D94 2B102202 */  sltu       $v0, $s1, $v0
/* 11598 80020D98 69FF4014 */  bnez       $v0, .L80020B40
/* 1159C 80020D9C 2120A002 */   addu      $a0, $s5, $zero
.L80020DA0:
/* 115A0 80020DA0 0880033C */  lui        $v1, %hi(TestWorld)
/* 115A4 80020DA4 8C656324 */  addiu      $v1, $v1, %lo(TestWorld)
/* 115A8 80020DA8 0400628C */  lw         $v0, 0x4($v1)
/* 115AC 80020DAC 01007326 */  addiu      $s3, $s3, 0x1
/* 115B0 80020DB0 2B106202 */  sltu       $v0, $s3, $v0
/* 115B4 80020DB4 57FF4014 */  bnez       $v0, .L80020B14
/* 115B8 80020DB8 0880043C */   lui       $a0, %hi(TestWorld)
.L80020DBC:
/* 115BC 80020DBC 0880033C */  lui        $v1, %hi(TestWorld)
/* 115C0 80020DC0 8C65628C */  lw         $v0, %lo(TestWorld)($v1)
/* 115C4 80020DC4 2800B58F */  lw         $s5, 0x28($sp)
/* 115C8 80020DC8 00000000 */  nop
/* 115CC 80020DCC 2B10A202 */  sltu       $v0, $s5, $v0
/* 115D0 80020DD0 3BFF4014 */  bnez       $v0, .L80020AC0
/* 115D4 80020DD4 21980000 */   addu      $s3, $zero, $zero
.L80020DD8:
/* 115D8 80020DD8 5C00BF8F */  lw         $ra, 0x5C($sp)
/* 115DC 80020DDC 5800BE8F */  lw         $fp, 0x58($sp)
/* 115E0 80020DE0 5400B78F */  lw         $s7, 0x54($sp)
/* 115E4 80020DE4 5000B68F */  lw         $s6, 0x50($sp)
/* 115E8 80020DE8 4C00B58F */  lw         $s5, 0x4C($sp)
/* 115EC 80020DEC 4800B48F */  lw         $s4, 0x48($sp)
/* 115F0 80020DF0 4400B38F */  lw         $s3, 0x44($sp)
/* 115F4 80020DF4 4000B28F */  lw         $s2, 0x40($sp)
/* 115F8 80020DF8 3C00B18F */  lw         $s1, 0x3C($sp)
/* 115FC 80020DFC 3800B08F */  lw         $s0, 0x38($sp)
/* 11600 80020E00 0800E003 */  jr         $ra
/* 11604 80020E04 6000BD27 */   addiu     $sp, $sp, 0x60
.size FillInSpecialCells, . - FillInSpecialCells
