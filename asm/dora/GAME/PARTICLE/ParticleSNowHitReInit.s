.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleSNowHitReInit
/* 1AE3C 8002A63C 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 1AE40 8002A640 6400B7AF */  sw         $s7, 0x64($sp)
/* 1AE44 8002A644 21B88000 */  addu       $s7, $a0, $zero
/* 1AE48 8002A648 14000224 */  addiu      $v0, $zero, 0x14
/* 1AE4C 8002A64C 6C00BFAF */  sw         $ra, 0x6C($sp)
/* 1AE50 8002A650 6800BEAF */  sw         $fp, 0x68($sp)
/* 1AE54 8002A654 6000B6AF */  sw         $s6, 0x60($sp)
/* 1AE58 8002A658 5C00B5AF */  sw         $s5, 0x5C($sp)
/* 1AE5C 8002A65C 5800B4AF */  sw         $s4, 0x58($sp)
/* 1AE60 8002A660 5400B3AF */  sw         $s3, 0x54($sp)
/* 1AE64 8002A664 5000B2AF */  sw         $s2, 0x50($sp)
/* 1AE68 8002A668 4C00B1AF */  sw         $s1, 0x4C($sp)
/* 1AE6C 8002A66C 4800B0AF */  sw         $s0, 0x48($sp)
/* 1AE70 8002A670 1000A5AF */  sw         $a1, 0x10($sp)
/* 1AE74 8002A674 1400A6AF */  sw         $a2, 0x14($sp)
/* 1AE78 8002A678 1800A7AF */  sw         $a3, 0x18($sp)
/* 1AE7C 8002A67C 0C00E2AE */  sw         $v0, 0xC($s7)
/* 1AE80 8002A680 1000A38F */  lw         $v1, 0x10($sp)
/* 1AE84 8002A684 4000F68E */  lw         $s6, 0x40($s7)
/* 1AE88 8002A688 2400E3AE */  sw         $v1, 0x24($s7)
/* 1AE8C 8002A68C 1400A28F */  lw         $v0, 0x14($sp)
/* 1AE90 8002A690 00000000 */  nop
/* 1AE94 8002A694 2800E2AE */  sw         $v0, 0x28($s7)
/* 1AE98 8002A698 1800A38F */  lw         $v1, 0x18($sp)
/* 1AE9C 8002A69C C8000224 */  addiu      $v0, $zero, 0xC8
/* 1AEA0 8002A6A0 4A00E2A6 */  sh         $v0, 0x4A($s7)
/* 1AEA4 8002A6A4 3000E28E */  lw         $v0, 0x30($s7)
/* 1AEA8 8002A6A8 2C00E3AE */  sw         $v1, 0x2C($s7)
/* 1AEAC 8002A6AC 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 1AEB0 8002A6B0 3400E38E */  lw         $v1, 0x34($s7)
/* 1AEB4 8002A6B4 00000000 */  nop
/* 1AEB8 8002A6B8 2000A3AF */  sw         $v1, 0x20($sp)
/* 1AEBC 8002A6BC 3C00E38E */  lw         $v1, 0x3C($s7)
/* 1AEC0 8002A6C0 3800FE8E */  lw         $fp, 0x38($s7)
/* 1AEC4 8002A6C4 0400E28E */  lw         $v0, 0x4($s7)
/* 1AEC8 8002A6C8 00000000 */  nop
/* 1AECC 8002A6CC 04004014 */  bnez       $v0, .L8002A6E0
/* 1AED0 8002A6D0 2400A3AF */   sw        $v1, 0x24($sp)
/* 1AED4 8002A6D4 1000A0AF */  sw         $zero, 0x10($sp)
/* 1AED8 8002A6D8 1400A0AF */  sw         $zero, 0x14($sp)
/* 1AEDC 8002A6DC 1800A0AF */  sw         $zero, 0x18($sp)
.L8002A6E0:
/* 1AEE0 8002A6E0 0800E28E */  lw         $v0, 0x8($s7)
/* 1AEE4 8002A6E4 00000000 */  nop
/* 1AEE8 8002A6E8 B9004018 */  blez       $v0, .L8002A9D0
/* 1AEEC 8002A6EC 21880000 */   addu      $s1, $zero, $zero
.L8002A6F0:
/* 1AEF0 8002A6F0 D140010C */  jal        u32Random
/* 1AEF4 8002A6F4 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1AEF8 8002A6F8 21804000 */  addu       $s0, $v0, $zero
/* 1AEFC 8002A6FC D140010C */  jal        u32Random
/* 1AF00 8002A700 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1AF04 8002A704 21984000 */  addu       $s3, $v0, $zero
/* 1AF08 8002A708 1C00A28F */  lw         $v0, 0x1C($sp)
/* 1AF0C 8002A70C 2000A38F */  lw         $v1, 0x20($sp)
/* 1AF10 8002A710 00000000 */  nop
/* 1AF14 8002A714 29004310 */  beq        $v0, $v1, .L8002A7BC
/* 1AF18 8002A718 00000000 */   nop
/* 1AF1C 8002A71C 1000A28F */  lw         $v0, 0x10($sp)
/* 1AF20 8002A720 1400A38F */  lw         $v1, 0x14($sp)
/* 1AF24 8002A724 01003126 */  addiu      $s1, $s1, 0x1
/* 1AF28 8002A728 3000B1AF */  sw         $s1, 0x30($sp)
/* 1AF2C 8002A72C 00120200 */  sll        $v0, $v0, 8
/* 1AF30 8002A730 3400A2AF */  sw         $v0, 0x34($sp)
/* 1AF34 8002A734 1800A28F */  lw         $v0, 0x18($sp)
/* 1AF38 8002A738 001A0300 */  sll        $v1, $v1, 8
/* 1AF3C 8002A73C 3800A3AF */  sw         $v1, 0x38($sp)
/* 1AF40 8002A740 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1AF44 8002A744 4000A3AF */  sw         $v1, 0x40($sp)
/* 1AF48 8002A748 7400C326 */  addiu      $v1, $s6, 0x74
/* 1AF4C 8002A74C 2800A3AF */  sw         $v1, 0x28($sp)
/* 1AF50 8002A750 1C00A38F */  lw         $v1, 0x1C($sp)
/* 1AF54 8002A754 00120200 */  sll        $v0, $v0, 8
/* 1AF58 8002A758 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 1AF5C 8002A75C 4400C226 */  addiu      $v0, $s6, 0x44
/* 1AF60 8002A760 2C00A2AF */  sw         $v0, 0x2C($sp)
/* 1AF64 8002A764 2A100302 */  slt        $v0, $s0, $v1
/* 1AF68 8002A768 06004014 */  bnez       $v0, .L8002A784
/* 1AF6C 8002A76C 00000000 */   nop
/* 1AF70 8002A770 2000A38F */  lw         $v1, 0x20($sp)
/* 1AF74 8002A774 00000000 */  nop
/* 1AF78 8002A778 2A107000 */  slt        $v0, $v1, $s0
/* 1AF7C 8002A77C 21004010 */  beqz       $v0, .L8002A804
/* 1AF80 8002A780 00000000 */   nop
.L8002A784:
/* 1AF84 8002A784 D140010C */  jal        u32Random
/* 1AF88 8002A788 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1AF8C 8002A78C 1C00A38F */  lw         $v1, 0x1C($sp)
/* 1AF90 8002A790 21804000 */  addu       $s0, $v0, $zero
/* 1AF94 8002A794 2A100302 */  slt        $v0, $s0, $v1
/* 1AF98 8002A798 FAFF4014 */  bnez       $v0, .L8002A784
/* 1AF9C 8002A79C 00000000 */   nop
/* 1AFA0 8002A7A0 2000A38F */  lw         $v1, 0x20($sp)
/* 1AFA4 8002A7A4 00000000 */  nop
/* 1AFA8 8002A7A8 2A107000 */  slt        $v0, $v1, $s0
/* 1AFAC 8002A7AC F5FF4014 */  bnez       $v0, .L8002A784
/* 1AFB0 8002A7B0 00000000 */   nop
/* 1AFB4 8002A7B4 01AA0008 */  j          .L8002A804
/* 1AFB8 8002A7B8 00000000 */   nop
.L8002A7BC:
/* 1AFBC 8002A7BC 1C00B08F */  lw         $s0, 0x1C($sp)
/* 1AFC0 8002A7C0 1000A28F */  lw         $v0, 0x10($sp)
/* 1AFC4 8002A7C4 1400A38F */  lw         $v1, 0x14($sp)
/* 1AFC8 8002A7C8 01003126 */  addiu      $s1, $s1, 0x1
/* 1AFCC 8002A7CC 3000B1AF */  sw         $s1, 0x30($sp)
/* 1AFD0 8002A7D0 00120200 */  sll        $v0, $v0, 8
/* 1AFD4 8002A7D4 3400A2AF */  sw         $v0, 0x34($sp)
/* 1AFD8 8002A7D8 1800A28F */  lw         $v0, 0x18($sp)
/* 1AFDC 8002A7DC 001A0300 */  sll        $v1, $v1, 8
/* 1AFE0 8002A7E0 3800A3AF */  sw         $v1, 0x38($sp)
/* 1AFE4 8002A7E4 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1AFE8 8002A7E8 4000A3AF */  sw         $v1, 0x40($sp)
/* 1AFEC 8002A7EC 7400C326 */  addiu      $v1, $s6, 0x74
/* 1AFF0 8002A7F0 2800A3AF */  sw         $v1, 0x28($sp)
/* 1AFF4 8002A7F4 00120200 */  sll        $v0, $v0, 8
/* 1AFF8 8002A7F8 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 1AFFC 8002A7FC 4400C226 */  addiu      $v0, $s6, 0x44
/* 1B000 8002A800 2C00A2AF */  sw         $v0, 0x2C($sp)
.L8002A804:
/* 1B004 8002A804 2400A28F */  lw         $v0, 0x24($sp)
/* 1B008 8002A808 00000000 */  nop
/* 1B00C 8002A80C 1500C213 */  beq        $fp, $v0, .L8002A864
/* 1B010 8002A810 2A107E02 */   slt       $v0, $s3, $fp
/* 1B014 8002A814 06004014 */  bnez       $v0, .L8002A830
/* 1B018 8002A818 00000000 */   nop
/* 1B01C 8002A81C 2400A38F */  lw         $v1, 0x24($sp)
/* 1B020 8002A820 00000000 */  nop
/* 1B024 8002A824 2A107300 */  slt        $v0, $v1, $s3
/* 1B028 8002A828 0F004010 */  beqz       $v0, .L8002A868
/* 1B02C 8002A82C 00000000 */   nop
.L8002A830:
/* 1B030 8002A830 D140010C */  jal        u32Random
/* 1B034 8002A834 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1B038 8002A838 21984000 */  addu       $s3, $v0, $zero
/* 1B03C 8002A83C 2A107E02 */  slt        $v0, $s3, $fp
/* 1B040 8002A840 FBFF4014 */  bnez       $v0, .L8002A830
/* 1B044 8002A844 00000000 */   nop
/* 1B048 8002A848 2400A38F */  lw         $v1, 0x24($sp)
/* 1B04C 8002A84C 00000000 */  nop
/* 1B050 8002A850 2A107300 */  slt        $v0, $v1, $s3
/* 1B054 8002A854 F6FF4014 */  bnez       $v0, .L8002A830
/* 1B058 8002A858 00000000 */   nop
/* 1B05C 8002A85C 1AAA0008 */  j          .L8002A868
/* 1B060 8002A860 00000000 */   nop
.L8002A864:
/* 1B064 8002A864 2198C003 */  addu       $s3, $fp, $zero
.L8002A868:
/* 1B068 8002A868 7BEB010C */  jal        rcos
/* 1B06C 8002A86C 21200002 */   addu      $a0, $s0, $zero
/* 1B070 8002A870 21200002 */  addu       $a0, $s0, $zero
/* 1B074 8002A874 47EB010C */  jal        rsin
/* 1B078 8002A878 21904000 */   addu      $s2, $v0, $zero
/* 1B07C 8002A87C 21206002 */  addu       $a0, $s3, $zero
/* 1B080 8002A880 7BEB010C */  jal        rcos
/* 1B084 8002A884 21884000 */   addu      $s1, $v0, $zero
/* 1B088 8002A888 21206002 */  addu       $a0, $s3, $zero
/* 1B08C 8002A88C 47EB010C */  jal        rsin
/* 1B090 8002A890 21804000 */   addu      $s0, $v0, $zero
/* 1B094 8002A894 18003002 */  mult       $s1, $s0
/* 1B098 8002A898 12880000 */  mflo       $s1
/* 1B09C 8002A89C 00000000 */  nop
/* 1B0A0 8002A8A0 00000000 */  nop
/* 1B0A4 8002A8A4 18005002 */  mult       $s2, $s0
/* 1B0A8 8002A8A8 12900000 */  mflo       $s2
/* 1B0AC 8002A8AC 14000324 */  addiu      $v1, $zero, 0x14
/* 1B0B0 8002A8B0 038B1100 */  sra        $s1, $s1, 12
/* 1B0B4 8002A8B4 18002302 */  mult       $s1, $v1
/* 1B0B8 8002A8B8 12A80000 */  mflo       $s5
/* 1B0BC 8002A8BC 21A04000 */  addu       $s4, $v0, $zero
/* 1B0C0 8002A8C0 00000000 */  nop
/* 1B0C4 8002A8C4 18008302 */  mult       $s4, $v1
/* 1B0C8 8002A8C8 12980000 */  mflo       $s3
/* 1B0CC 8002A8CC 03931200 */  sra        $s2, $s2, 12
/* 1B0D0 8002A8D0 00000000 */  nop
/* 1B0D4 8002A8D4 18004302 */  mult       $s2, $v1
/* 1B0D8 8002A8D8 12800000 */  mflo       $s0
/* 1B0DC 8002A8DC 0A000224 */  addiu      $v0, $zero, 0xA
/* 1B0E0 8002A8E0 00000000 */  nop
/* 1B0E4 8002A8E4 18002202 */  mult       $s1, $v0
/* 1B0E8 8002A8E8 12880000 */  mflo       $s1
/* 1B0EC 8002A8EC 00000000 */  nop
/* 1B0F0 8002A8F0 00000000 */  nop
/* 1B0F4 8002A8F4 18008202 */  mult       $s4, $v0
/* 1B0F8 8002A8F8 12A00000 */  mflo       $s4
/* 1B0FC 8002A8FC 04000424 */  addiu      $a0, $zero, 0x4
/* 1B100 8002A900 00000000 */  nop
/* 1B104 8002A904 18004202 */  mult       $s2, $v0
/* 1B108 8002A908 03A91500 */  sra        $s5, $s5, 4
/* 1B10C 8002A90C 3800A38F */  lw         $v1, 0x38($sp)
/* 1B110 8002A910 03991300 */  sra        $s3, $s3, 4
/* 1B114 8002A914 21987300 */  addu       $s3, $v1, $s3
/* 1B118 8002A918 03811000 */  sra        $s0, $s0, 4
/* 1B11C 8002A91C 3400A28F */  lw         $v0, 0x34($sp)
/* 1B120 8002A920 03891100 */  sra        $s1, $s1, 4
/* 1B124 8002A924 21A85500 */  addu       $s5, $v0, $s5
/* 1B128 8002A928 3C00A28F */  lw         $v0, 0x3C($sp)
/* 1B12C 8002A92C 03A11400 */  sra        $s4, $s4, 4
/* 1B130 8002A930 21805000 */  addu       $s0, $v0, $s0
/* 1B134 8002A934 12900000 */  mflo       $s2
/* 1B138 8002A938 D140010C */  jal        u32Random
/* 1B13C 8002A93C 03911200 */   sra       $s2, $s2, 4
/* 1B140 8002A940 01000324 */  addiu      $v1, $zero, 0x1
/* 1B144 8002A944 0000C3A6 */  sh         $v1, 0x0($s6)
/* 1B148 8002A948 14000324 */  addiu      $v1, $zero, 0x14
/* 1B14C 8002A94C 23106200 */  subu       $v0, $v1, $v0
/* 1B150 8002A950 0400D5AE */  sw         $s5, 0x4($s6)
/* 1B154 8002A954 0800D3AE */  sw         $s3, 0x8($s6)
/* 1B158 8002A958 0C00D0AE */  sw         $s0, 0xC($s6)
/* 1B15C 8002A95C 1000D1AE */  sw         $s1, 0x10($s6)
/* 1B160 8002A960 1400D4AE */  sw         $s4, 0x14($s6)
/* 1B164 8002A964 1800D2AE */  sw         $s2, 0x18($s6)
/* 1B168 8002A968 0200C2A6 */  sh         $v0, 0x2($s6)
/* 1B16C 8002A96C 4C00E392 */  lbu        $v1, 0x4C($s7)
/* 1B170 8002A970 4000A58F */  lw         $a1, 0x40($sp)
/* 1B174 8002A974 00000000 */  nop
/* 1B178 8002A978 0400A3A0 */  sb         $v1, 0x4($a1)
/* 1B17C 8002A97C 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1B180 8002A980 00000000 */  nop
/* 1B184 8002A984 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1B188 8002A988 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1B18C 8002A98C 00000000 */  nop
/* 1B190 8002A990 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1B194 8002A994 4C00E492 */  lbu        $a0, 0x4C($s7)
/* 1B198 8002A998 2C00A58F */  lw         $a1, 0x2C($sp)
/* 1B19C 8002A99C 00000000 */  nop
/* 1B1A0 8002A9A0 0400A4A0 */  sb         $a0, 0x4($a1)
/* 1B1A4 8002A9A4 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1B1A8 8002A9A8 00000000 */  nop
/* 1B1AC 8002A9AC 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1B1B0 8002A9B0 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1B1B4 8002A9B4 3000B18F */  lw         $s1, 0x30($sp)
/* 1B1B8 8002A9B8 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1B1BC 8002A9BC 0800E28E */  lw         $v0, 0x8($s7)
/* 1B1C0 8002A9C0 2800B68F */  lw         $s6, 0x28($sp)
/* 1B1C4 8002A9C4 2A102202 */  slt        $v0, $s1, $v0
/* 1B1C8 8002A9C8 49FF4014 */  bnez       $v0, .L8002A6F0
/* 1B1CC 8002A9CC 00000000 */   nop
.L8002A9D0:
/* 1B1D0 8002A9D0 6C00BF8F */  lw         $ra, 0x6C($sp)
/* 1B1D4 8002A9D4 6800BE8F */  lw         $fp, 0x68($sp)
/* 1B1D8 8002A9D8 01000224 */  addiu      $v0, $zero, 0x1
/* 1B1DC 8002A9DC 0000E2AE */  sw         $v0, 0x0($s7)
/* 1B1E0 8002A9E0 6400B78F */  lw         $s7, 0x64($sp)
/* 1B1E4 8002A9E4 6000B68F */  lw         $s6, 0x60($sp)
/* 1B1E8 8002A9E8 5C00B58F */  lw         $s5, 0x5C($sp)
/* 1B1EC 8002A9EC 5800B48F */  lw         $s4, 0x58($sp)
/* 1B1F0 8002A9F0 5400B38F */  lw         $s3, 0x54($sp)
/* 1B1F4 8002A9F4 5000B28F */  lw         $s2, 0x50($sp)
/* 1B1F8 8002A9F8 4C00B18F */  lw         $s1, 0x4C($sp)
/* 1B1FC 8002A9FC 4800B08F */  lw         $s0, 0x48($sp)
/* 1B200 8002AA00 0800E003 */  jr         $ra
/* 1B204 8002AA04 7000BD27 */   addiu     $sp, $sp, 0x70
.size ParticleSNowHitReInit, . - ParticleSNowHitReInit
