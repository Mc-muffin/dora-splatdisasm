.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleGateReInit
/* 1B594 8002AD94 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 1B598 8002AD98 6400B7AF */  sw         $s7, 0x64($sp)
/* 1B59C 8002AD9C 21B88000 */  addu       $s7, $a0, $zero
/* 1B5A0 8002ADA0 14000224 */  addiu      $v0, $zero, 0x14
/* 1B5A4 8002ADA4 6C00BFAF */  sw         $ra, 0x6C($sp)
/* 1B5A8 8002ADA8 6800BEAF */  sw         $fp, 0x68($sp)
/* 1B5AC 8002ADAC 6000B6AF */  sw         $s6, 0x60($sp)
/* 1B5B0 8002ADB0 5C00B5AF */  sw         $s5, 0x5C($sp)
/* 1B5B4 8002ADB4 5800B4AF */  sw         $s4, 0x58($sp)
/* 1B5B8 8002ADB8 5400B3AF */  sw         $s3, 0x54($sp)
/* 1B5BC 8002ADBC 5000B2AF */  sw         $s2, 0x50($sp)
/* 1B5C0 8002ADC0 4C00B1AF */  sw         $s1, 0x4C($sp)
/* 1B5C4 8002ADC4 4800B0AF */  sw         $s0, 0x48($sp)
/* 1B5C8 8002ADC8 1000A5AF */  sw         $a1, 0x10($sp)
/* 1B5CC 8002ADCC 1400A6AF */  sw         $a2, 0x14($sp)
/* 1B5D0 8002ADD0 1800A7AF */  sw         $a3, 0x18($sp)
/* 1B5D4 8002ADD4 0C00E2AE */  sw         $v0, 0xC($s7)
/* 1B5D8 8002ADD8 1000A38F */  lw         $v1, 0x10($sp)
/* 1B5DC 8002ADDC 4000F68E */  lw         $s6, 0x40($s7)
/* 1B5E0 8002ADE0 2400E3AE */  sw         $v1, 0x24($s7)
/* 1B5E4 8002ADE4 1400A28F */  lw         $v0, 0x14($sp)
/* 1B5E8 8002ADE8 00000000 */  nop
/* 1B5EC 8002ADEC 2800E2AE */  sw         $v0, 0x28($s7)
/* 1B5F0 8002ADF0 1800A38F */  lw         $v1, 0x18($sp)
/* 1B5F4 8002ADF4 C8000224 */  addiu      $v0, $zero, 0xC8
/* 1B5F8 8002ADF8 4A00E2A6 */  sh         $v0, 0x4A($s7)
/* 1B5FC 8002ADFC 3000E28E */  lw         $v0, 0x30($s7)
/* 1B600 8002AE00 2C00E3AE */  sw         $v1, 0x2C($s7)
/* 1B604 8002AE04 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 1B608 8002AE08 3400E38E */  lw         $v1, 0x34($s7)
/* 1B60C 8002AE0C 00000000 */  nop
/* 1B610 8002AE10 2000A3AF */  sw         $v1, 0x20($sp)
/* 1B614 8002AE14 3C00E38E */  lw         $v1, 0x3C($s7)
/* 1B618 8002AE18 3800FE8E */  lw         $fp, 0x38($s7)
/* 1B61C 8002AE1C 0400E28E */  lw         $v0, 0x4($s7)
/* 1B620 8002AE20 00000000 */  nop
/* 1B624 8002AE24 04004014 */  bnez       $v0, .L8002AE38
/* 1B628 8002AE28 2400A3AF */   sw        $v1, 0x24($sp)
/* 1B62C 8002AE2C 1000A0AF */  sw         $zero, 0x10($sp)
/* 1B630 8002AE30 1400A0AF */  sw         $zero, 0x14($sp)
/* 1B634 8002AE34 1800A0AF */  sw         $zero, 0x18($sp)
.L8002AE38:
/* 1B638 8002AE38 0800E28E */  lw         $v0, 0x8($s7)
/* 1B63C 8002AE3C 00000000 */  nop
/* 1B640 8002AE40 B9004018 */  blez       $v0, .L8002B128
/* 1B644 8002AE44 21880000 */   addu      $s1, $zero, $zero
.L8002AE48:
/* 1B648 8002AE48 D140010C */  jal        u32Random
/* 1B64C 8002AE4C FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1B650 8002AE50 21804000 */  addu       $s0, $v0, $zero
/* 1B654 8002AE54 D140010C */  jal        u32Random
/* 1B658 8002AE58 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1B65C 8002AE5C 21984000 */  addu       $s3, $v0, $zero
/* 1B660 8002AE60 1C00A28F */  lw         $v0, 0x1C($sp)
/* 1B664 8002AE64 2000A38F */  lw         $v1, 0x20($sp)
/* 1B668 8002AE68 00000000 */  nop
/* 1B66C 8002AE6C 29004310 */  beq        $v0, $v1, .L8002AF14
/* 1B670 8002AE70 00000000 */   nop
/* 1B674 8002AE74 1000A28F */  lw         $v0, 0x10($sp)
/* 1B678 8002AE78 1400A38F */  lw         $v1, 0x14($sp)
/* 1B67C 8002AE7C 01003126 */  addiu      $s1, $s1, 0x1
/* 1B680 8002AE80 3000B1AF */  sw         $s1, 0x30($sp)
/* 1B684 8002AE84 00120200 */  sll        $v0, $v0, 8
/* 1B688 8002AE88 3400A2AF */  sw         $v0, 0x34($sp)
/* 1B68C 8002AE8C 1800A28F */  lw         $v0, 0x18($sp)
/* 1B690 8002AE90 001A0300 */  sll        $v1, $v1, 8
/* 1B694 8002AE94 3800A3AF */  sw         $v1, 0x38($sp)
/* 1B698 8002AE98 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1B69C 8002AE9C 4000A3AF */  sw         $v1, 0x40($sp)
/* 1B6A0 8002AEA0 7400C326 */  addiu      $v1, $s6, 0x74
/* 1B6A4 8002AEA4 2800A3AF */  sw         $v1, 0x28($sp)
/* 1B6A8 8002AEA8 1C00A38F */  lw         $v1, 0x1C($sp)
/* 1B6AC 8002AEAC 00120200 */  sll        $v0, $v0, 8
/* 1B6B0 8002AEB0 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 1B6B4 8002AEB4 4400C226 */  addiu      $v0, $s6, 0x44
/* 1B6B8 8002AEB8 2C00A2AF */  sw         $v0, 0x2C($sp)
/* 1B6BC 8002AEBC 2A100302 */  slt        $v0, $s0, $v1
/* 1B6C0 8002AEC0 06004014 */  bnez       $v0, .L8002AEDC
/* 1B6C4 8002AEC4 00000000 */   nop
/* 1B6C8 8002AEC8 2000A38F */  lw         $v1, 0x20($sp)
/* 1B6CC 8002AECC 00000000 */  nop
/* 1B6D0 8002AED0 2A107000 */  slt        $v0, $v1, $s0
/* 1B6D4 8002AED4 21004010 */  beqz       $v0, .L8002AF5C
/* 1B6D8 8002AED8 00000000 */   nop
.L8002AEDC:
/* 1B6DC 8002AEDC D140010C */  jal        u32Random
/* 1B6E0 8002AEE0 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1B6E4 8002AEE4 1C00A38F */  lw         $v1, 0x1C($sp)
/* 1B6E8 8002AEE8 21804000 */  addu       $s0, $v0, $zero
/* 1B6EC 8002AEEC 2A100302 */  slt        $v0, $s0, $v1
/* 1B6F0 8002AEF0 FAFF4014 */  bnez       $v0, .L8002AEDC
/* 1B6F4 8002AEF4 00000000 */   nop
/* 1B6F8 8002AEF8 2000A38F */  lw         $v1, 0x20($sp)
/* 1B6FC 8002AEFC 00000000 */  nop
/* 1B700 8002AF00 2A107000 */  slt        $v0, $v1, $s0
/* 1B704 8002AF04 F5FF4014 */  bnez       $v0, .L8002AEDC
/* 1B708 8002AF08 00000000 */   nop
/* 1B70C 8002AF0C D7AB0008 */  j          .L8002AF5C
/* 1B710 8002AF10 00000000 */   nop
.L8002AF14:
/* 1B714 8002AF14 1C00B08F */  lw         $s0, 0x1C($sp)
/* 1B718 8002AF18 1000A28F */  lw         $v0, 0x10($sp)
/* 1B71C 8002AF1C 1400A38F */  lw         $v1, 0x14($sp)
/* 1B720 8002AF20 01003126 */  addiu      $s1, $s1, 0x1
/* 1B724 8002AF24 3000B1AF */  sw         $s1, 0x30($sp)
/* 1B728 8002AF28 00120200 */  sll        $v0, $v0, 8
/* 1B72C 8002AF2C 3400A2AF */  sw         $v0, 0x34($sp)
/* 1B730 8002AF30 1800A28F */  lw         $v0, 0x18($sp)
/* 1B734 8002AF34 001A0300 */  sll        $v1, $v1, 8
/* 1B738 8002AF38 3800A3AF */  sw         $v1, 0x38($sp)
/* 1B73C 8002AF3C 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1B740 8002AF40 4000A3AF */  sw         $v1, 0x40($sp)
/* 1B744 8002AF44 7400C326 */  addiu      $v1, $s6, 0x74
/* 1B748 8002AF48 2800A3AF */  sw         $v1, 0x28($sp)
/* 1B74C 8002AF4C 00120200 */  sll        $v0, $v0, 8
/* 1B750 8002AF50 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 1B754 8002AF54 4400C226 */  addiu      $v0, $s6, 0x44
/* 1B758 8002AF58 2C00A2AF */  sw         $v0, 0x2C($sp)
.L8002AF5C:
/* 1B75C 8002AF5C 2400A28F */  lw         $v0, 0x24($sp)
/* 1B760 8002AF60 00000000 */  nop
/* 1B764 8002AF64 1500C213 */  beq        $fp, $v0, .L8002AFBC
/* 1B768 8002AF68 2A107E02 */   slt       $v0, $s3, $fp
/* 1B76C 8002AF6C 06004014 */  bnez       $v0, .L8002AF88
/* 1B770 8002AF70 00000000 */   nop
/* 1B774 8002AF74 2400A38F */  lw         $v1, 0x24($sp)
/* 1B778 8002AF78 00000000 */  nop
/* 1B77C 8002AF7C 2A107300 */  slt        $v0, $v1, $s3
/* 1B780 8002AF80 0F004010 */  beqz       $v0, .L8002AFC0
/* 1B784 8002AF84 00000000 */   nop
.L8002AF88:
/* 1B788 8002AF88 D140010C */  jal        u32Random
/* 1B78C 8002AF8C FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1B790 8002AF90 21984000 */  addu       $s3, $v0, $zero
/* 1B794 8002AF94 2A107E02 */  slt        $v0, $s3, $fp
/* 1B798 8002AF98 FBFF4014 */  bnez       $v0, .L8002AF88
/* 1B79C 8002AF9C 00000000 */   nop
/* 1B7A0 8002AFA0 2400A38F */  lw         $v1, 0x24($sp)
/* 1B7A4 8002AFA4 00000000 */  nop
/* 1B7A8 8002AFA8 2A107300 */  slt        $v0, $v1, $s3
/* 1B7AC 8002AFAC F6FF4014 */  bnez       $v0, .L8002AF88
/* 1B7B0 8002AFB0 00000000 */   nop
/* 1B7B4 8002AFB4 F0AB0008 */  j          .L8002AFC0
/* 1B7B8 8002AFB8 00000000 */   nop
.L8002AFBC:
/* 1B7BC 8002AFBC 2198C003 */  addu       $s3, $fp, $zero
.L8002AFC0:
/* 1B7C0 8002AFC0 7BEB010C */  jal        rcos
/* 1B7C4 8002AFC4 21200002 */   addu      $a0, $s0, $zero
/* 1B7C8 8002AFC8 21200002 */  addu       $a0, $s0, $zero
/* 1B7CC 8002AFCC 47EB010C */  jal        rsin
/* 1B7D0 8002AFD0 21904000 */   addu      $s2, $v0, $zero
/* 1B7D4 8002AFD4 21206002 */  addu       $a0, $s3, $zero
/* 1B7D8 8002AFD8 7BEB010C */  jal        rcos
/* 1B7DC 8002AFDC 21884000 */   addu      $s1, $v0, $zero
/* 1B7E0 8002AFE0 21206002 */  addu       $a0, $s3, $zero
/* 1B7E4 8002AFE4 47EB010C */  jal        rsin
/* 1B7E8 8002AFE8 21804000 */   addu      $s0, $v0, $zero
/* 1B7EC 8002AFEC 18003002 */  mult       $s1, $s0
/* 1B7F0 8002AFF0 12880000 */  mflo       $s1
/* 1B7F4 8002AFF4 00000000 */  nop
/* 1B7F8 8002AFF8 00000000 */  nop
/* 1B7FC 8002AFFC 18005002 */  mult       $s2, $s0
/* 1B800 8002B000 12900000 */  mflo       $s2
/* 1B804 8002B004 14000324 */  addiu      $v1, $zero, 0x14
/* 1B808 8002B008 038B1100 */  sra        $s1, $s1, 12
/* 1B80C 8002B00C 18002302 */  mult       $s1, $v1
/* 1B810 8002B010 12A80000 */  mflo       $s5
/* 1B814 8002B014 21A04000 */  addu       $s4, $v0, $zero
/* 1B818 8002B018 00000000 */  nop
/* 1B81C 8002B01C 18008302 */  mult       $s4, $v1
/* 1B820 8002B020 12980000 */  mflo       $s3
/* 1B824 8002B024 03931200 */  sra        $s2, $s2, 12
/* 1B828 8002B028 00000000 */  nop
/* 1B82C 8002B02C 18004302 */  mult       $s2, $v1
/* 1B830 8002B030 12800000 */  mflo       $s0
/* 1B834 8002B034 0A000224 */  addiu      $v0, $zero, 0xA
/* 1B838 8002B038 00000000 */  nop
/* 1B83C 8002B03C 18002202 */  mult       $s1, $v0
/* 1B840 8002B040 12880000 */  mflo       $s1
/* 1B844 8002B044 00000000 */  nop
/* 1B848 8002B048 00000000 */  nop
/* 1B84C 8002B04C 18008202 */  mult       $s4, $v0
/* 1B850 8002B050 12A00000 */  mflo       $s4
/* 1B854 8002B054 04000424 */  addiu      $a0, $zero, 0x4
/* 1B858 8002B058 00000000 */  nop
/* 1B85C 8002B05C 18004202 */  mult       $s2, $v0
/* 1B860 8002B060 03A91500 */  sra        $s5, $s5, 4
/* 1B864 8002B064 3800A38F */  lw         $v1, 0x38($sp)
/* 1B868 8002B068 03991300 */  sra        $s3, $s3, 4
/* 1B86C 8002B06C 21987300 */  addu       $s3, $v1, $s3
/* 1B870 8002B070 03811000 */  sra        $s0, $s0, 4
/* 1B874 8002B074 3400A28F */  lw         $v0, 0x34($sp)
/* 1B878 8002B078 03891100 */  sra        $s1, $s1, 4
/* 1B87C 8002B07C 21A85500 */  addu       $s5, $v0, $s5
/* 1B880 8002B080 3C00A28F */  lw         $v0, 0x3C($sp)
/* 1B884 8002B084 03A11400 */  sra        $s4, $s4, 4
/* 1B888 8002B088 21805000 */  addu       $s0, $v0, $s0
/* 1B88C 8002B08C 12900000 */  mflo       $s2
/* 1B890 8002B090 D140010C */  jal        u32Random
/* 1B894 8002B094 03911200 */   sra       $s2, $s2, 4
/* 1B898 8002B098 01000324 */  addiu      $v1, $zero, 0x1
/* 1B89C 8002B09C 0000C3A6 */  sh         $v1, 0x0($s6)
/* 1B8A0 8002B0A0 14000324 */  addiu      $v1, $zero, 0x14
/* 1B8A4 8002B0A4 23106200 */  subu       $v0, $v1, $v0
/* 1B8A8 8002B0A8 0400D5AE */  sw         $s5, 0x4($s6)
/* 1B8AC 8002B0AC 0800D3AE */  sw         $s3, 0x8($s6)
/* 1B8B0 8002B0B0 0C00D0AE */  sw         $s0, 0xC($s6)
/* 1B8B4 8002B0B4 1000D1AE */  sw         $s1, 0x10($s6)
/* 1B8B8 8002B0B8 1400D4AE */  sw         $s4, 0x14($s6)
/* 1B8BC 8002B0BC 1800D2AE */  sw         $s2, 0x18($s6)
/* 1B8C0 8002B0C0 0200C2A6 */  sh         $v0, 0x2($s6)
/* 1B8C4 8002B0C4 4C00E392 */  lbu        $v1, 0x4C($s7)
/* 1B8C8 8002B0C8 4000A58F */  lw         $a1, 0x40($sp)
/* 1B8CC 8002B0CC 00000000 */  nop
/* 1B8D0 8002B0D0 0400A3A0 */  sb         $v1, 0x4($a1)
/* 1B8D4 8002B0D4 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1B8D8 8002B0D8 00000000 */  nop
/* 1B8DC 8002B0DC 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1B8E0 8002B0E0 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1B8E4 8002B0E4 00000000 */  nop
/* 1B8E8 8002B0E8 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1B8EC 8002B0EC 4C00E492 */  lbu        $a0, 0x4C($s7)
/* 1B8F0 8002B0F0 2C00A58F */  lw         $a1, 0x2C($sp)
/* 1B8F4 8002B0F4 00000000 */  nop
/* 1B8F8 8002B0F8 0400A4A0 */  sb         $a0, 0x4($a1)
/* 1B8FC 8002B0FC 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1B900 8002B100 00000000 */  nop
/* 1B904 8002B104 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1B908 8002B108 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1B90C 8002B10C 3000B18F */  lw         $s1, 0x30($sp)
/* 1B910 8002B110 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1B914 8002B114 0800E28E */  lw         $v0, 0x8($s7)
/* 1B918 8002B118 2800B68F */  lw         $s6, 0x28($sp)
/* 1B91C 8002B11C 2A102202 */  slt        $v0, $s1, $v0
/* 1B920 8002B120 49FF4014 */  bnez       $v0, .L8002AE48
/* 1B924 8002B124 00000000 */   nop
.L8002B128:
/* 1B928 8002B128 6C00BF8F */  lw         $ra, 0x6C($sp)
/* 1B92C 8002B12C 6800BE8F */  lw         $fp, 0x68($sp)
/* 1B930 8002B130 01000224 */  addiu      $v0, $zero, 0x1
/* 1B934 8002B134 0000E2AE */  sw         $v0, 0x0($s7)
/* 1B938 8002B138 6400B78F */  lw         $s7, 0x64($sp)
/* 1B93C 8002B13C 6000B68F */  lw         $s6, 0x60($sp)
/* 1B940 8002B140 5C00B58F */  lw         $s5, 0x5C($sp)
/* 1B944 8002B144 5800B48F */  lw         $s4, 0x58($sp)
/* 1B948 8002B148 5400B38F */  lw         $s3, 0x54($sp)
/* 1B94C 8002B14C 5000B28F */  lw         $s2, 0x50($sp)
/* 1B950 8002B150 4C00B18F */  lw         $s1, 0x4C($sp)
/* 1B954 8002B154 4800B08F */  lw         $s0, 0x48($sp)
/* 1B958 8002B158 0800E003 */  jr         $ra
/* 1B95C 8002B15C 7000BD27 */   addiu     $sp, $sp, 0x70
.size ParticleGateReInit, . - ParticleGateReInit
