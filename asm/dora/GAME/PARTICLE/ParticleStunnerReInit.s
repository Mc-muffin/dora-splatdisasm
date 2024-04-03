.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleStunnerReInit
/* 1D670 8002CE70 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 1D674 8002CE74 5400B5AF */  sw         $s5, 0x54($sp)
/* 1D678 8002CE78 21A88000 */  addu       $s5, $a0, $zero
/* 1D67C 8002CE7C 12000224 */  addiu      $v0, $zero, 0x12
/* 1D680 8002CE80 6400BFAF */  sw         $ra, 0x64($sp)
/* 1D684 8002CE84 6000BEAF */  sw         $fp, 0x60($sp)
/* 1D688 8002CE88 5C00B7AF */  sw         $s7, 0x5C($sp)
/* 1D68C 8002CE8C 5800B6AF */  sw         $s6, 0x58($sp)
/* 1D690 8002CE90 5000B4AF */  sw         $s4, 0x50($sp)
/* 1D694 8002CE94 4C00B3AF */  sw         $s3, 0x4C($sp)
/* 1D698 8002CE98 4800B2AF */  sw         $s2, 0x48($sp)
/* 1D69C 8002CE9C 4400B1AF */  sw         $s1, 0x44($sp)
/* 1D6A0 8002CEA0 4000B0AF */  sw         $s0, 0x40($sp)
/* 1D6A4 8002CEA4 1000A5AF */  sw         $a1, 0x10($sp)
/* 1D6A8 8002CEA8 1400A6AF */  sw         $a2, 0x14($sp)
/* 1D6AC 8002CEAC 1800A7AF */  sw         $a3, 0x18($sp)
/* 1D6B0 8002CEB0 0C00A2AE */  sw         $v0, 0xC($s5)
/* 1D6B4 8002CEB4 1000A38F */  lw         $v1, 0x10($sp)
/* 1D6B8 8002CEB8 4000B48E */  lw         $s4, 0x40($s5)
/* 1D6BC 8002CEBC 3000B78E */  lw         $s7, 0x30($s5)
/* 1D6C0 8002CEC0 2400A3AE */  sw         $v1, 0x24($s5)
/* 1D6C4 8002CEC4 1400A28F */  lw         $v0, 0x14($sp)
/* 1D6C8 8002CEC8 00000000 */  nop
/* 1D6CC 8002CECC 2800A2AE */  sw         $v0, 0x28($s5)
/* 1D6D0 8002CED0 1800A38F */  lw         $v1, 0x18($sp)
/* 1D6D4 8002CED4 C8000224 */  addiu      $v0, $zero, 0xC8
/* 1D6D8 8002CED8 4A00A2A6 */  sh         $v0, 0x4A($s5)
/* 1D6DC 8002CEDC 3400A28E */  lw         $v0, 0x34($s5)
/* 1D6E0 8002CEE0 2C00A3AE */  sw         $v1, 0x2C($s5)
/* 1D6E4 8002CEE4 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 1D6E8 8002CEE8 3800B68E */  lw         $s6, 0x38($s5)
/* 1D6EC 8002CEEC 0400A28E */  lw         $v0, 0x4($s5)
/* 1D6F0 8002CEF0 3C00BE8E */  lw         $fp, 0x3C($s5)
/* 1D6F4 8002CEF4 04004014 */  bnez       $v0, .L8002CF08
/* 1D6F8 8002CEF8 00000000 */   nop
/* 1D6FC 8002CEFC 1000A0AF */  sw         $zero, 0x10($sp)
/* 1D700 8002CF00 1400A0AF */  sw         $zero, 0x14($sp)
/* 1D704 8002CF04 1800A0AF */  sw         $zero, 0x18($sp)
.L8002CF08:
/* 1D708 8002CF08 0800A28E */  lw         $v0, 0x8($s5)
/* 1D70C 8002CF0C 00000000 */  nop
/* 1D710 8002CF10 9E004018 */  blez       $v0, .L8002D18C
/* 1D714 8002CF14 21880000 */   addu      $s1, $zero, $zero
.L8002CF18:
/* 1D718 8002CF18 D140010C */  jal        u32Random
/* 1D71C 8002CF1C FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1D720 8002CF20 21804000 */  addu       $s0, $v0, $zero
/* 1D724 8002CF24 D140010C */  jal        u32Random
/* 1D728 8002CF28 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1D72C 8002CF2C 1C00A38F */  lw         $v1, 0x1C($sp)
/* 1D730 8002CF30 00000000 */  nop
/* 1D734 8002CF34 2700E312 */  beq        $s7, $v1, .L8002CFD4
/* 1D738 8002CF38 21984000 */   addu      $s3, $v0, $zero
/* 1D73C 8002CF3C 1000A28F */  lw         $v0, 0x10($sp)
/* 1D740 8002CF40 1400A38F */  lw         $v1, 0x14($sp)
/* 1D744 8002CF44 01003126 */  addiu      $s1, $s1, 0x1
/* 1D748 8002CF48 2400B1AF */  sw         $s1, 0x24($sp)
/* 1D74C 8002CF4C 00120200 */  sll        $v0, $v0, 8
/* 1D750 8002CF50 2800A2AF */  sw         $v0, 0x28($sp)
/* 1D754 8002CF54 1800A28F */  lw         $v0, 0x18($sp)
/* 1D758 8002CF58 001A0300 */  sll        $v1, $v1, 8
/* 1D75C 8002CF5C 2C00A3AF */  sw         $v1, 0x2C($sp)
/* 1D760 8002CF60 1C008326 */  addiu      $v1, $s4, 0x1C
/* 1D764 8002CF64 3400A3AF */  sw         $v1, 0x34($sp)
/* 1D768 8002CF68 74008326 */  addiu      $v1, $s4, 0x74
/* 1D76C 8002CF6C 3800A3AF */  sw         $v1, 0x38($sp)
/* 1D770 8002CF70 00120200 */  sll        $v0, $v0, 8
/* 1D774 8002CF74 3000A2AF */  sw         $v0, 0x30($sp)
/* 1D778 8002CF78 44008226 */  addiu      $v0, $s4, 0x44
/* 1D77C 8002CF7C 2000A2AF */  sw         $v0, 0x20($sp)
/* 1D780 8002CF80 2A101702 */  slt        $v0, $s0, $s7
/* 1D784 8002CF84 06004014 */  bnez       $v0, .L8002CFA0
/* 1D788 8002CF88 00000000 */   nop
/* 1D78C 8002CF8C 1C00A38F */  lw         $v1, 0x1C($sp)
/* 1D790 8002CF90 00000000 */  nop
/* 1D794 8002CF94 2A107000 */  slt        $v0, $v1, $s0
/* 1D798 8002CF98 20004010 */  beqz       $v0, .L8002D01C
/* 1D79C 8002CF9C 00000000 */   nop
.L8002CFA0:
/* 1D7A0 8002CFA0 D140010C */  jal        u32Random
/* 1D7A4 8002CFA4 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1D7A8 8002CFA8 21804000 */  addu       $s0, $v0, $zero
/* 1D7AC 8002CFAC 2A101702 */  slt        $v0, $s0, $s7
/* 1D7B0 8002CFB0 FBFF4014 */  bnez       $v0, .L8002CFA0
/* 1D7B4 8002CFB4 00000000 */   nop
/* 1D7B8 8002CFB8 1C00A38F */  lw         $v1, 0x1C($sp)
/* 1D7BC 8002CFBC 00000000 */  nop
/* 1D7C0 8002CFC0 2A107000 */  slt        $v0, $v1, $s0
/* 1D7C4 8002CFC4 F6FF4014 */  bnez       $v0, .L8002CFA0
/* 1D7C8 8002CFC8 00000000 */   nop
/* 1D7CC 8002CFCC 07B40008 */  j          .L8002D01C
/* 1D7D0 8002CFD0 00000000 */   nop
.L8002CFD4:
/* 1D7D4 8002CFD4 2180E002 */  addu       $s0, $s7, $zero
/* 1D7D8 8002CFD8 1000A28F */  lw         $v0, 0x10($sp)
/* 1D7DC 8002CFDC 1400A38F */  lw         $v1, 0x14($sp)
/* 1D7E0 8002CFE0 01003126 */  addiu      $s1, $s1, 0x1
/* 1D7E4 8002CFE4 2400B1AF */  sw         $s1, 0x24($sp)
/* 1D7E8 8002CFE8 00120200 */  sll        $v0, $v0, 8
/* 1D7EC 8002CFEC 2800A2AF */  sw         $v0, 0x28($sp)
/* 1D7F0 8002CFF0 1800A28F */  lw         $v0, 0x18($sp)
/* 1D7F4 8002CFF4 001A0300 */  sll        $v1, $v1, 8
/* 1D7F8 8002CFF8 2C00A3AF */  sw         $v1, 0x2C($sp)
/* 1D7FC 8002CFFC 1C008326 */  addiu      $v1, $s4, 0x1C
/* 1D800 8002D000 3400A3AF */  sw         $v1, 0x34($sp)
/* 1D804 8002D004 74008326 */  addiu      $v1, $s4, 0x74
/* 1D808 8002D008 3800A3AF */  sw         $v1, 0x38($sp)
/* 1D80C 8002D00C 00120200 */  sll        $v0, $v0, 8
/* 1D810 8002D010 3000A2AF */  sw         $v0, 0x30($sp)
/* 1D814 8002D014 44008226 */  addiu      $v0, $s4, 0x44
/* 1D818 8002D018 2000A2AF */  sw         $v0, 0x20($sp)
.L8002D01C:
/* 1D81C 8002D01C 0F00DE12 */  beq        $s6, $fp, .L8002D05C
/* 1D820 8002D020 2A107602 */   slt       $v0, $s3, $s6
/* 1D824 8002D024 03004014 */  bnez       $v0, .L8002D034
/* 1D828 8002D028 2A10D303 */   slt       $v0, $fp, $s3
/* 1D82C 8002D02C 0C004010 */  beqz       $v0, .L8002D060
/* 1D830 8002D030 00000000 */   nop
.L8002D034:
/* 1D834 8002D034 D140010C */  jal        u32Random
/* 1D838 8002D038 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1D83C 8002D03C 21984000 */  addu       $s3, $v0, $zero
/* 1D840 8002D040 2A107602 */  slt        $v0, $s3, $s6
/* 1D844 8002D044 FBFF4014 */  bnez       $v0, .L8002D034
/* 1D848 8002D048 2A10D303 */   slt       $v0, $fp, $s3
/* 1D84C 8002D04C F9FF4014 */  bnez       $v0, .L8002D034
/* 1D850 8002D050 00000000 */   nop
/* 1D854 8002D054 18B40008 */  j          .L8002D060
/* 1D858 8002D058 00000000 */   nop
.L8002D05C:
/* 1D85C 8002D05C 2198C002 */  addu       $s3, $s6, $zero
.L8002D060:
/* 1D860 8002D060 7BEB010C */  jal        rcos
/* 1D864 8002D064 21200002 */   addu      $a0, $s0, $zero
/* 1D868 8002D068 21200002 */  addu       $a0, $s0, $zero
/* 1D86C 8002D06C 47EB010C */  jal        rsin
/* 1D870 8002D070 21904000 */   addu      $s2, $v0, $zero
/* 1D874 8002D074 21206002 */  addu       $a0, $s3, $zero
/* 1D878 8002D078 7BEB010C */  jal        rcos
/* 1D87C 8002D07C 21884000 */   addu      $s1, $v0, $zero
/* 1D880 8002D080 21206002 */  addu       $a0, $s3, $zero
/* 1D884 8002D084 47EB010C */  jal        rsin
/* 1D888 8002D088 21804000 */   addu      $s0, $v0, $zero
/* 1D88C 8002D08C 18003002 */  mult       $s1, $s0
/* 1D890 8002D090 12880000 */  mflo       $s1
/* 1D894 8002D094 00000000 */  nop
/* 1D898 8002D098 00000000 */  nop
/* 1D89C 8002D09C 18005002 */  mult       $s2, $s0
/* 1D8A0 8002D0A0 12900000 */  mflo       $s2
/* 1D8A4 8002D0A4 05000324 */  addiu      $v1, $zero, 0x5
/* 1D8A8 8002D0A8 038B1100 */  sra        $s1, $s1, 12
/* 1D8AC 8002D0AC 18002302 */  mult       $s1, $v1
/* 1D8B0 8002D0B0 12880000 */  mflo       $s1
/* 1D8B4 8002D0B4 00000000 */  nop
/* 1D8B8 8002D0B8 00000000 */  nop
/* 1D8BC 8002D0BC 18004300 */  mult       $v0, $v1
/* 1D8C0 8002D0C0 12800000 */  mflo       $s0
/* 1D8C4 8002D0C4 03931200 */  sra        $s2, $s2, 12
/* 1D8C8 8002D0C8 00000000 */  nop
/* 1D8CC 8002D0CC 18004302 */  mult       $s2, $v1
/* 1D8D0 8002D0D0 06000424 */  addiu      $a0, $zero, 0x6
/* 1D8D4 8002D0D4 03891100 */  sra        $s1, $s1, 4
/* 1D8D8 8002D0D8 03811000 */  sra        $s0, $s0, 4
/* 1D8DC 8002D0DC 12900000 */  mflo       $s2
/* 1D8E0 8002D0E0 D140010C */  jal        u32Random
/* 1D8E4 8002D0E4 03911200 */   sra       $s2, $s2, 4
/* 1D8E8 8002D0E8 01000324 */  addiu      $v1, $zero, 0x1
/* 1D8EC 8002D0EC 000083A6 */  sh         $v1, 0x0($s4)
/* 1D8F0 8002D0F0 2800A38F */  lw         $v1, 0x28($sp)
/* 1D8F4 8002D0F4 00000000 */  nop
/* 1D8F8 8002D0F8 040083AE */  sw         $v1, 0x4($s4)
/* 1D8FC 8002D0FC 2C00A38F */  lw         $v1, 0x2C($sp)
/* 1D900 8002D100 00000000 */  nop
/* 1D904 8002D104 080083AE */  sw         $v1, 0x8($s4)
/* 1D908 8002D108 3000A38F */  lw         $v1, 0x30($sp)
/* 1D90C 8002D10C 100091AE */  sw         $s1, 0x10($s4)
/* 1D910 8002D110 140090AE */  sw         $s0, 0x14($s4)
/* 1D914 8002D114 180092AE */  sw         $s2, 0x18($s4)
/* 1D918 8002D118 0C0083AE */  sw         $v1, 0xC($s4)
/* 1D91C 8002D11C 12000324 */  addiu      $v1, $zero, 0x12
/* 1D920 8002D120 23106200 */  subu       $v0, $v1, $v0
/* 1D924 8002D124 020082A6 */  sh         $v0, 0x2($s4)
/* 1D928 8002D128 4C00A392 */  lbu        $v1, 0x4C($s5)
/* 1D92C 8002D12C 3400A58F */  lw         $a1, 0x34($sp)
/* 1D930 8002D130 00000000 */  nop
/* 1D934 8002D134 0400A3A0 */  sb         $v1, 0x4($a1)
/* 1D938 8002D138 4D00A292 */  lbu        $v0, 0x4D($s5)
/* 1D93C 8002D13C 00000000 */  nop
/* 1D940 8002D140 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1D944 8002D144 4E00A392 */  lbu        $v1, 0x4E($s5)
/* 1D948 8002D148 00000000 */  nop
/* 1D94C 8002D14C 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1D950 8002D150 4C00A492 */  lbu        $a0, 0x4C($s5)
/* 1D954 8002D154 2000A58F */  lw         $a1, 0x20($sp)
/* 1D958 8002D158 00000000 */  nop
/* 1D95C 8002D15C 0400A4A0 */  sb         $a0, 0x4($a1)
/* 1D960 8002D160 4D00A292 */  lbu        $v0, 0x4D($s5)
/* 1D964 8002D164 00000000 */  nop
/* 1D968 8002D168 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1D96C 8002D16C 4E00A392 */  lbu        $v1, 0x4E($s5)
/* 1D970 8002D170 2400B18F */  lw         $s1, 0x24($sp)
/* 1D974 8002D174 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1D978 8002D178 0800A28E */  lw         $v0, 0x8($s5)
/* 1D97C 8002D17C 3800B48F */  lw         $s4, 0x38($sp)
/* 1D980 8002D180 2A102202 */  slt        $v0, $s1, $v0
/* 1D984 8002D184 64FF4014 */  bnez       $v0, .L8002CF18
/* 1D988 8002D188 00000000 */   nop
.L8002D18C:
/* 1D98C 8002D18C 6400BF8F */  lw         $ra, 0x64($sp)
/* 1D990 8002D190 6000BE8F */  lw         $fp, 0x60($sp)
/* 1D994 8002D194 5C00B78F */  lw         $s7, 0x5C($sp)
/* 1D998 8002D198 5800B68F */  lw         $s6, 0x58($sp)
/* 1D99C 8002D19C 01000224 */  addiu      $v0, $zero, 0x1
/* 1D9A0 8002D1A0 0000A2AE */  sw         $v0, 0x0($s5)
/* 1D9A4 8002D1A4 5400B58F */  lw         $s5, 0x54($sp)
/* 1D9A8 8002D1A8 5000B48F */  lw         $s4, 0x50($sp)
/* 1D9AC 8002D1AC 4C00B38F */  lw         $s3, 0x4C($sp)
/* 1D9B0 8002D1B0 4800B28F */  lw         $s2, 0x48($sp)
/* 1D9B4 8002D1B4 4400B18F */  lw         $s1, 0x44($sp)
/* 1D9B8 8002D1B8 4000B08F */  lw         $s0, 0x40($sp)
/* 1D9BC 8002D1BC 0800E003 */  jr         $ra
/* 1D9C0 8002D1C0 6800BD27 */   addiu     $sp, $sp, 0x68
.size ParticleStunnerReInit, . - ParticleStunnerReInit
