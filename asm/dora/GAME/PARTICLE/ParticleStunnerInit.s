.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleStunnerInit
/* 1D344 8002CB44 A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 1D348 8002CB48 4400B5AF */  sw         $s5, 0x44($sp)
/* 1D34C 8002CB4C 21A88000 */  addu       $s5, $a0, $zero
/* 1D350 8002CB50 5400BFAF */  sw         $ra, 0x54($sp)
/* 1D354 8002CB54 5000BEAF */  sw         $fp, 0x50($sp)
/* 1D358 8002CB58 4C00B7AF */  sw         $s7, 0x4C($sp)
/* 1D35C 8002CB5C 4800B6AF */  sw         $s6, 0x48($sp)
/* 1D360 8002CB60 4000B4AF */  sw         $s4, 0x40($sp)
/* 1D364 8002CB64 3C00B3AF */  sw         $s3, 0x3C($sp)
/* 1D368 8002CB68 3800B2AF */  sw         $s2, 0x38($sp)
/* 1D36C 8002CB6C 3400B1AF */  sw         $s1, 0x34($sp)
/* 1D370 8002CB70 3000B0AF */  sw         $s0, 0x30($sp)
/* 1D374 8002CB74 1000A5AF */  sw         $a1, 0x10($sp)
/* 1D378 8002CB78 1400A6AF */  sw         $a2, 0x14($sp)
/* 1D37C 8002CB7C 1800A7AF */  sw         $a3, 0x18($sp)
/* 1D380 8002CB80 4000B48E */  lw         $s4, 0x40($s5)
/* 1D384 8002CB84 80000224 */  addiu      $v0, $zero, 0x80
/* 1D388 8002CB88 C41382AF */  sw         $v0, %gp_rel(TEMPR)($gp)
/* 1D38C 8002CB8C C01382AF */  sw         $v0, %gp_rel(TEMPG)($gp)
/* 1D390 8002CB90 BC1382AF */  sw         $v0, %gp_rel(TEMPB)($gp)
/* 1D394 8002CB94 FF0F0224 */  addiu      $v0, $zero, 0xFFF
/* 1D398 8002CB98 3400A2AE */  sw         $v0, 0x34($s5)
/* 1D39C 8002CB9C 3C00A2AE */  sw         $v0, 0x3C($s5)
/* 1D3A0 8002CBA0 12000224 */  addiu      $v0, $zero, 0x12
/* 1D3A4 8002CBA4 3000A0AE */  sw         $zero, 0x30($s5)
/* 1D3A8 8002CBA8 3800A0AE */  sw         $zero, 0x38($s5)
/* 1D3AC 8002CBAC 0C00A2AE */  sw         $v0, 0xC($s5)
/* 1D3B0 8002CBB0 1000A38F */  lw         $v1, 0x10($sp)
/* 1D3B4 8002CBB4 00000000 */  nop
/* 1D3B8 8002CBB8 2400A3AE */  sw         $v1, 0x24($s5)
/* 1D3BC 8002CBBC 1400A28F */  lw         $v0, 0x14($sp)
/* 1D3C0 8002CBC0 00000000 */  nop
/* 1D3C4 8002CBC4 2800A2AE */  sw         $v0, 0x28($s5)
/* 1D3C8 8002CBC8 1800A38F */  lw         $v1, 0x18($sp)
/* 1D3CC 8002CBCC C8000224 */  addiu      $v0, $zero, 0xC8
/* 1D3D0 8002CBD0 4A00A2A6 */  sh         $v0, 0x4A($s5)
/* 1D3D4 8002CBD4 0400A28E */  lw         $v0, 0x4($s5)
/* 1D3D8 8002CBD8 00000000 */  nop
/* 1D3DC 8002CBDC 04004014 */  bnez       $v0, .L8002CBF0
/* 1D3E0 8002CBE0 2C00A3AE */   sw        $v1, 0x2C($s5)
/* 1D3E4 8002CBE4 1000A0AF */  sw         $zero, 0x10($sp)
/* 1D3E8 8002CBE8 1400A0AF */  sw         $zero, 0x14($sp)
/* 1D3EC 8002CBEC 1800A0AF */  sw         $zero, 0x18($sp)
.L8002CBF0:
/* 1D3F0 8002CBF0 0800A28E */  lw         $v0, 0x8($s5)
/* 1D3F4 8002CBF4 00000000 */  nop
/* 1D3F8 8002CBF8 90004018 */  blez       $v0, .L8002CE3C
/* 1D3FC 8002CBFC 21880000 */   addu      $s1, $zero, $zero
.L8002CC00:
/* 1D400 8002CC00 D140010C */  jal        u32Random
/* 1D404 8002CC04 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1D408 8002CC08 21804000 */  addu       $s0, $v0, $zero
/* 1D40C 8002CC0C D140010C */  jal        u32Random
/* 1D410 8002CC10 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1D414 8002CC14 21984000 */  addu       $s3, $v0, $zero
/* 1D418 8002CC18 21100000 */  addu       $v0, $zero, $zero
/* 1D41C 8002CC1C FF0F0324 */  addiu      $v1, $zero, 0xFFF
/* 1D420 8002CC20 1E004310 */  beq        $v0, $v1, .L8002CC9C
/* 1D424 8002CC24 00000000 */   nop
/* 1D428 8002CC28 1000A28F */  lw         $v0, 0x10($sp)
/* 1D42C 8002CC2C 1400A38F */  lw         $v1, 0x14($sp)
/* 1D430 8002CC30 01003126 */  addiu      $s1, $s1, 0x1
/* 1D434 8002CC34 2800B1AF */  sw         $s1, 0x28($sp)
/* 1D438 8002CC38 00F20200 */  sll        $fp, $v0, 8
/* 1D43C 8002CC3C 00BA0300 */  sll        $s7, $v1, 8
/* 1D440 8002CC40 1800A28F */  lw         $v0, 0x18($sp)
/* 1D444 8002CC44 1C008326 */  addiu      $v1, $s4, 0x1C
/* 1D448 8002CC48 1C00A3AF */  sw         $v1, 0x1C($sp)
/* 1D44C 8002CC4C 74008326 */  addiu      $v1, $s4, 0x74
/* 1D450 8002CC50 2000A3AF */  sw         $v1, 0x20($sp)
/* 1D454 8002CC54 00B20200 */  sll        $s6, $v0, 8
/* 1D458 8002CC58 44008226 */  addiu      $v0, $s4, 0x44
/* 1D45C 8002CC5C 05000006 */  bltz       $s0, .L8002CC74
/* 1D460 8002CC60 2400A2AF */   sw        $v0, 0x24($sp)
/* 1D464 8002CC64 FF0F0324 */  addiu      $v1, $zero, 0xFFF
/* 1D468 8002CC68 2A107000 */  slt        $v0, $v1, $s0
/* 1D46C 8002CC6C 1C004010 */  beqz       $v0, .L8002CCE0
/* 1D470 8002CC70 21100000 */   addu      $v0, $zero, $zero
.L8002CC74:
/* 1D474 8002CC74 D140010C */  jal        u32Random
/* 1D478 8002CC78 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1D47C 8002CC7C 21804000 */  addu       $s0, $v0, $zero
/* 1D480 8002CC80 FCFF0006 */  bltz       $s0, .L8002CC74
/* 1D484 8002CC84 FF0F0324 */   addiu     $v1, $zero, 0xFFF
/* 1D488 8002CC88 2A107000 */  slt        $v0, $v1, $s0
/* 1D48C 8002CC8C F9FF4014 */  bnez       $v0, .L8002CC74
/* 1D490 8002CC90 21100000 */   addu      $v0, $zero, $zero
/* 1D494 8002CC94 38B30008 */  j          .L8002CCE0
/* 1D498 8002CC98 00000000 */   nop
.L8002CC9C:
/* 1D49C 8002CC9C 21800000 */  addu       $s0, $zero, $zero
/* 1D4A0 8002CCA0 1000A28F */  lw         $v0, 0x10($sp)
/* 1D4A4 8002CCA4 1400A38F */  lw         $v1, 0x14($sp)
/* 1D4A8 8002CCA8 01003126 */  addiu      $s1, $s1, 0x1
/* 1D4AC 8002CCAC 2800B1AF */  sw         $s1, 0x28($sp)
/* 1D4B0 8002CCB0 00F20200 */  sll        $fp, $v0, 8
/* 1D4B4 8002CCB4 00BA0300 */  sll        $s7, $v1, 8
/* 1D4B8 8002CCB8 1800A28F */  lw         $v0, 0x18($sp)
/* 1D4BC 8002CCBC 1C008326 */  addiu      $v1, $s4, 0x1C
/* 1D4C0 8002CCC0 1C00A3AF */  sw         $v1, 0x1C($sp)
/* 1D4C4 8002CCC4 74008326 */  addiu      $v1, $s4, 0x74
/* 1D4C8 8002CCC8 2000A3AF */  sw         $v1, 0x20($sp)
/* 1D4CC 8002CCCC 00B20200 */  sll        $s6, $v0, 8
/* 1D4D0 8002CCD0 44008226 */  addiu      $v0, $s4, 0x44
/* 1D4D4 8002CCD4 2400A2AF */  sw         $v0, 0x24($sp)
/* 1D4D8 8002CCD8 21100000 */  addu       $v0, $zero, $zero
/* 1D4DC 8002CCDC FF0F0324 */  addiu      $v1, $zero, 0xFFF
.L8002CCE0:
/* 1D4E0 8002CCE0 0F004310 */  beq        $v0, $v1, .L8002CD20
/* 1D4E4 8002CCE4 00000000 */   nop
/* 1D4E8 8002CCE8 03006006 */  bltz       $s3, .L8002CCF8
/* 1D4EC 8002CCEC 2A107300 */   slt       $v0, $v1, $s3
/* 1D4F0 8002CCF0 0C004010 */  beqz       $v0, .L8002CD24
/* 1D4F4 8002CCF4 00000000 */   nop
.L8002CCF8:
/* 1D4F8 8002CCF8 D140010C */  jal        u32Random
/* 1D4FC 8002CCFC FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1D500 8002CD00 21984000 */  addu       $s3, $v0, $zero
/* 1D504 8002CD04 FCFF6006 */  bltz       $s3, .L8002CCF8
/* 1D508 8002CD08 FF0F0324 */   addiu     $v1, $zero, 0xFFF
/* 1D50C 8002CD0C 2A107300 */  slt        $v0, $v1, $s3
/* 1D510 8002CD10 F9FF4014 */  bnez       $v0, .L8002CCF8
/* 1D514 8002CD14 00000000 */   nop
/* 1D518 8002CD18 49B30008 */  j          .L8002CD24
/* 1D51C 8002CD1C 00000000 */   nop
.L8002CD20:
/* 1D520 8002CD20 21980000 */  addu       $s3, $zero, $zero
.L8002CD24:
/* 1D524 8002CD24 7BEB010C */  jal        rcos
/* 1D528 8002CD28 21200002 */   addu      $a0, $s0, $zero
/* 1D52C 8002CD2C 21200002 */  addu       $a0, $s0, $zero
/* 1D530 8002CD30 47EB010C */  jal        rsin
/* 1D534 8002CD34 21904000 */   addu      $s2, $v0, $zero
/* 1D538 8002CD38 21206002 */  addu       $a0, $s3, $zero
/* 1D53C 8002CD3C 7BEB010C */  jal        rcos
/* 1D540 8002CD40 21884000 */   addu      $s1, $v0, $zero
/* 1D544 8002CD44 21206002 */  addu       $a0, $s3, $zero
/* 1D548 8002CD48 47EB010C */  jal        rsin
/* 1D54C 8002CD4C 21804000 */   addu      $s0, $v0, $zero
/* 1D550 8002CD50 18003002 */  mult       $s1, $s0
/* 1D554 8002CD54 12880000 */  mflo       $s1
/* 1D558 8002CD58 00000000 */  nop
/* 1D55C 8002CD5C 00000000 */  nop
/* 1D560 8002CD60 18005002 */  mult       $s2, $s0
/* 1D564 8002CD64 12900000 */  mflo       $s2
/* 1D568 8002CD68 05000324 */  addiu      $v1, $zero, 0x5
/* 1D56C 8002CD6C 038B1100 */  sra        $s1, $s1, 12
/* 1D570 8002CD70 18002302 */  mult       $s1, $v1
/* 1D574 8002CD74 12880000 */  mflo       $s1
/* 1D578 8002CD78 00000000 */  nop
/* 1D57C 8002CD7C 00000000 */  nop
/* 1D580 8002CD80 18004300 */  mult       $v0, $v1
/* 1D584 8002CD84 12800000 */  mflo       $s0
/* 1D588 8002CD88 03931200 */  sra        $s2, $s2, 12
/* 1D58C 8002CD8C 00000000 */  nop
/* 1D590 8002CD90 18004302 */  mult       $s2, $v1
/* 1D594 8002CD94 06000424 */  addiu      $a0, $zero, 0x6
/* 1D598 8002CD98 03891100 */  sra        $s1, $s1, 4
/* 1D59C 8002CD9C 03811000 */  sra        $s0, $s0, 4
/* 1D5A0 8002CDA0 12900000 */  mflo       $s2
/* 1D5A4 8002CDA4 D140010C */  jal        u32Random
/* 1D5A8 8002CDA8 03911200 */   sra       $s2, $s2, 4
/* 1D5AC 8002CDAC 01000324 */  addiu      $v1, $zero, 0x1
/* 1D5B0 8002CDB0 000083A6 */  sh         $v1, 0x0($s4)
/* 1D5B4 8002CDB4 12000324 */  addiu      $v1, $zero, 0x12
/* 1D5B8 8002CDB8 23106200 */  subu       $v0, $v1, $v0
/* 1D5BC 8002CDBC 04009EAE */  sw         $fp, 0x4($s4)
/* 1D5C0 8002CDC0 080097AE */  sw         $s7, 0x8($s4)
/* 1D5C4 8002CDC4 0C0096AE */  sw         $s6, 0xC($s4)
/* 1D5C8 8002CDC8 100091AE */  sw         $s1, 0x10($s4)
/* 1D5CC 8002CDCC 140090AE */  sw         $s0, 0x14($s4)
/* 1D5D0 8002CDD0 180092AE */  sw         $s2, 0x18($s4)
/* 1D5D4 8002CDD4 020082A6 */  sh         $v0, 0x2($s4)
/* 1D5D8 8002CDD8 4C00A392 */  lbu        $v1, 0x4C($s5)
/* 1D5DC 8002CDDC 1C00A58F */  lw         $a1, 0x1C($sp)
/* 1D5E0 8002CDE0 00000000 */  nop
/* 1D5E4 8002CDE4 0400A3A0 */  sb         $v1, 0x4($a1)
/* 1D5E8 8002CDE8 4D00A292 */  lbu        $v0, 0x4D($s5)
/* 1D5EC 8002CDEC 00000000 */  nop
/* 1D5F0 8002CDF0 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1D5F4 8002CDF4 4E00A392 */  lbu        $v1, 0x4E($s5)
/* 1D5F8 8002CDF8 00000000 */  nop
/* 1D5FC 8002CDFC 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1D600 8002CE00 4C00A492 */  lbu        $a0, 0x4C($s5)
/* 1D604 8002CE04 2400A58F */  lw         $a1, 0x24($sp)
/* 1D608 8002CE08 00000000 */  nop
/* 1D60C 8002CE0C 0400A4A0 */  sb         $a0, 0x4($a1)
/* 1D610 8002CE10 4D00A292 */  lbu        $v0, 0x4D($s5)
/* 1D614 8002CE14 00000000 */  nop
/* 1D618 8002CE18 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1D61C 8002CE1C 4E00A392 */  lbu        $v1, 0x4E($s5)
/* 1D620 8002CE20 2800B18F */  lw         $s1, 0x28($sp)
/* 1D624 8002CE24 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1D628 8002CE28 0800A28E */  lw         $v0, 0x8($s5)
/* 1D62C 8002CE2C 2000B48F */  lw         $s4, 0x20($sp)
/* 1D630 8002CE30 2A102202 */  slt        $v0, $s1, $v0
/* 1D634 8002CE34 72FF4014 */  bnez       $v0, .L8002CC00
/* 1D638 8002CE38 00000000 */   nop
.L8002CE3C:
/* 1D63C 8002CE3C 5400BF8F */  lw         $ra, 0x54($sp)
/* 1D640 8002CE40 5000BE8F */  lw         $fp, 0x50($sp)
/* 1D644 8002CE44 4C00B78F */  lw         $s7, 0x4C($sp)
/* 1D648 8002CE48 4800B68F */  lw         $s6, 0x48($sp)
/* 1D64C 8002CE4C 0000A0AE */  sw         $zero, 0x0($s5)
/* 1D650 8002CE50 4400B58F */  lw         $s5, 0x44($sp)
/* 1D654 8002CE54 4000B48F */  lw         $s4, 0x40($sp)
/* 1D658 8002CE58 3C00B38F */  lw         $s3, 0x3C($sp)
/* 1D65C 8002CE5C 3800B28F */  lw         $s2, 0x38($sp)
/* 1D660 8002CE60 3400B18F */  lw         $s1, 0x34($sp)
/* 1D664 8002CE64 3000B08F */  lw         $s0, 0x30($sp)
/* 1D668 8002CE68 0800E003 */  jr         $ra
/* 1D66C 8002CE6C 5800BD27 */   addiu     $sp, $sp, 0x58
.size ParticleStunnerInit, . - ParticleStunnerInit
