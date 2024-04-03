.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticlePickupFairyDustReInit
/* 1EDE8 8002E5E8 88FFBD27 */  addiu      $sp, $sp, -0x78
/* 1EDEC 8002E5EC 6C00B7AF */  sw         $s7, 0x6C($sp)
/* 1EDF0 8002E5F0 21B88000 */  addu       $s7, $a0, $zero
/* 1EDF4 8002E5F4 7400BFAF */  sw         $ra, 0x74($sp)
/* 1EDF8 8002E5F8 7000BEAF */  sw         $fp, 0x70($sp)
/* 1EDFC 8002E5FC 6800B6AF */  sw         $s6, 0x68($sp)
/* 1EE00 8002E600 6400B5AF */  sw         $s5, 0x64($sp)
/* 1EE04 8002E604 6000B4AF */  sw         $s4, 0x60($sp)
/* 1EE08 8002E608 5C00B3AF */  sw         $s3, 0x5C($sp)
/* 1EE0C 8002E60C 5800B2AF */  sw         $s2, 0x58($sp)
/* 1EE10 8002E610 5400B1AF */  sw         $s1, 0x54($sp)
/* 1EE14 8002E614 5000B0AF */  sw         $s0, 0x50($sp)
/* 1EE18 8002E618 1400A5AF */  sw         $a1, 0x14($sp)
/* 1EE1C 8002E61C 1800A6AF */  sw         $a2, 0x18($sp)
/* 1EE20 8002E620 1C00A7AF */  sw         $a3, 0x1C($sp)
/* 1EE24 8002E624 4000E28E */  lw         $v0, 0x40($s7)
/* 1EE28 8002E628 3408838F */  lw         $v1, %gp_rel(R)($gp)
/* 1EE2C 8002E62C 3808848F */  lw         $a0, %gp_rel(S)($gp)
/* 1EE30 8002E630 1000A2AF */  sw         $v0, 0x10($sp)
/* 1EE34 8002E634 46000224 */  addiu      $v0, $zero, 0x46
/* 1EE38 8002E638 2000A3AF */  sw         $v1, 0x20($sp)
/* 1EE3C 8002E63C 2400A4AF */  sw         $a0, 0x24($sp)
/* 1EE40 8002E640 0C00E2AE */  sw         $v0, 0xC($s7)
/* 1EE44 8002E644 1400A38F */  lw         $v1, 0x14($sp)
/* 1EE48 8002E648 00000000 */  nop
/* 1EE4C 8002E64C 2400E3AE */  sw         $v1, 0x24($s7)
/* 1EE50 8002E650 1800A48F */  lw         $a0, 0x18($sp)
/* 1EE54 8002E654 3000E38E */  lw         $v1, 0x30($s7)
/* 1EE58 8002E658 2800E4AE */  sw         $a0, 0x28($s7)
/* 1EE5C 8002E65C 1C00A28F */  lw         $v0, 0x1C($sp)
/* 1EE60 8002E660 00000000 */  nop
/* 1EE64 8002E664 2C00E2AE */  sw         $v0, 0x2C($s7)
/* 1EE68 8002E668 C8000224 */  addiu      $v0, $zero, 0xC8
/* 1EE6C 8002E66C 4A00E2A6 */  sh         $v0, 0x4A($s7)
/* 1EE70 8002E670 2800A3AF */  sw         $v1, 0x28($sp)
/* 1EE74 8002E674 3400E48E */  lw         $a0, 0x34($s7)
/* 1EE78 8002E678 1000B68F */  lw         $s6, 0x10($sp)
/* 1EE7C 8002E67C 2C00A4AF */  sw         $a0, 0x2C($sp)
/* 1EE80 8002E680 3C00E38E */  lw         $v1, 0x3C($s7)
/* 1EE84 8002E684 3800FE8E */  lw         $fp, 0x38($s7)
/* 1EE88 8002E688 0400E28E */  lw         $v0, 0x4($s7)
/* 1EE8C 8002E68C 00000000 */  nop
/* 1EE90 8002E690 04004014 */  bnez       $v0, .L8002E6A4
/* 1EE94 8002E694 3000A3AF */   sw        $v1, 0x30($sp)
/* 1EE98 8002E698 1400A0AF */  sw         $zero, 0x14($sp)
/* 1EE9C 8002E69C 1800A0AF */  sw         $zero, 0x18($sp)
/* 1EEA0 8002E6A0 1C00A0AF */  sw         $zero, 0x1C($sp)
.L8002E6A4:
/* 1EEA4 8002E6A4 0800E28E */  lw         $v0, 0x8($s7)
/* 1EEA8 8002E6A8 00000000 */  nop
/* 1EEAC 8002E6AC BA004018 */  blez       $v0, .L8002E998
/* 1EEB0 8002E6B0 21880000 */   addu      $s1, $zero, $zero
.L8002E6B4:
/* 1EEB4 8002E6B4 D140010C */  jal        u32Random
/* 1EEB8 8002E6B8 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1EEBC 8002E6BC 21804000 */  addu       $s0, $v0, $zero
/* 1EEC0 8002E6C0 D140010C */  jal        u32Random
/* 1EEC4 8002E6C4 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1EEC8 8002E6C8 21984000 */  addu       $s3, $v0, $zero
/* 1EECC 8002E6CC 2800A48F */  lw         $a0, 0x28($sp)
/* 1EED0 8002E6D0 2C00A28F */  lw         $v0, 0x2C($sp)
/* 1EED4 8002E6D4 00000000 */  nop
/* 1EED8 8002E6D8 29008210 */  beq        $a0, $v0, .L8002E780
/* 1EEDC 8002E6DC 00000000 */   nop
/* 1EEE0 8002E6E0 1400A38F */  lw         $v1, 0x14($sp)
/* 1EEE4 8002E6E4 1800A48F */  lw         $a0, 0x18($sp)
/* 1EEE8 8002E6E8 1C00A28F */  lw         $v0, 0x1C($sp)
/* 1EEEC 8002E6EC 01003126 */  addiu      $s1, $s1, 0x1
/* 1EEF0 8002E6F0 3400B1AF */  sw         $s1, 0x34($sp)
/* 1EEF4 8002E6F4 001A0300 */  sll        $v1, $v1, 8
/* 1EEF8 8002E6F8 00220400 */  sll        $a0, $a0, 8
/* 1EEFC 8002E6FC 3800A3AF */  sw         $v1, 0x38($sp)
/* 1EF00 8002E700 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1EF04 8002E704 4400A3AF */  sw         $v1, 0x44($sp)
/* 1EF08 8002E708 2800A38F */  lw         $v1, 0x28($sp)
/* 1EF0C 8002E70C 00120200 */  sll        $v0, $v0, 8
/* 1EF10 8002E710 3C00A4AF */  sw         $a0, 0x3C($sp)
/* 1EF14 8002E714 4400C426 */  addiu      $a0, $s6, 0x44
/* 1EF18 8002E718 4000A2AF */  sw         $v0, 0x40($sp)
/* 1EF1C 8002E71C 7400C226 */  addiu      $v0, $s6, 0x74
/* 1EF20 8002E720 4C00A4AF */  sw         $a0, 0x4C($sp)
/* 1EF24 8002E724 4800A2AF */  sw         $v0, 0x48($sp)
/* 1EF28 8002E728 2A100302 */  slt        $v0, $s0, $v1
/* 1EF2C 8002E72C 06004014 */  bnez       $v0, .L8002E748
/* 1EF30 8002E730 00000000 */   nop
/* 1EF34 8002E734 2C00A48F */  lw         $a0, 0x2C($sp)
/* 1EF38 8002E738 00000000 */  nop
/* 1EF3C 8002E73C 2A109000 */  slt        $v0, $a0, $s0
/* 1EF40 8002E740 21004010 */  beqz       $v0, .L8002E7C8
/* 1EF44 8002E744 00000000 */   nop
.L8002E748:
/* 1EF48 8002E748 D140010C */  jal        u32Random
/* 1EF4C 8002E74C FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1EF50 8002E750 2800A38F */  lw         $v1, 0x28($sp)
/* 1EF54 8002E754 21804000 */  addu       $s0, $v0, $zero
/* 1EF58 8002E758 2A100302 */  slt        $v0, $s0, $v1
/* 1EF5C 8002E75C FAFF4014 */  bnez       $v0, .L8002E748
/* 1EF60 8002E760 00000000 */   nop
/* 1EF64 8002E764 2C00A48F */  lw         $a0, 0x2C($sp)
/* 1EF68 8002E768 00000000 */  nop
/* 1EF6C 8002E76C 2A109000 */  slt        $v0, $a0, $s0
/* 1EF70 8002E770 F5FF4014 */  bnez       $v0, .L8002E748
/* 1EF74 8002E774 00000000 */   nop
/* 1EF78 8002E778 F2B90008 */  j          .L8002E7C8
/* 1EF7C 8002E77C 00000000 */   nop
.L8002E780:
/* 1EF80 8002E780 2800B08F */  lw         $s0, 0x28($sp)
/* 1EF84 8002E784 1400A28F */  lw         $v0, 0x14($sp)
/* 1EF88 8002E788 1800A38F */  lw         $v1, 0x18($sp)
/* 1EF8C 8002E78C 1C00A48F */  lw         $a0, 0x1C($sp)
/* 1EF90 8002E790 01003126 */  addiu      $s1, $s1, 0x1
/* 1EF94 8002E794 3400B1AF */  sw         $s1, 0x34($sp)
/* 1EF98 8002E798 00120200 */  sll        $v0, $v0, 8
/* 1EF9C 8002E79C 001A0300 */  sll        $v1, $v1, 8
/* 1EFA0 8002E7A0 00220400 */  sll        $a0, $a0, 8
/* 1EFA4 8002E7A4 3800A2AF */  sw         $v0, 0x38($sp)
/* 1EFA8 8002E7A8 1C00C226 */  addiu      $v0, $s6, 0x1C
/* 1EFAC 8002E7AC 3C00A3AF */  sw         $v1, 0x3C($sp)
/* 1EFB0 8002E7B0 4400C326 */  addiu      $v1, $s6, 0x44
/* 1EFB4 8002E7B4 4000A4AF */  sw         $a0, 0x40($sp)
/* 1EFB8 8002E7B8 7400C426 */  addiu      $a0, $s6, 0x74
/* 1EFBC 8002E7BC 4400A2AF */  sw         $v0, 0x44($sp)
/* 1EFC0 8002E7C0 4C00A3AF */  sw         $v1, 0x4C($sp)
/* 1EFC4 8002E7C4 4800A4AF */  sw         $a0, 0x48($sp)
.L8002E7C8:
/* 1EFC8 8002E7C8 3000A28F */  lw         $v0, 0x30($sp)
/* 1EFCC 8002E7CC 00000000 */  nop
/* 1EFD0 8002E7D0 1500C213 */  beq        $fp, $v0, .L8002E828
/* 1EFD4 8002E7D4 2A107E02 */   slt       $v0, $s3, $fp
/* 1EFD8 8002E7D8 06004014 */  bnez       $v0, .L8002E7F4
/* 1EFDC 8002E7DC 00000000 */   nop
/* 1EFE0 8002E7E0 3000A38F */  lw         $v1, 0x30($sp)
/* 1EFE4 8002E7E4 00000000 */  nop
/* 1EFE8 8002E7E8 2A107300 */  slt        $v0, $v1, $s3
/* 1EFEC 8002E7EC 0F004010 */  beqz       $v0, .L8002E82C
/* 1EFF0 8002E7F0 00000000 */   nop
.L8002E7F4:
/* 1EFF4 8002E7F4 D140010C */  jal        u32Random
/* 1EFF8 8002E7F8 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1EFFC 8002E7FC 21984000 */  addu       $s3, $v0, $zero
/* 1F000 8002E800 2A107E02 */  slt        $v0, $s3, $fp
/* 1F004 8002E804 FBFF4014 */  bnez       $v0, .L8002E7F4
/* 1F008 8002E808 00000000 */   nop
/* 1F00C 8002E80C 3000A48F */  lw         $a0, 0x30($sp)
/* 1F010 8002E810 00000000 */  nop
/* 1F014 8002E814 2A109300 */  slt        $v0, $a0, $s3
/* 1F018 8002E818 F6FF4014 */  bnez       $v0, .L8002E7F4
/* 1F01C 8002E81C 00000000 */   nop
/* 1F020 8002E820 0BBA0008 */  j          .L8002E82C
/* 1F024 8002E824 00000000 */   nop
.L8002E828:
/* 1F028 8002E828 2198C003 */  addu       $s3, $fp, $zero
.L8002E82C:
/* 1F02C 8002E82C 7BEB010C */  jal        rcos
/* 1F030 8002E830 21200002 */   addu      $a0, $s0, $zero
/* 1F034 8002E834 21200002 */  addu       $a0, $s0, $zero
/* 1F038 8002E838 47EB010C */  jal        rsin
/* 1F03C 8002E83C 21904000 */   addu      $s2, $v0, $zero
/* 1F040 8002E840 21206002 */  addu       $a0, $s3, $zero
/* 1F044 8002E844 7BEB010C */  jal        rcos
/* 1F048 8002E848 21884000 */   addu      $s1, $v0, $zero
/* 1F04C 8002E84C 21206002 */  addu       $a0, $s3, $zero
/* 1F050 8002E850 47EB010C */  jal        rsin
/* 1F054 8002E854 21804000 */   addu      $s0, $v0, $zero
/* 1F058 8002E858 18003002 */  mult       $s1, $s0
/* 1F05C 8002E85C 12880000 */  mflo       $s1
/* 1F060 8002E860 00000000 */  nop
/* 1F064 8002E864 00000000 */  nop
/* 1F068 8002E868 18005002 */  mult       $s2, $s0
/* 1F06C 8002E86C 12900000 */  mflo       $s2
/* 1F070 8002E870 2000A38F */  lw         $v1, 0x20($sp)
/* 1F074 8002E874 038B1100 */  sra        $s1, $s1, 12
/* 1F078 8002E878 18002302 */  mult       $s1, $v1
/* 1F07C 8002E87C 12A80000 */  mflo       $s5
/* 1F080 8002E880 21A04000 */  addu       $s4, $v0, $zero
/* 1F084 8002E884 00000000 */  nop
/* 1F088 8002E888 18008302 */  mult       $s4, $v1
/* 1F08C 8002E88C 12980000 */  mflo       $s3
/* 1F090 8002E890 03931200 */  sra        $s2, $s2, 12
/* 1F094 8002E894 00000000 */  nop
/* 1F098 8002E898 18004302 */  mult       $s2, $v1
/* 1F09C 8002E89C 12800000 */  mflo       $s0
/* 1F0A0 8002E8A0 2400A28F */  lw         $v0, 0x24($sp)
/* 1F0A4 8002E8A4 00000000 */  nop
/* 1F0A8 8002E8A8 18002202 */  mult       $s1, $v0
/* 1F0AC 8002E8AC 12880000 */  mflo       $s1
/* 1F0B0 8002E8B0 00000000 */  nop
/* 1F0B4 8002E8B4 00000000 */  nop
/* 1F0B8 8002E8B8 18008202 */  mult       $s4, $v0
/* 1F0BC 8002E8BC 12A00000 */  mflo       $s4
/* 1F0C0 8002E8C0 04000424 */  addiu      $a0, $zero, 0x4
/* 1F0C4 8002E8C4 00000000 */  nop
/* 1F0C8 8002E8C8 18004202 */  mult       $s2, $v0
/* 1F0CC 8002E8CC 03A91500 */  sra        $s5, $s5, 4
/* 1F0D0 8002E8D0 3C00A38F */  lw         $v1, 0x3C($sp)
/* 1F0D4 8002E8D4 03991300 */  sra        $s3, $s3, 4
/* 1F0D8 8002E8D8 21987300 */  addu       $s3, $v1, $s3
/* 1F0DC 8002E8DC 03811000 */  sra        $s0, $s0, 4
/* 1F0E0 8002E8E0 3800A28F */  lw         $v0, 0x38($sp)
/* 1F0E4 8002E8E4 03891100 */  sra        $s1, $s1, 4
/* 1F0E8 8002E8E8 21A85500 */  addu       $s5, $v0, $s5
/* 1F0EC 8002E8EC 4000A28F */  lw         $v0, 0x40($sp)
/* 1F0F0 8002E8F0 03A11400 */  sra        $s4, $s4, 4
/* 1F0F4 8002E8F4 21805000 */  addu       $s0, $v0, $s0
/* 1F0F8 8002E8F8 12900000 */  mflo       $s2
/* 1F0FC 8002E8FC D140010C */  jal        u32Random
/* 1F100 8002E900 03911200 */   sra       $s2, $s2, 4
/* 1F104 8002E904 01000324 */  addiu      $v1, $zero, 0x1
/* 1F108 8002E908 0000C3A6 */  sh         $v1, 0x0($s6)
/* 1F10C 8002E90C 46000324 */  addiu      $v1, $zero, 0x46
/* 1F110 8002E910 23106200 */  subu       $v0, $v1, $v0
/* 1F114 8002E914 0400D5AE */  sw         $s5, 0x4($s6)
/* 1F118 8002E918 0800D3AE */  sw         $s3, 0x8($s6)
/* 1F11C 8002E91C 0C00D0AE */  sw         $s0, 0xC($s6)
/* 1F120 8002E920 1000D1AE */  sw         $s1, 0x10($s6)
/* 1F124 8002E924 1400D4AE */  sw         $s4, 0x14($s6)
/* 1F128 8002E928 1800D2AE */  sw         $s2, 0x18($s6)
/* 1F12C 8002E92C 0200C2A6 */  sh         $v0, 0x2($s6)
/* 1F130 8002E930 4C00E392 */  lbu        $v1, 0x4C($s7)
/* 1F134 8002E934 4400A58F */  lw         $a1, 0x44($sp)
/* 1F138 8002E938 00000000 */  nop
/* 1F13C 8002E93C 0400A3A0 */  sb         $v1, 0x4($a1)
/* 1F140 8002E940 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1F144 8002E944 00000000 */  nop
/* 1F148 8002E948 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1F14C 8002E94C 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1F150 8002E950 00000000 */  nop
/* 1F154 8002E954 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1F158 8002E958 4C00E492 */  lbu        $a0, 0x4C($s7)
/* 1F15C 8002E95C 4C00A58F */  lw         $a1, 0x4C($sp)
/* 1F160 8002E960 00000000 */  nop
/* 1F164 8002E964 0400A4A0 */  sb         $a0, 0x4($a1)
/* 1F168 8002E968 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1F16C 8002E96C 00000000 */  nop
/* 1F170 8002E970 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1F174 8002E974 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1F178 8002E978 3400B18F */  lw         $s1, 0x34($sp)
/* 1F17C 8002E97C 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1F180 8002E980 0800E28E */  lw         $v0, 0x8($s7)
/* 1F184 8002E984 4800B68F */  lw         $s6, 0x48($sp)
/* 1F188 8002E988 2A102202 */  slt        $v0, $s1, $v0
/* 1F18C 8002E98C 49FF4014 */  bnez       $v0, .L8002E6B4
/* 1F190 8002E990 00000000 */   nop
/* 1F194 8002E994 0800E28E */  lw         $v0, 0x8($s7)
.L8002E998:
/* 1F198 8002E998 00000000 */  nop
/* 1F19C 8002E99C 09004018 */  blez       $v0, .L8002E9C4
/* 1F1A0 8002E9A0 21180000 */   addu      $v1, $zero, $zero
.L8002E9A4:
/* 1F1A4 8002E9A4 1000A48F */  lw         $a0, 0x10($sp)
/* 1F1A8 8002E9A8 01006324 */  addiu      $v1, $v1, 0x1
/* 1F1AC 8002E9AC 000080A4 */  sh         $zero, 0x0($a0)
/* 1F1B0 8002E9B0 0800E28E */  lw         $v0, 0x8($s7)
/* 1F1B4 8002E9B4 74008424 */  addiu      $a0, $a0, 0x74
/* 1F1B8 8002E9B8 2A106200 */  slt        $v0, $v1, $v0
/* 1F1BC 8002E9BC F9FF4014 */  bnez       $v0, .L8002E9A4
/* 1F1C0 8002E9C0 1000A4AF */   sw        $a0, 0x10($sp)
.L8002E9C4:
/* 1F1C4 8002E9C4 7400BF8F */  lw         $ra, 0x74($sp)
/* 1F1C8 8002E9C8 7000BE8F */  lw         $fp, 0x70($sp)
/* 1F1CC 8002E9CC 01000224 */  addiu      $v0, $zero, 0x1
/* 1F1D0 8002E9D0 0000E2AE */  sw         $v0, 0x0($s7)
/* 1F1D4 8002E9D4 6C00B78F */  lw         $s7, 0x6C($sp)
/* 1F1D8 8002E9D8 6800B68F */  lw         $s6, 0x68($sp)
/* 1F1DC 8002E9DC 6400B58F */  lw         $s5, 0x64($sp)
/* 1F1E0 8002E9E0 6000B48F */  lw         $s4, 0x60($sp)
/* 1F1E4 8002E9E4 5C00B38F */  lw         $s3, 0x5C($sp)
/* 1F1E8 8002E9E8 5800B28F */  lw         $s2, 0x58($sp)
/* 1F1EC 8002E9EC 5400B18F */  lw         $s1, 0x54($sp)
/* 1F1F0 8002E9F0 5000B08F */  lw         $s0, 0x50($sp)
/* 1F1F4 8002E9F4 0800E003 */  jr         $ra
/* 1F1F8 8002E9F8 7800BD27 */   addiu     $sp, $sp, 0x78
.size ParticlePickupFairyDustReInit, . - ParticlePickupFairyDustReInit
