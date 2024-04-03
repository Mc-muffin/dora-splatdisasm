.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleVegiHeadStaff1Init
/* 1F5AC 8002EDAC A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 1F5B0 8002EDB0 4400B5AF */  sw         $s5, 0x44($sp)
/* 1F5B4 8002EDB4 21A88000 */  addu       $s5, $a0, $zero
/* 1F5B8 8002EDB8 66000324 */  addiu      $v1, $zero, 0x66
/* 1F5BC 8002EDBC 5400BFAF */  sw         $ra, 0x54($sp)
/* 1F5C0 8002EDC0 5000BEAF */  sw         $fp, 0x50($sp)
/* 1F5C4 8002EDC4 4C00B7AF */  sw         $s7, 0x4C($sp)
/* 1F5C8 8002EDC8 4800B6AF */  sw         $s6, 0x48($sp)
/* 1F5CC 8002EDCC 4000B4AF */  sw         $s4, 0x40($sp)
/* 1F5D0 8002EDD0 3C00B3AF */  sw         $s3, 0x3C($sp)
/* 1F5D4 8002EDD4 3800B2AF */  sw         $s2, 0x38($sp)
/* 1F5D8 8002EDD8 3400B1AF */  sw         $s1, 0x34($sp)
/* 1F5DC 8002EDDC 3000B0AF */  sw         $s0, 0x30($sp)
/* 1F5E0 8002EDE0 1000A5AF */  sw         $a1, 0x10($sp)
/* 1F5E4 8002EDE4 1400A6AF */  sw         $a2, 0x14($sp)
/* 1F5E8 8002EDE8 1800A7AF */  sw         $a3, 0x18($sp)
/* 1F5EC 8002EDEC 4000B48E */  lw         $s4, 0x40($s5)
/* 1F5F0 8002EDF0 FF000224 */  addiu      $v0, $zero, 0xFF
/* 1F5F4 8002EDF4 C01382AF */  sw         $v0, %gp_rel(TEMPG)($gp)
/* 1F5F8 8002EDF8 FF0F0224 */  addiu      $v0, $zero, 0xFFF
/* 1F5FC 8002EDFC C41383AF */  sw         $v1, %gp_rel(TEMPR)($gp)
/* 1F600 8002EE00 BC1383AF */  sw         $v1, %gp_rel(TEMPB)($gp)
/* 1F604 8002EE04 3400A2AE */  sw         $v0, 0x34($s5)
/* 1F608 8002EE08 3C00A2AE */  sw         $v0, 0x3C($s5)
/* 1F60C 8002EE0C 3808828F */  lw         $v0, %gp_rel(S)($gp)
/* 1F610 8002EE10 14000324 */  addiu      $v1, $zero, 0x14
/* 1F614 8002EE14 3000A0AE */  sw         $zero, 0x30($s5)
/* 1F618 8002EE18 3800A0AE */  sw         $zero, 0x38($s5)
/* 1F61C 8002EE1C 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 1F620 8002EE20 0C00A3AE */  sw         $v1, 0xC($s5)
/* 1F624 8002EE24 1000A28F */  lw         $v0, 0x10($sp)
/* 1F628 8002EE28 00000000 */  nop
/* 1F62C 8002EE2C 2400A2AE */  sw         $v0, 0x24($s5)
/* 1F630 8002EE30 1400A38F */  lw         $v1, 0x14($sp)
/* 1F634 8002EE34 00000000 */  nop
/* 1F638 8002EE38 2800A3AE */  sw         $v1, 0x28($s5)
/* 1F63C 8002EE3C 1800A28F */  lw         $v0, 0x18($sp)
/* 1F640 8002EE40 00000000 */  nop
/* 1F644 8002EE44 2C00A2AE */  sw         $v0, 0x2C($s5)
/* 1F648 8002EE48 C8000224 */  addiu      $v0, $zero, 0xC8
/* 1F64C 8002EE4C 4A00A2A6 */  sh         $v0, 0x4A($s5)
/* 1F650 8002EE50 0400A28E */  lw         $v0, 0x4($s5)
/* 1F654 8002EE54 00000000 */  nop
/* 1F658 8002EE58 04004014 */  bnez       $v0, .L8002EE6C
/* 1F65C 8002EE5C 00000000 */   nop
/* 1F660 8002EE60 1000A0AF */  sw         $zero, 0x10($sp)
/* 1F664 8002EE64 1400A0AF */  sw         $zero, 0x14($sp)
/* 1F668 8002EE68 1800A0AF */  sw         $zero, 0x18($sp)
.L8002EE6C:
/* 1F66C 8002EE6C 0800A28E */  lw         $v0, 0x8($s5)
/* 1F670 8002EE70 00000000 */  nop
/* 1F674 8002EE74 90004018 */  blez       $v0, .L8002F0B8
/* 1F678 8002EE78 21880000 */   addu      $s1, $zero, $zero
.L8002EE7C:
/* 1F67C 8002EE7C D140010C */  jal        u32Random
/* 1F680 8002EE80 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1F684 8002EE84 21804000 */  addu       $s0, $v0, $zero
/* 1F688 8002EE88 D140010C */  jal        u32Random
/* 1F68C 8002EE8C FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1F690 8002EE90 21984000 */  addu       $s3, $v0, $zero
/* 1F694 8002EE94 21180000 */  addu       $v1, $zero, $zero
/* 1F698 8002EE98 FF0F0224 */  addiu      $v0, $zero, 0xFFF
/* 1F69C 8002EE9C 1E006210 */  beq        $v1, $v0, .L8002EF18
/* 1F6A0 8002EEA0 00000000 */   nop
/* 1F6A4 8002EEA4 1000A38F */  lw         $v1, 0x10($sp)
/* 1F6A8 8002EEA8 1400A28F */  lw         $v0, 0x14($sp)
/* 1F6AC 8002EEAC 01003126 */  addiu      $s1, $s1, 0x1
/* 1F6B0 8002EEB0 2800B1AF */  sw         $s1, 0x28($sp)
/* 1F6B4 8002EEB4 00F20300 */  sll        $fp, $v1, 8
/* 1F6B8 8002EEB8 00BA0200 */  sll        $s7, $v0, 8
/* 1F6BC 8002EEBC 1800A38F */  lw         $v1, 0x18($sp)
/* 1F6C0 8002EEC0 1C008226 */  addiu      $v0, $s4, 0x1C
/* 1F6C4 8002EEC4 2C00A2AF */  sw         $v0, 0x2C($sp)
/* 1F6C8 8002EEC8 74008226 */  addiu      $v0, $s4, 0x74
/* 1F6CC 8002EECC 2000A2AF */  sw         $v0, 0x20($sp)
/* 1F6D0 8002EED0 00B20300 */  sll        $s6, $v1, 8
/* 1F6D4 8002EED4 44008326 */  addiu      $v1, $s4, 0x44
/* 1F6D8 8002EED8 05000006 */  bltz       $s0, .L8002EEF0
/* 1F6DC 8002EEDC 2400A3AF */   sw        $v1, 0x24($sp)
/* 1F6E0 8002EEE0 FF0F0324 */  addiu      $v1, $zero, 0xFFF
/* 1F6E4 8002EEE4 2A107000 */  slt        $v0, $v1, $s0
/* 1F6E8 8002EEE8 1C004010 */  beqz       $v0, .L8002EF5C
/* 1F6EC 8002EEEC 21100000 */   addu      $v0, $zero, $zero
.L8002EEF0:
/* 1F6F0 8002EEF0 D140010C */  jal        u32Random
/* 1F6F4 8002EEF4 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1F6F8 8002EEF8 21804000 */  addu       $s0, $v0, $zero
/* 1F6FC 8002EEFC FCFF0006 */  bltz       $s0, .L8002EEF0
/* 1F700 8002EF00 FF0F0324 */   addiu     $v1, $zero, 0xFFF
/* 1F704 8002EF04 2A107000 */  slt        $v0, $v1, $s0
/* 1F708 8002EF08 F9FF4014 */  bnez       $v0, .L8002EEF0
/* 1F70C 8002EF0C 21100000 */   addu      $v0, $zero, $zero
/* 1F710 8002EF10 D7BB0008 */  j          .L8002EF5C
/* 1F714 8002EF14 00000000 */   nop
.L8002EF18:
/* 1F718 8002EF18 21800000 */  addu       $s0, $zero, $zero
/* 1F71C 8002EF1C 1000A28F */  lw         $v0, 0x10($sp)
/* 1F720 8002EF20 1400A38F */  lw         $v1, 0x14($sp)
/* 1F724 8002EF24 01003126 */  addiu      $s1, $s1, 0x1
/* 1F728 8002EF28 2800B1AF */  sw         $s1, 0x28($sp)
/* 1F72C 8002EF2C 00F20200 */  sll        $fp, $v0, 8
/* 1F730 8002EF30 00BA0300 */  sll        $s7, $v1, 8
/* 1F734 8002EF34 1800A28F */  lw         $v0, 0x18($sp)
/* 1F738 8002EF38 1C008326 */  addiu      $v1, $s4, 0x1C
/* 1F73C 8002EF3C 2C00A3AF */  sw         $v1, 0x2C($sp)
/* 1F740 8002EF40 74008326 */  addiu      $v1, $s4, 0x74
/* 1F744 8002EF44 2000A3AF */  sw         $v1, 0x20($sp)
/* 1F748 8002EF48 00B20200 */  sll        $s6, $v0, 8
/* 1F74C 8002EF4C 44008226 */  addiu      $v0, $s4, 0x44
/* 1F750 8002EF50 2400A2AF */  sw         $v0, 0x24($sp)
/* 1F754 8002EF54 21100000 */  addu       $v0, $zero, $zero
/* 1F758 8002EF58 FF0F0324 */  addiu      $v1, $zero, 0xFFF
.L8002EF5C:
/* 1F75C 8002EF5C 0F004310 */  beq        $v0, $v1, .L8002EF9C
/* 1F760 8002EF60 00000000 */   nop
/* 1F764 8002EF64 03006006 */  bltz       $s3, .L8002EF74
/* 1F768 8002EF68 2A107300 */   slt       $v0, $v1, $s3
/* 1F76C 8002EF6C 0C004010 */  beqz       $v0, .L8002EFA0
/* 1F770 8002EF70 00000000 */   nop
.L8002EF74:
/* 1F774 8002EF74 D140010C */  jal        u32Random
/* 1F778 8002EF78 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1F77C 8002EF7C 21984000 */  addu       $s3, $v0, $zero
/* 1F780 8002EF80 FCFF6006 */  bltz       $s3, .L8002EF74
/* 1F784 8002EF84 FF0F0324 */   addiu     $v1, $zero, 0xFFF
/* 1F788 8002EF88 2A107300 */  slt        $v0, $v1, $s3
/* 1F78C 8002EF8C F9FF4014 */  bnez       $v0, .L8002EF74
/* 1F790 8002EF90 00000000 */   nop
/* 1F794 8002EF94 E8BB0008 */  j          .L8002EFA0
/* 1F798 8002EF98 00000000 */   nop
.L8002EF9C:
/* 1F79C 8002EF9C 21980000 */  addu       $s3, $zero, $zero
.L8002EFA0:
/* 1F7A0 8002EFA0 7BEB010C */  jal        rcos
/* 1F7A4 8002EFA4 21200002 */   addu      $a0, $s0, $zero
/* 1F7A8 8002EFA8 21200002 */  addu       $a0, $s0, $zero
/* 1F7AC 8002EFAC 47EB010C */  jal        rsin
/* 1F7B0 8002EFB0 21904000 */   addu      $s2, $v0, $zero
/* 1F7B4 8002EFB4 21206002 */  addu       $a0, $s3, $zero
/* 1F7B8 8002EFB8 7BEB010C */  jal        rcos
/* 1F7BC 8002EFBC 21884000 */   addu      $s1, $v0, $zero
/* 1F7C0 8002EFC0 21206002 */  addu       $a0, $s3, $zero
/* 1F7C4 8002EFC4 47EB010C */  jal        rsin
/* 1F7C8 8002EFC8 21804000 */   addu      $s0, $v0, $zero
/* 1F7CC 8002EFCC 18003002 */  mult       $s1, $s0
/* 1F7D0 8002EFD0 12880000 */  mflo       $s1
/* 1F7D4 8002EFD4 00000000 */  nop
/* 1F7D8 8002EFD8 00000000 */  nop
/* 1F7DC 8002EFDC 18005002 */  mult       $s2, $s0
/* 1F7E0 8002EFE0 12900000 */  mflo       $s2
/* 1F7E4 8002EFE4 1C00A38F */  lw         $v1, 0x1C($sp)
/* 1F7E8 8002EFE8 038B1100 */  sra        $s1, $s1, 12
/* 1F7EC 8002EFEC 18002302 */  mult       $s1, $v1
/* 1F7F0 8002EFF0 12880000 */  mflo       $s1
/* 1F7F4 8002EFF4 00000000 */  nop
/* 1F7F8 8002EFF8 00000000 */  nop
/* 1F7FC 8002EFFC 18004300 */  mult       $v0, $v1
/* 1F800 8002F000 12800000 */  mflo       $s0
/* 1F804 8002F004 03931200 */  sra        $s2, $s2, 12
/* 1F808 8002F008 00000000 */  nop
/* 1F80C 8002F00C 18004302 */  mult       $s2, $v1
/* 1F810 8002F010 04000424 */  addiu      $a0, $zero, 0x4
/* 1F814 8002F014 03891100 */  sra        $s1, $s1, 4
/* 1F818 8002F018 03811000 */  sra        $s0, $s0, 4
/* 1F81C 8002F01C 12900000 */  mflo       $s2
/* 1F820 8002F020 D140010C */  jal        u32Random
/* 1F824 8002F024 03911200 */   sra       $s2, $s2, 4
/* 1F828 8002F028 01000324 */  addiu      $v1, $zero, 0x1
/* 1F82C 8002F02C 000083A6 */  sh         $v1, 0x0($s4)
/* 1F830 8002F030 14000324 */  addiu      $v1, $zero, 0x14
/* 1F834 8002F034 23106200 */  subu       $v0, $v1, $v0
/* 1F838 8002F038 04009EAE */  sw         $fp, 0x4($s4)
/* 1F83C 8002F03C 080097AE */  sw         $s7, 0x8($s4)
/* 1F840 8002F040 0C0096AE */  sw         $s6, 0xC($s4)
/* 1F844 8002F044 100091AE */  sw         $s1, 0x10($s4)
/* 1F848 8002F048 140090AE */  sw         $s0, 0x14($s4)
/* 1F84C 8002F04C 180092AE */  sw         $s2, 0x18($s4)
/* 1F850 8002F050 020082A6 */  sh         $v0, 0x2($s4)
/* 1F854 8002F054 4C00A392 */  lbu        $v1, 0x4C($s5)
/* 1F858 8002F058 2C00A58F */  lw         $a1, 0x2C($sp)
/* 1F85C 8002F05C 00000000 */  nop
/* 1F860 8002F060 0400A3A0 */  sb         $v1, 0x4($a1)
/* 1F864 8002F064 4D00A292 */  lbu        $v0, 0x4D($s5)
/* 1F868 8002F068 00000000 */  nop
/* 1F86C 8002F06C 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1F870 8002F070 4E00A392 */  lbu        $v1, 0x4E($s5)
/* 1F874 8002F074 00000000 */  nop
/* 1F878 8002F078 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1F87C 8002F07C 4C00A492 */  lbu        $a0, 0x4C($s5)
/* 1F880 8002F080 2400A58F */  lw         $a1, 0x24($sp)
/* 1F884 8002F084 00000000 */  nop
/* 1F888 8002F088 0400A4A0 */  sb         $a0, 0x4($a1)
/* 1F88C 8002F08C 4D00A292 */  lbu        $v0, 0x4D($s5)
/* 1F890 8002F090 00000000 */  nop
/* 1F894 8002F094 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1F898 8002F098 4E00A392 */  lbu        $v1, 0x4E($s5)
/* 1F89C 8002F09C 2800B18F */  lw         $s1, 0x28($sp)
/* 1F8A0 8002F0A0 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1F8A4 8002F0A4 0800A28E */  lw         $v0, 0x8($s5)
/* 1F8A8 8002F0A8 2000B48F */  lw         $s4, 0x20($sp)
/* 1F8AC 8002F0AC 2A102202 */  slt        $v0, $s1, $v0
/* 1F8B0 8002F0B0 72FF4014 */  bnez       $v0, .L8002EE7C
/* 1F8B4 8002F0B4 00000000 */   nop
.L8002F0B8:
/* 1F8B8 8002F0B8 5400BF8F */  lw         $ra, 0x54($sp)
/* 1F8BC 8002F0BC 5000BE8F */  lw         $fp, 0x50($sp)
/* 1F8C0 8002F0C0 4C00B78F */  lw         $s7, 0x4C($sp)
/* 1F8C4 8002F0C4 4800B68F */  lw         $s6, 0x48($sp)
/* 1F8C8 8002F0C8 0000A0AE */  sw         $zero, 0x0($s5)
/* 1F8CC 8002F0CC 4400B58F */  lw         $s5, 0x44($sp)
/* 1F8D0 8002F0D0 4000B48F */  lw         $s4, 0x40($sp)
/* 1F8D4 8002F0D4 3C00B38F */  lw         $s3, 0x3C($sp)
/* 1F8D8 8002F0D8 3800B28F */  lw         $s2, 0x38($sp)
/* 1F8DC 8002F0DC 3400B18F */  lw         $s1, 0x34($sp)
/* 1F8E0 8002F0E0 3000B08F */  lw         $s0, 0x30($sp)
/* 1F8E4 8002F0E4 0800E003 */  jr         $ra
/* 1F8E8 8002F0E8 5800BD27 */   addiu     $sp, $sp, 0x58
.size ParticleVegiHeadStaff1Init, . - ParticleVegiHeadStaff1Init
