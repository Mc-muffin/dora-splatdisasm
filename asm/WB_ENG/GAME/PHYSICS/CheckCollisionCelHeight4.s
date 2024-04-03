.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckCollisionCelHeight4
/* 2CB24 8003C324 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 2CB28 8003C328 2000B0AF */  sw         $s0, 0x20($sp)
/* 2CB2C 8003C32C 5800B08F */  lw         $s0, 0x58($sp)
/* 2CB30 8003C330 3000B4AF */  sw         $s4, 0x30($sp)
/* 2CB34 8003C334 21A0A000 */  addu       $s4, $a1, $zero
/* 2CB38 8003C338 3C00B7AF */  sw         $s7, 0x3C($sp)
/* 2CB3C 8003C33C 5C00B78F */  lw         $s7, 0x5C($sp)
/* 2CB40 8003C340 5400A7AF */  sw         $a3, 0x54($sp)
/* 2CB44 8003C344 9C148727 */  addiu      $a3, $gp, %gp_rel(yheight1)
/* 2CB48 8003C348 3400B5AF */  sw         $s5, 0x34($sp)
/* 2CB4C 8003C34C 21A88000 */  addu       $s5, $a0, $zero
/* 2CB50 8003C350 3800B6AF */  sw         $s6, 0x38($sp)
/* 2CB54 8003C354 21B0C000 */  addu       $s6, $a2, $zero
/* 2CB58 8003C358 4400BFAF */  sw         $ra, 0x44($sp)
/* 2CB5C 8003C35C 4000BEAF */  sw         $fp, 0x40($sp)
/* 2CB60 8003C360 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 2CB64 8003C364 2800B2AF */  sw         $s2, 0x28($sp)
/* 2CB68 8003C368 2400B1AF */  sw         $s1, 0x24($sp)
/* 2CB6C 8003C36C 2398B002 */  subu       $s3, $s5, $s0
/* 2CB70 8003C370 21206002 */  addu       $a0, $s3, $zero
/* 2CB74 8003C374 2390D002 */  subu       $s2, $s6, $s0
/* 2CB78 8003C378 27F0000C */  jal        CheckCollisionCelHeight
/* 2CB7C 8003C37C 21304002 */   addu      $a2, $s2, $zero
/* 2CB80 8003C380 2188B002 */  addu       $s1, $s5, $s0
/* 2CB84 8003C384 FFFF3126 */  addiu      $s1, $s1, -0x1
/* 2CB88 8003C388 21202002 */  addu       $a0, $s1, $zero
/* 2CB8C 8003C38C 21288002 */  addu       $a1, $s4, $zero
/* 2CB90 8003C390 21304002 */  addu       $a2, $s2, $zero
/* 2CB94 8003C394 A0148727 */  addiu      $a3, $gp, %gp_rel(yheight2)
/* 2CB98 8003C398 27F0000C */  jal        CheckCollisionCelHeight
/* 2CB9C 8003C39C 1000A2AF */   sw        $v0, 0x10($sp)
/* 2CBA0 8003C3A0 21206002 */  addu       $a0, $s3, $zero
/* 2CBA4 8003C3A4 21288002 */  addu       $a1, $s4, $zero
/* 2CBA8 8003C3A8 2180D002 */  addu       $s0, $s6, $s0
/* 2CBAC 8003C3AC FFFF1026 */  addiu      $s0, $s0, -0x1
/* 2CBB0 8003C3B0 21300002 */  addu       $a2, $s0, $zero
/* 2CBB4 8003C3B4 A4148727 */  addiu      $a3, $gp, %gp_rel(yheight3)
/* 2CBB8 8003C3B8 27F0000C */  jal        CheckCollisionCelHeight
/* 2CBBC 8003C3BC 1400A2AF */   sw        $v0, 0x14($sp)
/* 2CBC0 8003C3C0 21202002 */  addu       $a0, $s1, $zero
/* 2CBC4 8003C3C4 21288002 */  addu       $a1, $s4, $zero
/* 2CBC8 8003C3C8 21300002 */  addu       $a2, $s0, $zero
/* 2CBCC 8003C3CC A8148727 */  addiu      $a3, $gp, %gp_rel(yheight4)
/* 2CBD0 8003C3D0 27F0000C */  jal        CheckCollisionCelHeight
/* 2CBD4 8003C3D4 1800A2AF */   sw        $v0, 0x18($sp)
/* 2CBD8 8003C3D8 2120A002 */  addu       $a0, $s5, $zero
/* 2CBDC 8003C3DC 21288002 */  addu       $a1, $s4, $zero
/* 2CBE0 8003C3E0 2130C002 */  addu       $a2, $s6, $zero
/* 2CBE4 8003C3E4 AC148727 */  addiu      $a3, $gp, %gp_rel(yheight5)
/* 2CBE8 8003C3E8 27F0000C */  jal        CheckCollisionCelHeight
/* 2CBEC 8003C3EC 1C00A2AF */   sw        $v0, 0x1C($sp)
/* 2CBF0 8003C3F0 2120E002 */  addu       $a0, $s7, $zero
/* 2CBF4 8003C3F4 21308002 */  addu       $a2, $s4, $zero
/* 2CBF8 8003C3F8 0100A726 */  addiu      $a3, $s5, 0x1
/* 2CBFC 8003C3FC 8400E38E */  lw         $v1, 0x84($s7)
/* 2CC00 8003C400 21F04000 */  addu       $fp, $v0, $zero
/* 2CC04 8003C404 C22F0300 */  srl        $a1, $v1, 31
/* 2CC08 8003C408 21186500 */  addu       $v1, $v1, $a1
/* 2CC0C 8003C40C 43800300 */  sra        $s0, $v1, 1
/* 2CC10 8003C410 2398F000 */  subu       $s3, $a3, $s0
/* 2CC14 8003C414 21286002 */  addu       $a1, $s3, $zero
/* 2CC18 8003C418 0100C326 */  addiu      $v1, $s6, 0x1
/* 2CC1C 8003C41C 23907000 */  subu       $s2, $v1, $s0
/* 2CC20 8003C420 7BF0000C */  jal        CheckDoor
/* 2CC24 8003C424 21384002 */   addu      $a3, $s2, $zero
/* 2CC28 8003C428 8A004014 */  bnez       $v0, .L8003C654
/* 2CC2C 8003C42C 21100000 */   addu      $v0, $zero, $zero
/* 2CC30 8003C430 2120E002 */  addu       $a0, $s7, $zero
/* 2CC34 8003C434 FFFFA226 */  addiu      $v0, $s5, -0x1
/* 2CC38 8003C438 21885000 */  addu       $s1, $v0, $s0
/* 2CC3C 8003C43C 21282002 */  addu       $a1, $s1, $zero
/* 2CC40 8003C440 21308002 */  addu       $a2, $s4, $zero
/* 2CC44 8003C444 7BF0000C */  jal        CheckDoor
/* 2CC48 8003C448 21384002 */   addu      $a3, $s2, $zero
/* 2CC4C 8003C44C 81004014 */  bnez       $v0, .L8003C654
/* 2CC50 8003C450 21100000 */   addu      $v0, $zero, $zero
/* 2CC54 8003C454 2120E002 */  addu       $a0, $s7, $zero
/* 2CC58 8003C458 21286002 */  addu       $a1, $s3, $zero
/* 2CC5C 8003C45C 21308002 */  addu       $a2, $s4, $zero
/* 2CC60 8003C460 FFFFC226 */  addiu      $v0, $s6, -0x1
/* 2CC64 8003C464 21805000 */  addu       $s0, $v0, $s0
/* 2CC68 8003C468 7BF0000C */  jal        CheckDoor
/* 2CC6C 8003C46C 21380002 */   addu      $a3, $s0, $zero
/* 2CC70 8003C470 78004014 */  bnez       $v0, .L8003C654
/* 2CC74 8003C474 21100000 */   addu      $v0, $zero, $zero
/* 2CC78 8003C478 2120E002 */  addu       $a0, $s7, $zero
/* 2CC7C 8003C47C 21282002 */  addu       $a1, $s1, $zero
/* 2CC80 8003C480 21308002 */  addu       $a2, $s4, $zero
/* 2CC84 8003C484 7BF0000C */  jal        CheckDoor
/* 2CC88 8003C488 21380002 */   addu      $a3, $s0, $zero
/* 2CC8C 8003C48C 71004014 */  bnez       $v0, .L8003C654
/* 2CC90 8003C490 21100000 */   addu      $v0, $zero, $zero
/* 2CC94 8003C494 FF03C333 */  andi       $v1, $fp, 0x3FF
/* 2CC98 8003C498 FF030424 */  addiu      $a0, $zero, 0x3FF
/* 2CC9C 8003C49C 0100143C */  lui        $s4, (0x10000 >> 16)
/* 2CCA0 8003C4A0 9C148C8F */  lw         $t4, %gp_rel(yheight1)($gp)
/* 2CCA4 8003C4A4 A0148D8F */  lw         $t5, %gp_rel(yheight2)($gp)
/* 2CCA8 8003C4A8 A4148E8F */  lw         $t6, %gp_rel(yheight3)($gp)
/* 2CCAC 8003C4AC A8148F8F */  lw         $t7, %gp_rel(yheight4)($gp)
/* 2CCB0 8003C4B0 AC14828F */  lw         $v0, %gp_rel(yheight5)($gp)
/* 2CCB4 8003C4B4 04006410 */  beq        $v1, $a0, .L8003C4C8
/* 2CCB8 8003C4B8 FFFF0B24 */   addiu     $t3, $zero, -0x1
/* 2CCBC 8003C4BC 21A04000 */  addu       $s4, $v0, $zero
/* 2CCC0 8003C4C0 91F10008 */  j          .L8003C644
/* 2CCC4 8003C4C4 2158C003 */   addu      $t3, $fp, $zero
.L8003C4C8:
/* 2CCC8 8003C4C8 1000A28F */  lw         $v0, 0x10($sp)
/* 2CCCC 8003C4CC 00000000 */  nop
/* 2CCD0 8003C4D0 FF034730 */  andi       $a3, $v0, 0x3FF
/* 2CCD4 8003C4D4 0700E310 */  beq        $a3, $v1, .L8003C4F4
/* 2CCD8 8003C4D8 80100700 */   sll       $v0, $a3, 2
/* 2CCDC 8003C4DC 21104700 */  addu       $v0, $v0, $a3
/* 2CCE0 8003C4E0 0980033C */  lui        $v1, %hi(CellAttributesPtr)
/* 2CCE4 8003C4E4 6C50638C */  lw         $v1, %lo(CellAttributesPtr)($v1)
/* 2CCE8 8003C4E8 C0100200 */  sll        $v0, $v0, 3
/* 2CCEC 8003C4EC 3EF10008 */  j          .L8003C4F8
/* 2CCF0 8003C4F0 21506200 */   addu      $t2, $v1, $v0
.L8003C4F4:
/* 2CCF4 8003C4F4 21500000 */  addu       $t2, $zero, $zero
.L8003C4F8:
/* 2CCF8 8003C4F8 1400A38F */  lw         $v1, 0x14($sp)
/* 2CCFC 8003C4FC FF030224 */  addiu      $v0, $zero, 0x3FF
/* 2CD00 8003C500 FF036630 */  andi       $a2, $v1, 0x3FF
/* 2CD04 8003C504 0700C210 */  beq        $a2, $v0, .L8003C524
/* 2CD08 8003C508 80100600 */   sll       $v0, $a2, 2
/* 2CD0C 8003C50C 21104600 */  addu       $v0, $v0, $a2
/* 2CD10 8003C510 0980033C */  lui        $v1, %hi(CellAttributesPtr)
/* 2CD14 8003C514 6C50638C */  lw         $v1, %lo(CellAttributesPtr)($v1)
/* 2CD18 8003C518 C0100200 */  sll        $v0, $v0, 3
/* 2CD1C 8003C51C 4AF10008 */  j          .L8003C528
/* 2CD20 8003C520 21486200 */   addu      $t1, $v1, $v0
.L8003C524:
/* 2CD24 8003C524 21480000 */  addu       $t1, $zero, $zero
.L8003C528:
/* 2CD28 8003C528 1800A38F */  lw         $v1, 0x18($sp)
/* 2CD2C 8003C52C FF030224 */  addiu      $v0, $zero, 0x3FF
/* 2CD30 8003C530 FF036530 */  andi       $a1, $v1, 0x3FF
/* 2CD34 8003C534 0700A210 */  beq        $a1, $v0, .L8003C554
/* 2CD38 8003C538 80100500 */   sll       $v0, $a1, 2
/* 2CD3C 8003C53C 21104500 */  addu       $v0, $v0, $a1
/* 2CD40 8003C540 0980033C */  lui        $v1, %hi(CellAttributesPtr)
/* 2CD44 8003C544 6C50638C */  lw         $v1, %lo(CellAttributesPtr)($v1)
/* 2CD48 8003C548 C0100200 */  sll        $v0, $v0, 3
/* 2CD4C 8003C54C 56F10008 */  j          .L8003C558
/* 2CD50 8003C550 21406200 */   addu      $t0, $v1, $v0
.L8003C554:
/* 2CD54 8003C554 21400000 */  addu       $t0, $zero, $zero
.L8003C558:
/* 2CD58 8003C558 1C00A38F */  lw         $v1, 0x1C($sp)
/* 2CD5C 8003C55C FF030224 */  addiu      $v0, $zero, 0x3FF
/* 2CD60 8003C560 FF036430 */  andi       $a0, $v1, 0x3FF
/* 2CD64 8003C564 07008210 */  beq        $a0, $v0, .L8003C584
/* 2CD68 8003C568 80100400 */   sll       $v0, $a0, 2
/* 2CD6C 8003C56C 21104400 */  addu       $v0, $v0, $a0
/* 2CD70 8003C570 0980033C */  lui        $v1, %hi(CellAttributesPtr)
/* 2CD74 8003C574 6C50638C */  lw         $v1, %lo(CellAttributesPtr)($v1)
/* 2CD78 8003C578 C0100200 */  sll        $v0, $v0, 3
/* 2CD7C 8003C57C 62F10008 */  j          .L8003C588
/* 2CD80 8003C580 21186200 */   addu      $v1, $v1, $v0
.L8003C584:
/* 2CD84 8003C584 21180000 */  addu       $v1, $zero, $zero
.L8003C588:
/* 2CD88 8003C588 0800428D */  lw         $v0, 0x8($t2)
/* 2CD8C 8003C58C 00000000 */  nop
/* 2CD90 8003C590 00014230 */  andi       $v0, $v0, 0x100
/* 2CD94 8003C594 2B004014 */  bnez       $v0, .L8003C644
/* 2CD98 8003C598 00000000 */   nop
/* 2CD9C 8003C59C 0800228D */  lw         $v0, 0x8($t1)
/* 2CDA0 8003C5A0 00000000 */  nop
/* 2CDA4 8003C5A4 00014230 */  andi       $v0, $v0, 0x100
/* 2CDA8 8003C5A8 26004014 */  bnez       $v0, .L8003C644
/* 2CDAC 8003C5AC 00000000 */   nop
/* 2CDB0 8003C5B0 0800028D */  lw         $v0, 0x8($t0)
/* 2CDB4 8003C5B4 00000000 */  nop
/* 2CDB8 8003C5B8 00014230 */  andi       $v0, $v0, 0x100
/* 2CDBC 8003C5BC 21004014 */  bnez       $v0, .L8003C644
/* 2CDC0 8003C5C0 00000000 */   nop
/* 2CDC4 8003C5C4 0800628C */  lw         $v0, 0x8($v1)
/* 2CDC8 8003C5C8 00000000 */  nop
/* 2CDCC 8003C5CC 00014230 */  andi       $v0, $v0, 0x100
/* 2CDD0 8003C5D0 1C004014 */  bnez       $v0, .L8003C644
/* 2CDD4 8003C5D4 FF030224 */   addiu     $v0, $zero, 0x3FF
/* 2CDD8 8003C5D8 0500E210 */  beq        $a3, $v0, .L8003C5F0
/* 2CDDC 8003C5DC 2A108C02 */   slt       $v0, $s4, $t4
/* 2CDE0 8003C5E0 04004014 */  bnez       $v0, .L8003C5F4
/* 2CDE4 8003C5E4 FF030224 */   addiu     $v0, $zero, 0x3FF
/* 2CDE8 8003C5E8 21A08001 */  addu       $s4, $t4, $zero
/* 2CDEC 8003C5EC 1000AB8F */  lw         $t3, 0x10($sp)
.L8003C5F0:
/* 2CDF0 8003C5F0 FF030224 */  addiu      $v0, $zero, 0x3FF
.L8003C5F4:
/* 2CDF4 8003C5F4 0500C210 */  beq        $a2, $v0, .L8003C60C
/* 2CDF8 8003C5F8 2A108D02 */   slt       $v0, $s4, $t5
/* 2CDFC 8003C5FC 04004014 */  bnez       $v0, .L8003C610
/* 2CE00 8003C600 FF030224 */   addiu     $v0, $zero, 0x3FF
/* 2CE04 8003C604 21A0A001 */  addu       $s4, $t5, $zero
/* 2CE08 8003C608 1400AB8F */  lw         $t3, 0x14($sp)
.L8003C60C:
/* 2CE0C 8003C60C FF030224 */  addiu      $v0, $zero, 0x3FF
.L8003C610:
/* 2CE10 8003C610 0500A210 */  beq        $a1, $v0, .L8003C628
/* 2CE14 8003C614 2A108E02 */   slt       $v0, $s4, $t6
/* 2CE18 8003C618 04004014 */  bnez       $v0, .L8003C62C
/* 2CE1C 8003C61C FF030224 */   addiu     $v0, $zero, 0x3FF
/* 2CE20 8003C620 21A0C001 */  addu       $s4, $t6, $zero
/* 2CE24 8003C624 1800AB8F */  lw         $t3, 0x18($sp)
.L8003C628:
/* 2CE28 8003C628 FF030224 */  addiu      $v0, $zero, 0x3FF
.L8003C62C:
/* 2CE2C 8003C62C 05008210 */  beq        $a0, $v0, .L8003C644
/* 2CE30 8003C630 2A108F02 */   slt       $v0, $s4, $t7
/* 2CE34 8003C634 03004014 */  bnez       $v0, .L8003C644
/* 2CE38 8003C638 00000000 */   nop
/* 2CE3C 8003C63C 21A0E001 */  addu       $s4, $t7, $zero
/* 2CE40 8003C640 1C00AB8F */  lw         $t3, 0x1C($sp)
.L8003C644:
/* 2CE44 8003C644 5400A28F */  lw         $v0, 0x54($sp)
/* 2CE48 8003C648 00000000 */  nop
/* 2CE4C 8003C64C 000054AC */  sw         $s4, 0x0($v0)
/* 2CE50 8003C650 21106001 */  addu       $v0, $t3, $zero
.L8003C654:
/* 2CE54 8003C654 4400BF8F */  lw         $ra, 0x44($sp)
/* 2CE58 8003C658 4000BE8F */  lw         $fp, 0x40($sp)
/* 2CE5C 8003C65C 3C00B78F */  lw         $s7, 0x3C($sp)
/* 2CE60 8003C660 3800B68F */  lw         $s6, 0x38($sp)
/* 2CE64 8003C664 3400B58F */  lw         $s5, 0x34($sp)
/* 2CE68 8003C668 3000B48F */  lw         $s4, 0x30($sp)
/* 2CE6C 8003C66C 2C00B38F */  lw         $s3, 0x2C($sp)
/* 2CE70 8003C670 2800B28F */  lw         $s2, 0x28($sp)
/* 2CE74 8003C674 2400B18F */  lw         $s1, 0x24($sp)
/* 2CE78 8003C678 2000B08F */  lw         $s0, 0x20($sp)
/* 2CE7C 8003C67C 0800E003 */  jr         $ra
/* 2CE80 8003C680 4800BD27 */   addiu     $sp, $sp, 0x48
.size CheckCollisionCelHeight4, . - CheckCollisionCelHeight4
