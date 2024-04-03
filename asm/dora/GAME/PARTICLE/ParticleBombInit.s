.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleBombInit
/* 1CBE8 8002C3E8 A0FFBD27 */  addiu      $sp, $sp, -0x60
/* 1CBEC 8002C3EC 5400B7AF */  sw         $s7, 0x54($sp)
/* 1CBF0 8002C3F0 21B88000 */  addu       $s7, $a0, $zero
/* 1CBF4 8002C3F4 FF000324 */  addiu      $v1, $zero, 0xFF
/* 1CBF8 8002C3F8 5C00BFAF */  sw         $ra, 0x5C($sp)
/* 1CBFC 8002C3FC 5800BEAF */  sw         $fp, 0x58($sp)
/* 1CC00 8002C400 5000B6AF */  sw         $s6, 0x50($sp)
/* 1CC04 8002C404 4C00B5AF */  sw         $s5, 0x4C($sp)
/* 1CC08 8002C408 4800B4AF */  sw         $s4, 0x48($sp)
/* 1CC0C 8002C40C 4400B3AF */  sw         $s3, 0x44($sp)
/* 1CC10 8002C410 4000B2AF */  sw         $s2, 0x40($sp)
/* 1CC14 8002C414 3C00B1AF */  sw         $s1, 0x3C($sp)
/* 1CC18 8002C418 3800B0AF */  sw         $s0, 0x38($sp)
/* 1CC1C 8002C41C 1000A5AF */  sw         $a1, 0x10($sp)
/* 1CC20 8002C420 1400A6AF */  sw         $a2, 0x14($sp)
/* 1CC24 8002C424 1800A7AF */  sw         $a3, 0x18($sp)
/* 1CC28 8002C428 4000F68E */  lw         $s6, 0x40($s7)
/* 1CC2C 8002C42C 44000224 */  addiu      $v0, $zero, 0x44
/* 1CC30 8002C430 BC1382AF */  sw         $v0, %gp_rel(TEMPB)($gp)
/* 1CC34 8002C434 FF0F0224 */  addiu      $v0, $zero, 0xFFF
/* 1CC38 8002C438 C41383AF */  sw         $v1, %gp_rel(TEMPR)($gp)
/* 1CC3C 8002C43C C01383AF */  sw         $v1, %gp_rel(TEMPG)($gp)
/* 1CC40 8002C440 3400E2AE */  sw         $v0, 0x34($s7)
/* 1CC44 8002C444 3C00E2AE */  sw         $v0, 0x3C($s7)
/* 1CC48 8002C448 14000224 */  addiu      $v0, $zero, 0x14
/* 1CC4C 8002C44C 3000E0AE */  sw         $zero, 0x30($s7)
/* 1CC50 8002C450 3800E0AE */  sw         $zero, 0x38($s7)
/* 1CC54 8002C454 0C00E2AE */  sw         $v0, 0xC($s7)
/* 1CC58 8002C458 1000A38F */  lw         $v1, 0x10($sp)
/* 1CC5C 8002C45C 00000000 */  nop
/* 1CC60 8002C460 2400E3AE */  sw         $v1, 0x24($s7)
/* 1CC64 8002C464 1400A28F */  lw         $v0, 0x14($sp)
/* 1CC68 8002C468 00000000 */  nop
/* 1CC6C 8002C46C 2800E2AE */  sw         $v0, 0x28($s7)
/* 1CC70 8002C470 1800A38F */  lw         $v1, 0x18($sp)
/* 1CC74 8002C474 C8000224 */  addiu      $v0, $zero, 0xC8
/* 1CC78 8002C478 4A00E2A6 */  sh         $v0, 0x4A($s7)
/* 1CC7C 8002C47C 0400E28E */  lw         $v0, 0x4($s7)
/* 1CC80 8002C480 00000000 */  nop
/* 1CC84 8002C484 04004014 */  bnez       $v0, .L8002C498
/* 1CC88 8002C488 2C00E3AE */   sw        $v1, 0x2C($s7)
/* 1CC8C 8002C48C 1000A0AF */  sw         $zero, 0x10($sp)
/* 1CC90 8002C490 1400A0AF */  sw         $zero, 0x14($sp)
/* 1CC94 8002C494 1800A0AF */  sw         $zero, 0x18($sp)
.L8002C498:
/* 1CC98 8002C498 0800E28E */  lw         $v0, 0x8($s7)
/* 1CC9C 8002C49C 00000000 */  nop
/* 1CCA0 8002C4A0 A8004018 */  blez       $v0, .L8002C744
/* 1CCA4 8002C4A4 21880000 */   addu      $s1, $zero, $zero
.L8002C4A8:
/* 1CCA8 8002C4A8 D140010C */  jal        u32Random
/* 1CCAC 8002C4AC FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1CCB0 8002C4B0 21804000 */  addu       $s0, $v0, $zero
/* 1CCB4 8002C4B4 D140010C */  jal        u32Random
/* 1CCB8 8002C4B8 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1CCBC 8002C4BC 21984000 */  addu       $s3, $v0, $zero
/* 1CCC0 8002C4C0 21100000 */  addu       $v0, $zero, $zero
/* 1CCC4 8002C4C4 FF0F0324 */  addiu      $v1, $zero, 0xFFF
/* 1CCC8 8002C4C8 20004310 */  beq        $v0, $v1, .L8002C54C
/* 1CCCC 8002C4CC 00000000 */   nop
/* 1CCD0 8002C4D0 1000A28F */  lw         $v0, 0x10($sp)
/* 1CCD4 8002C4D4 1400A38F */  lw         $v1, 0x14($sp)
/* 1CCD8 8002C4D8 01003126 */  addiu      $s1, $s1, 0x1
/* 1CCDC 8002C4DC 2000B1AF */  sw         $s1, 0x20($sp)
/* 1CCE0 8002C4E0 00F20200 */  sll        $fp, $v0, 8
/* 1CCE4 8002C4E4 1800A28F */  lw         $v0, 0x18($sp)
/* 1CCE8 8002C4E8 001A0300 */  sll        $v1, $v1, 8
/* 1CCEC 8002C4EC 2400A3AF */  sw         $v1, 0x24($sp)
/* 1CCF0 8002C4F0 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1CCF4 8002C4F4 2C00A3AF */  sw         $v1, 0x2C($sp)
/* 1CCF8 8002C4F8 7400C326 */  addiu      $v1, $s6, 0x74
/* 1CCFC 8002C4FC 3000A3AF */  sw         $v1, 0x30($sp)
/* 1CD00 8002C500 00120200 */  sll        $v0, $v0, 8
/* 1CD04 8002C504 2800A2AF */  sw         $v0, 0x28($sp)
/* 1CD08 8002C508 4400C226 */  addiu      $v0, $s6, 0x44
/* 1CD0C 8002C50C 05000006 */  bltz       $s0, .L8002C524
/* 1CD10 8002C510 1C00A2AF */   sw        $v0, 0x1C($sp)
/* 1CD14 8002C514 FF0F0324 */  addiu      $v1, $zero, 0xFFF
/* 1CD18 8002C518 2A107000 */  slt        $v0, $v1, $s0
/* 1CD1C 8002C51C 1E004010 */  beqz       $v0, .L8002C598
/* 1CD20 8002C520 21100000 */   addu      $v0, $zero, $zero
.L8002C524:
/* 1CD24 8002C524 D140010C */  jal        u32Random
/* 1CD28 8002C528 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1CD2C 8002C52C 21804000 */  addu       $s0, $v0, $zero
/* 1CD30 8002C530 FCFF0006 */  bltz       $s0, .L8002C524
/* 1CD34 8002C534 FF0F0324 */   addiu     $v1, $zero, 0xFFF
/* 1CD38 8002C538 2A107000 */  slt        $v0, $v1, $s0
/* 1CD3C 8002C53C F9FF4014 */  bnez       $v0, .L8002C524
/* 1CD40 8002C540 21100000 */   addu      $v0, $zero, $zero
/* 1CD44 8002C544 66B10008 */  j          .L8002C598
/* 1CD48 8002C548 00000000 */   nop
.L8002C54C:
/* 1CD4C 8002C54C 21800000 */  addu       $s0, $zero, $zero
/* 1CD50 8002C550 1000A28F */  lw         $v0, 0x10($sp)
/* 1CD54 8002C554 1400A38F */  lw         $v1, 0x14($sp)
/* 1CD58 8002C558 01003126 */  addiu      $s1, $s1, 0x1
/* 1CD5C 8002C55C 2000B1AF */  sw         $s1, 0x20($sp)
/* 1CD60 8002C560 00F20200 */  sll        $fp, $v0, 8
/* 1CD64 8002C564 1800A28F */  lw         $v0, 0x18($sp)
/* 1CD68 8002C568 001A0300 */  sll        $v1, $v1, 8
/* 1CD6C 8002C56C 2400A3AF */  sw         $v1, 0x24($sp)
/* 1CD70 8002C570 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1CD74 8002C574 2C00A3AF */  sw         $v1, 0x2C($sp)
/* 1CD78 8002C578 7400C326 */  addiu      $v1, $s6, 0x74
/* 1CD7C 8002C57C 3000A3AF */  sw         $v1, 0x30($sp)
/* 1CD80 8002C580 00120200 */  sll        $v0, $v0, 8
/* 1CD84 8002C584 2800A2AF */  sw         $v0, 0x28($sp)
/* 1CD88 8002C588 4400C226 */  addiu      $v0, $s6, 0x44
/* 1CD8C 8002C58C 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 1CD90 8002C590 21100000 */  addu       $v0, $zero, $zero
/* 1CD94 8002C594 FF0F0324 */  addiu      $v1, $zero, 0xFFF
.L8002C598:
/* 1CD98 8002C598 0F004310 */  beq        $v0, $v1, .L8002C5D8
/* 1CD9C 8002C59C 00000000 */   nop
/* 1CDA0 8002C5A0 03006006 */  bltz       $s3, .L8002C5B0
/* 1CDA4 8002C5A4 2A107300 */   slt       $v0, $v1, $s3
/* 1CDA8 8002C5A8 0C004010 */  beqz       $v0, .L8002C5DC
/* 1CDAC 8002C5AC 00000000 */   nop
.L8002C5B0:
/* 1CDB0 8002C5B0 D140010C */  jal        u32Random
/* 1CDB4 8002C5B4 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1CDB8 8002C5B8 21984000 */  addu       $s3, $v0, $zero
/* 1CDBC 8002C5BC FCFF6006 */  bltz       $s3, .L8002C5B0
/* 1CDC0 8002C5C0 FF0F0324 */   addiu     $v1, $zero, 0xFFF
/* 1CDC4 8002C5C4 2A107300 */  slt        $v0, $v1, $s3
/* 1CDC8 8002C5C8 F9FF4014 */  bnez       $v0, .L8002C5B0
/* 1CDCC 8002C5CC 00000000 */   nop
/* 1CDD0 8002C5D0 77B10008 */  j          .L8002C5DC
/* 1CDD4 8002C5D4 00000000 */   nop
.L8002C5D8:
/* 1CDD8 8002C5D8 21980000 */  addu       $s3, $zero, $zero
.L8002C5DC:
/* 1CDDC 8002C5DC 7BEB010C */  jal        rcos
/* 1CDE0 8002C5E0 21200002 */   addu      $a0, $s0, $zero
/* 1CDE4 8002C5E4 21200002 */  addu       $a0, $s0, $zero
/* 1CDE8 8002C5E8 47EB010C */  jal        rsin
/* 1CDEC 8002C5EC 21904000 */   addu      $s2, $v0, $zero
/* 1CDF0 8002C5F0 21206002 */  addu       $a0, $s3, $zero
/* 1CDF4 8002C5F4 7BEB010C */  jal        rcos
/* 1CDF8 8002C5F8 21884000 */   addu      $s1, $v0, $zero
/* 1CDFC 8002C5FC 21206002 */  addu       $a0, $s3, $zero
/* 1CE00 8002C600 47EB010C */  jal        rsin
/* 1CE04 8002C604 21804000 */   addu      $s0, $v0, $zero
/* 1CE08 8002C608 18003002 */  mult       $s1, $s0
/* 1CE0C 8002C60C 12880000 */  mflo       $s1
/* 1CE10 8002C610 00000000 */  nop
/* 1CE14 8002C614 00000000 */  nop
/* 1CE18 8002C618 18005002 */  mult       $s2, $s0
/* 1CE1C 8002C61C 12900000 */  mflo       $s2
/* 1CE20 8002C620 2C000324 */  addiu      $v1, $zero, 0x2C
/* 1CE24 8002C624 038B1100 */  sra        $s1, $s1, 12
/* 1CE28 8002C628 18002302 */  mult       $s1, $v1
/* 1CE2C 8002C62C 12A80000 */  mflo       $s5
/* 1CE30 8002C630 21A04000 */  addu       $s4, $v0, $zero
/* 1CE34 8002C634 00000000 */  nop
/* 1CE38 8002C638 18008302 */  mult       $s4, $v1
/* 1CE3C 8002C63C 12980000 */  mflo       $s3
/* 1CE40 8002C640 03931200 */  sra        $s2, $s2, 12
/* 1CE44 8002C644 00000000 */  nop
/* 1CE48 8002C648 18004302 */  mult       $s2, $v1
/* 1CE4C 8002C64C 12800000 */  mflo       $s0
/* 1CE50 8002C650 14000224 */  addiu      $v0, $zero, 0x14
/* 1CE54 8002C654 00000000 */  nop
/* 1CE58 8002C658 18002202 */  mult       $s1, $v0
/* 1CE5C 8002C65C 12880000 */  mflo       $s1
/* 1CE60 8002C660 00000000 */  nop
/* 1CE64 8002C664 00000000 */  nop
/* 1CE68 8002C668 18008202 */  mult       $s4, $v0
/* 1CE6C 8002C66C 12A00000 */  mflo       $s4
/* 1CE70 8002C670 00000000 */  nop
/* 1CE74 8002C674 00000000 */  nop
/* 1CE78 8002C678 18004202 */  mult       $s2, $v0
/* 1CE7C 8002C67C 04000424 */  addiu      $a0, $zero, 0x4
/* 1CE80 8002C680 03A91500 */  sra        $s5, $s5, 4
/* 1CE84 8002C684 21A8D503 */  addu       $s5, $fp, $s5
/* 1CE88 8002C688 03991300 */  sra        $s3, $s3, 4
/* 1CE8C 8002C68C 2800A38F */  lw         $v1, 0x28($sp)
/* 1CE90 8002C690 03811000 */  sra        $s0, $s0, 4
/* 1CE94 8002C694 21807000 */  addu       $s0, $v1, $s0
/* 1CE98 8002C698 03891100 */  sra        $s1, $s1, 4
/* 1CE9C 8002C69C 2400A28F */  lw         $v0, 0x24($sp)
/* 1CEA0 8002C6A0 03A11400 */  sra        $s4, $s4, 4
/* 1CEA4 8002C6A4 21985300 */  addu       $s3, $v0, $s3
/* 1CEA8 8002C6A8 12900000 */  mflo       $s2
/* 1CEAC 8002C6AC D140010C */  jal        u32Random
/* 1CEB0 8002C6B0 03911200 */   sra       $s2, $s2, 4
/* 1CEB4 8002C6B4 01000324 */  addiu      $v1, $zero, 0x1
/* 1CEB8 8002C6B8 0000C3A6 */  sh         $v1, 0x0($s6)
/* 1CEBC 8002C6BC 14000324 */  addiu      $v1, $zero, 0x14
/* 1CEC0 8002C6C0 23106200 */  subu       $v0, $v1, $v0
/* 1CEC4 8002C6C4 0400D5AE */  sw         $s5, 0x4($s6)
/* 1CEC8 8002C6C8 0800D3AE */  sw         $s3, 0x8($s6)
/* 1CECC 8002C6CC 0C00D0AE */  sw         $s0, 0xC($s6)
/* 1CED0 8002C6D0 1000D1AE */  sw         $s1, 0x10($s6)
/* 1CED4 8002C6D4 1400D4AE */  sw         $s4, 0x14($s6)
/* 1CED8 8002C6D8 1800D2AE */  sw         $s2, 0x18($s6)
/* 1CEDC 8002C6DC 0200C2A6 */  sh         $v0, 0x2($s6)
/* 1CEE0 8002C6E0 4C00E392 */  lbu        $v1, 0x4C($s7)
/* 1CEE4 8002C6E4 2C00A58F */  lw         $a1, 0x2C($sp)
/* 1CEE8 8002C6E8 00000000 */  nop
/* 1CEEC 8002C6EC 0400A3A0 */  sb         $v1, 0x4($a1)
/* 1CEF0 8002C6F0 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1CEF4 8002C6F4 00000000 */  nop
/* 1CEF8 8002C6F8 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1CEFC 8002C6FC 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1CF00 8002C700 00000000 */  nop
/* 1CF04 8002C704 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1CF08 8002C708 4C00E492 */  lbu        $a0, 0x4C($s7)
/* 1CF0C 8002C70C 1C00A58F */  lw         $a1, 0x1C($sp)
/* 1CF10 8002C710 00000000 */  nop
/* 1CF14 8002C714 0400A4A0 */  sb         $a0, 0x4($a1)
/* 1CF18 8002C718 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1CF1C 8002C71C 00000000 */  nop
/* 1CF20 8002C720 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1CF24 8002C724 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1CF28 8002C728 2000B18F */  lw         $s1, 0x20($sp)
/* 1CF2C 8002C72C 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1CF30 8002C730 0800E28E */  lw         $v0, 0x8($s7)
/* 1CF34 8002C734 3000B68F */  lw         $s6, 0x30($sp)
/* 1CF38 8002C738 2A102202 */  slt        $v0, $s1, $v0
/* 1CF3C 8002C73C 5AFF4014 */  bnez       $v0, .L8002C4A8
/* 1CF40 8002C740 00000000 */   nop
.L8002C744:
/* 1CF44 8002C744 5C00BF8F */  lw         $ra, 0x5C($sp)
/* 1CF48 8002C748 5800BE8F */  lw         $fp, 0x58($sp)
/* 1CF4C 8002C74C 0000E0AE */  sw         $zero, 0x0($s7)
/* 1CF50 8002C750 5400B78F */  lw         $s7, 0x54($sp)
/* 1CF54 8002C754 5000B68F */  lw         $s6, 0x50($sp)
/* 1CF58 8002C758 4C00B58F */  lw         $s5, 0x4C($sp)
/* 1CF5C 8002C75C 4800B48F */  lw         $s4, 0x48($sp)
/* 1CF60 8002C760 4400B38F */  lw         $s3, 0x44($sp)
/* 1CF64 8002C764 4000B28F */  lw         $s2, 0x40($sp)
/* 1CF68 8002C768 3C00B18F */  lw         $s1, 0x3C($sp)
/* 1CF6C 8002C76C 3800B08F */  lw         $s0, 0x38($sp)
/* 1CF70 8002C770 0800E003 */  jr         $ra
/* 1CF74 8002C774 6000BD27 */   addiu     $sp, $sp, 0x60
.size ParticleBombInit, . - ParticleBombInit
