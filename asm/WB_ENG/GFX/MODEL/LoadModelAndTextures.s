.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LoadModelAndTextures
/* 3BAA8 8004B2A8 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 3BAAC 8004B2AC 1800B2AF */  sw         $s2, 0x18($sp)
/* 3BAB0 8004B2B0 21908000 */  addu       $s2, $a0, $zero
/* 3BAB4 8004B2B4 21384002 */  addu       $a3, $s2, $zero
/* 3BAB8 8004B2B8 0980023C */  lui        $v0, %hi(D_80095048)
/* 3BABC 8004B2BC 48504424 */  addiu      $a0, $v0, %lo(D_80095048)
/* 3BAC0 8004B2C0 21488000 */  addu       $t1, $a0, $zero
/* 3BAC4 8004B2C4 0A80033C */  lui        $v1, %hi(StringBuffer)
/* 3BAC8 8004B2C8 10516824 */  addiu      $t0, $v1, %lo(StringBuffer)
/* 3BACC 8004B2CC 2000B4AF */  sw         $s4, 0x20($sp)
/* 3BAD0 8004B2D0 21A0A000 */  addu       $s4, $a1, $zero
/* 3BAD4 8004B2D4 2400B5AF */  sw         $s5, 0x24($sp)
/* 3BAD8 8004B2D8 21A8C000 */  addu       $s5, $a2, $zero
/* 3BADC 8004B2DC 2800BFAF */  sw         $ra, 0x28($sp)
/* 3BAE0 8004B2E0 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 3BAE4 8004B2E4 1400B1AF */  sw         $s1, 0x14($sp)
/* 3BAE8 8004B2E8 1000B0AF */  sw         $s0, 0x10($sp)
/* 3BAEC 8004B2EC 00004292 */  lbu        $v0, 0x0($s2)
/* 3BAF0 8004B2F0 00000000 */  nop
/* 3BAF4 8004B2F4 08004010 */  beqz       $v0, .L8004B318
/* 3BAF8 8004B2F8 21986000 */   addu      $s3, $v1, $zero
.L8004B2FC:
/* 3BAFC 8004B2FC 0000E290 */  lbu        $v0, 0x0($a3)
/* 3BB00 8004B300 0100E724 */  addiu      $a3, $a3, 0x1
/* 3BB04 8004B304 000002A1 */  sb         $v0, 0x0($t0)
/* 3BB08 8004B308 0000E390 */  lbu        $v1, 0x0($a3)
/* 3BB0C 8004B30C 00000000 */  nop
/* 3BB10 8004B310 FAFF6014 */  bnez       $v1, .L8004B2FC
/* 3BB14 8004B314 01000825 */   addiu     $t0, $t0, 0x1
.L8004B318:
/* 3BB18 8004B318 00008290 */  lbu        $v0, 0x0($a0)
/* 3BB1C 8004B31C 00000000 */  nop
/* 3BB20 8004B320 07004010 */  beqz       $v0, .L8004B340
/* 3BB24 8004B324 00000000 */   nop
.L8004B328:
/* 3BB28 8004B328 01002925 */  addiu      $t1, $t1, 0x1
/* 3BB2C 8004B32C 000002A1 */  sb         $v0, 0x0($t0)
/* 3BB30 8004B330 00002291 */  lbu        $v0, 0x0($t1)
/* 3BB34 8004B334 00000000 */  nop
/* 3BB38 8004B338 FBFF4014 */  bnez       $v0, .L8004B328
/* 3BB3C 8004B33C 01000825 */   addiu     $t0, $t0, 0x1
.L8004B340:
/* 3BB40 8004B340 000000A1 */  sb         $zero, 0x0($t0)
/* 3BB44 8004B344 10517126 */  addiu      $s1, $s3, %lo(StringBuffer)
/* 3BB48 8004B348 B35C010C */  jal        GetSizeOfFile
/* 3BB4C 8004B34C 21202002 */   addu      $a0, $s1, $zero
/* 3BB50 8004B350 21204000 */  addu       $a0, $v0, $zero
/* 3BB54 8004B354 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 3BB58 8004B358 3B008210 */  beq        $a0, $v0, .L8004B448
/* 3BB5C 8004B35C 21800000 */   addu      $s0, $zero, $zero
/* 3BB60 8004B360 2B3F010C */  jal        new_malloc
/* 3BB64 8004B364 00000000 */   nop
/* 3BB68 8004B368 21804000 */  addu       $s0, $v0, $zero
/* 3BB6C 8004B36C 35000012 */  beqz       $s0, .L8004B444
/* 3BB70 8004B370 21202002 */   addu      $a0, $s1, $zero
/* 3BB74 8004B374 495C010C */  jal        LoadFile
/* 3BB78 8004B378 21280002 */   addu      $a1, $s0, $zero
/* 3BB7C 8004B37C 21200002 */  addu       $a0, $s0, $zero
/* 3BB80 8004B380 21288002 */  addu       $a1, $s4, $zero
/* 3BB84 8004B384 1000028E */  lw         $v0, 0x10($s0)
/* 3BB88 8004B388 1400038E */  lw         $v1, 0x14($s0)
/* 3BB8C 8004B38C 1800068E */  lw         $a2, 0x18($s0)
/* 3BB90 8004B390 21100202 */  addu       $v0, $s0, $v0
/* 3BB94 8004B394 100002AE */  sw         $v0, 0x10($s0)
/* 3BB98 8004B398 1C00028E */  lw         $v0, 0x1C($s0)
/* 3BB9C 8004B39C 21180302 */  addu       $v1, $s0, $v1
/* 3BBA0 8004B3A0 140003AE */  sw         $v1, 0x14($s0)
/* 3BBA4 8004B3A4 2000038E */  lw         $v1, 0x20($s0)
/* 3BBA8 8004B3A8 21300602 */  addu       $a2, $s0, $a2
/* 3BBAC 8004B3AC 180006AE */  sw         $a2, 0x18($s0)
/* 3BBB0 8004B3B0 21100202 */  addu       $v0, $s0, $v0
/* 3BBB4 8004B3B4 1C0002AE */  sw         $v0, 0x1C($s0)
/* 3BBB8 8004B3B8 0C00028E */  lw         $v0, 0xC($s0)
/* 3BBBC 8004B3BC 21180302 */  addu       $v1, $s0, $v1
/* 3BBC0 8004B3C0 200003AE */  sw         $v1, 0x20($s0)
/* 3BBC4 8004B3C4 2400038E */  lw         $v1, 0x24($s0)
/* 3BBC8 8004B3C8 21100202 */  addu       $v0, $s0, $v0
/* 3BBCC 8004B3CC 0C0002AE */  sw         $v0, 0xC($s0)
/* 3BBD0 8004B3D0 2800028E */  lw         $v0, 0x28($s0)
/* 3BBD4 8004B3D4 21180302 */  addu       $v1, $s0, $v1
/* 3BBD8 8004B3D8 240003AE */  sw         $v1, 0x24($s0)
/* 3BBDC 8004B3DC 2C00038E */  lw         $v1, 0x2C($s0)
/* 3BBE0 8004B3E0 21100202 */  addu       $v0, $s0, $v0
/* 3BBE4 8004B3E4 280002AE */  sw         $v0, 0x28($s0)
/* 3BBE8 8004B3E8 3000028E */  lw         $v0, 0x30($s0)
/* 3BBEC 8004B3EC 21180302 */  addu       $v1, $s0, $v1
/* 3BBF0 8004B3F0 2C0003AE */  sw         $v1, 0x2C($s0)
/* 3BBF4 8004B3F4 3400038E */  lw         $v1, 0x34($s0)
/* 3BBF8 8004B3F8 21100202 */  addu       $v0, $s0, $v0
/* 3BBFC 8004B3FC 300002AE */  sw         $v0, 0x30($s0)
/* 3BC00 8004B400 3800028E */  lw         $v0, 0x38($s0)
/* 3BC04 8004B404 21180302 */  addu       $v1, $s0, $v1
/* 3BC08 8004B408 340003AE */  sw         $v1, 0x34($s0)
/* 3BC0C 8004B40C 3C00038E */  lw         $v1, 0x3C($s0)
/* 3BC10 8004B410 21100202 */  addu       $v0, $s0, $v0
/* 3BC14 8004B414 380002AE */  sw         $v0, 0x38($s0)
/* 3BC18 8004B418 4000028E */  lw         $v0, 0x40($s0)
/* 3BC1C 8004B41C 21180302 */  addu       $v1, $s0, $v1
/* 3BC20 8004B420 3C0003AE */  sw         $v1, 0x3C($s0)
/* 3BC24 8004B424 4400038E */  lw         $v1, 0x44($s0)
/* 3BC28 8004B428 21100202 */  addu       $v0, $s0, $v0
/* 3BC2C 8004B42C 21180302 */  addu       $v1, $s0, $v1
/* 3BC30 8004B430 400002AE */  sw         $v0, 0x40($s0)
/* 3BC34 8004B434 4F2B010C */  jal        SetupModelPolys
/* 3BC38 8004B438 440003AE */   sw        $v1, 0x44($s0)
/* 3BC3C 8004B43C 122D0108 */  j          .L8004B448
/* 3BC40 8004B440 00000000 */   nop
.L8004B444:
/* 3BC44 8004B444 21800000 */  addu       $s0, $zero, $zero
.L8004B448:
/* 3BC48 8004B448 03000016 */  bnez       $s0, .L8004B458
/* 3BC4C 8004B44C 21204002 */   addu      $a0, $s2, $zero
/* 3BC50 8004B450 352D0108 */  j          .L8004B4D4
/* 3BC54 8004B454 21100000 */   addu      $v0, $zero, $zero
.L8004B458:
/* 3BC58 8004B458 0980023C */  lui        $v0, %hi(D_80095050)
/* 3BC5C 8004B45C 50504224 */  addiu      $v0, $v0, %lo(D_80095050)
/* 3BC60 8004B460 21284000 */  addu       $a1, $v0, $zero
/* 3BC64 8004B464 00008390 */  lbu        $v1, 0x0($a0)
/* 3BC68 8004B468 00000000 */  nop
/* 3BC6C 8004B46C 07006010 */  beqz       $v1, .L8004B48C
/* 3BC70 8004B470 10516626 */   addiu     $a2, $s3, %lo(StringBuffer)
.L8004B474:
/* 3BC74 8004B474 01008424 */  addiu      $a0, $a0, 0x1
/* 3BC78 8004B478 0000C3A0 */  sb         $v1, 0x0($a2)
/* 3BC7C 8004B47C 00008390 */  lbu        $v1, 0x0($a0)
/* 3BC80 8004B480 00000000 */  nop
/* 3BC84 8004B484 FBFF6014 */  bnez       $v1, .L8004B474
/* 3BC88 8004B488 0100C624 */   addiu     $a2, $a2, 0x1
.L8004B48C:
/* 3BC8C 8004B48C 00004290 */  lbu        $v0, 0x0($v0)
/* 3BC90 8004B490 00000000 */  nop
/* 3BC94 8004B494 07004010 */  beqz       $v0, .L8004B4B4
/* 3BC98 8004B498 00000000 */   nop
.L8004B49C:
/* 3BC9C 8004B49C 0100A524 */  addiu      $a1, $a1, 0x1
/* 3BCA0 8004B4A0 0000C2A0 */  sb         $v0, 0x0($a2)
/* 3BCA4 8004B4A4 0000A290 */  lbu        $v0, 0x0($a1)
/* 3BCA8 8004B4A8 00000000 */  nop
/* 3BCAC 8004B4AC FBFF4014 */  bnez       $v0, .L8004B49C
/* 3BCB0 8004B4B0 0100C624 */   addiu     $a2, $a2, 0x1
.L8004B4B4:
/* 3BCB4 8004B4B4 10516426 */  addiu      $a0, $s3, %lo(StringBuffer)
/* 3BCB8 8004B4B8 21280002 */  addu       $a1, $s0, $zero
/* 3BCBC 8004B4BC 0000C0A0 */  sb         $zero, 0x0($a2)
/* 3BCC0 8004B4C0 21308002 */  addu       $a2, $s4, $zero
/* 3BCC4 8004B4C4 812E010C */  jal        LoadModelTextures
/* 3BCC8 8004B4C8 2138A002 */   addu      $a3, $s5, $zero
/* 3BCCC 8004B4CC 3C1582AF */  sw         $v0, %gp_rel(Global_HSV_Index)($gp)
/* 3BCD0 8004B4D0 21100002 */  addu       $v0, $s0, $zero
.L8004B4D4:
/* 3BCD4 8004B4D4 2800BF8F */  lw         $ra, 0x28($sp)
/* 3BCD8 8004B4D8 2400B58F */  lw         $s5, 0x24($sp)
/* 3BCDC 8004B4DC 2000B48F */  lw         $s4, 0x20($sp)
/* 3BCE0 8004B4E0 1C00B38F */  lw         $s3, 0x1C($sp)
/* 3BCE4 8004B4E4 1800B28F */  lw         $s2, 0x18($sp)
/* 3BCE8 8004B4E8 1400B18F */  lw         $s1, 0x14($sp)
/* 3BCEC 8004B4EC 1000B08F */  lw         $s0, 0x10($sp)
/* 3BCF0 8004B4F0 0800E003 */  jr         $ra
/* 3BCF4 8004B4F4 3000BD27 */   addiu     $sp, $sp, 0x30
.size LoadModelAndTextures, . - LoadModelAndTextures
