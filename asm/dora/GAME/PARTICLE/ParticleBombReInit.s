.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleBombReInit
/* 1CF78 8002C778 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 1CF7C 8002C77C 6400B7AF */  sw         $s7, 0x64($sp)
/* 1CF80 8002C780 21B88000 */  addu       $s7, $a0, $zero
/* 1CF84 8002C784 14000224 */  addiu      $v0, $zero, 0x14
/* 1CF88 8002C788 6C00BFAF */  sw         $ra, 0x6C($sp)
/* 1CF8C 8002C78C 6800BEAF */  sw         $fp, 0x68($sp)
/* 1CF90 8002C790 6000B6AF */  sw         $s6, 0x60($sp)
/* 1CF94 8002C794 5C00B5AF */  sw         $s5, 0x5C($sp)
/* 1CF98 8002C798 5800B4AF */  sw         $s4, 0x58($sp)
/* 1CF9C 8002C79C 5400B3AF */  sw         $s3, 0x54($sp)
/* 1CFA0 8002C7A0 5000B2AF */  sw         $s2, 0x50($sp)
/* 1CFA4 8002C7A4 4C00B1AF */  sw         $s1, 0x4C($sp)
/* 1CFA8 8002C7A8 4800B0AF */  sw         $s0, 0x48($sp)
/* 1CFAC 8002C7AC 1000A5AF */  sw         $a1, 0x10($sp)
/* 1CFB0 8002C7B0 1400A6AF */  sw         $a2, 0x14($sp)
/* 1CFB4 8002C7B4 1800A7AF */  sw         $a3, 0x18($sp)
/* 1CFB8 8002C7B8 0C00E2AE */  sw         $v0, 0xC($s7)
/* 1CFBC 8002C7BC 1000A38F */  lw         $v1, 0x10($sp)
/* 1CFC0 8002C7C0 4000F68E */  lw         $s6, 0x40($s7)
/* 1CFC4 8002C7C4 2400E3AE */  sw         $v1, 0x24($s7)
/* 1CFC8 8002C7C8 1400A28F */  lw         $v0, 0x14($sp)
/* 1CFCC 8002C7CC 00000000 */  nop
/* 1CFD0 8002C7D0 2800E2AE */  sw         $v0, 0x28($s7)
/* 1CFD4 8002C7D4 1800A38F */  lw         $v1, 0x18($sp)
/* 1CFD8 8002C7D8 C8000224 */  addiu      $v0, $zero, 0xC8
/* 1CFDC 8002C7DC 4A00E2A6 */  sh         $v0, 0x4A($s7)
/* 1CFE0 8002C7E0 3000E28E */  lw         $v0, 0x30($s7)
/* 1CFE4 8002C7E4 2C00E3AE */  sw         $v1, 0x2C($s7)
/* 1CFE8 8002C7E8 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 1CFEC 8002C7EC 3400E38E */  lw         $v1, 0x34($s7)
/* 1CFF0 8002C7F0 00000000 */  nop
/* 1CFF4 8002C7F4 2000A3AF */  sw         $v1, 0x20($sp)
/* 1CFF8 8002C7F8 3C00E38E */  lw         $v1, 0x3C($s7)
/* 1CFFC 8002C7FC 3800FE8E */  lw         $fp, 0x38($s7)
/* 1D000 8002C800 0400E28E */  lw         $v0, 0x4($s7)
/* 1D004 8002C804 00000000 */  nop
/* 1D008 8002C808 04004014 */  bnez       $v0, .L8002C81C
/* 1D00C 8002C80C 2400A3AF */   sw        $v1, 0x24($sp)
/* 1D010 8002C810 1000A0AF */  sw         $zero, 0x10($sp)
/* 1D014 8002C814 1400A0AF */  sw         $zero, 0x14($sp)
/* 1D018 8002C818 1800A0AF */  sw         $zero, 0x18($sp)
.L8002C81C:
/* 1D01C 8002C81C 0800E28E */  lw         $v0, 0x8($s7)
/* 1D020 8002C820 00000000 */  nop
/* 1D024 8002C824 B9004018 */  blez       $v0, .L8002CB0C
/* 1D028 8002C828 21880000 */   addu      $s1, $zero, $zero
.L8002C82C:
/* 1D02C 8002C82C D140010C */  jal        u32Random
/* 1D030 8002C830 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1D034 8002C834 21804000 */  addu       $s0, $v0, $zero
/* 1D038 8002C838 D140010C */  jal        u32Random
/* 1D03C 8002C83C FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1D040 8002C840 21984000 */  addu       $s3, $v0, $zero
/* 1D044 8002C844 1C00A28F */  lw         $v0, 0x1C($sp)
/* 1D048 8002C848 2000A38F */  lw         $v1, 0x20($sp)
/* 1D04C 8002C84C 00000000 */  nop
/* 1D050 8002C850 29004310 */  beq        $v0, $v1, .L8002C8F8
/* 1D054 8002C854 00000000 */   nop
/* 1D058 8002C858 1000A28F */  lw         $v0, 0x10($sp)
/* 1D05C 8002C85C 1400A38F */  lw         $v1, 0x14($sp)
/* 1D060 8002C860 01003126 */  addiu      $s1, $s1, 0x1
/* 1D064 8002C864 3000B1AF */  sw         $s1, 0x30($sp)
/* 1D068 8002C868 00120200 */  sll        $v0, $v0, 8
/* 1D06C 8002C86C 3400A2AF */  sw         $v0, 0x34($sp)
/* 1D070 8002C870 1800A28F */  lw         $v0, 0x18($sp)
/* 1D074 8002C874 001A0300 */  sll        $v1, $v1, 8
/* 1D078 8002C878 3800A3AF */  sw         $v1, 0x38($sp)
/* 1D07C 8002C87C 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1D080 8002C880 4000A3AF */  sw         $v1, 0x40($sp)
/* 1D084 8002C884 7400C326 */  addiu      $v1, $s6, 0x74
/* 1D088 8002C888 2800A3AF */  sw         $v1, 0x28($sp)
/* 1D08C 8002C88C 1C00A38F */  lw         $v1, 0x1C($sp)
/* 1D090 8002C890 00120200 */  sll        $v0, $v0, 8
/* 1D094 8002C894 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 1D098 8002C898 4400C226 */  addiu      $v0, $s6, 0x44
/* 1D09C 8002C89C 2C00A2AF */  sw         $v0, 0x2C($sp)
/* 1D0A0 8002C8A0 2A100302 */  slt        $v0, $s0, $v1
/* 1D0A4 8002C8A4 06004014 */  bnez       $v0, .L8002C8C0
/* 1D0A8 8002C8A8 00000000 */   nop
/* 1D0AC 8002C8AC 2000A38F */  lw         $v1, 0x20($sp)
/* 1D0B0 8002C8B0 00000000 */  nop
/* 1D0B4 8002C8B4 2A107000 */  slt        $v0, $v1, $s0
/* 1D0B8 8002C8B8 21004010 */  beqz       $v0, .L8002C940
/* 1D0BC 8002C8BC 00000000 */   nop
.L8002C8C0:
/* 1D0C0 8002C8C0 D140010C */  jal        u32Random
/* 1D0C4 8002C8C4 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1D0C8 8002C8C8 1C00A38F */  lw         $v1, 0x1C($sp)
/* 1D0CC 8002C8CC 21804000 */  addu       $s0, $v0, $zero
/* 1D0D0 8002C8D0 2A100302 */  slt        $v0, $s0, $v1
/* 1D0D4 8002C8D4 FAFF4014 */  bnez       $v0, .L8002C8C0
/* 1D0D8 8002C8D8 00000000 */   nop
/* 1D0DC 8002C8DC 2000A38F */  lw         $v1, 0x20($sp)
/* 1D0E0 8002C8E0 00000000 */  nop
/* 1D0E4 8002C8E4 2A107000 */  slt        $v0, $v1, $s0
/* 1D0E8 8002C8E8 F5FF4014 */  bnez       $v0, .L8002C8C0
/* 1D0EC 8002C8EC 00000000 */   nop
/* 1D0F0 8002C8F0 50B20008 */  j          .L8002C940
/* 1D0F4 8002C8F4 00000000 */   nop
.L8002C8F8:
/* 1D0F8 8002C8F8 1C00B08F */  lw         $s0, 0x1C($sp)
/* 1D0FC 8002C8FC 1000A28F */  lw         $v0, 0x10($sp)
/* 1D100 8002C900 1400A38F */  lw         $v1, 0x14($sp)
/* 1D104 8002C904 01003126 */  addiu      $s1, $s1, 0x1
/* 1D108 8002C908 3000B1AF */  sw         $s1, 0x30($sp)
/* 1D10C 8002C90C 00120200 */  sll        $v0, $v0, 8
/* 1D110 8002C910 3400A2AF */  sw         $v0, 0x34($sp)
/* 1D114 8002C914 1800A28F */  lw         $v0, 0x18($sp)
/* 1D118 8002C918 001A0300 */  sll        $v1, $v1, 8
/* 1D11C 8002C91C 3800A3AF */  sw         $v1, 0x38($sp)
/* 1D120 8002C920 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1D124 8002C924 4000A3AF */  sw         $v1, 0x40($sp)
/* 1D128 8002C928 7400C326 */  addiu      $v1, $s6, 0x74
/* 1D12C 8002C92C 2800A3AF */  sw         $v1, 0x28($sp)
/* 1D130 8002C930 00120200 */  sll        $v0, $v0, 8
/* 1D134 8002C934 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 1D138 8002C938 4400C226 */  addiu      $v0, $s6, 0x44
/* 1D13C 8002C93C 2C00A2AF */  sw         $v0, 0x2C($sp)
.L8002C940:
/* 1D140 8002C940 2400A28F */  lw         $v0, 0x24($sp)
/* 1D144 8002C944 00000000 */  nop
/* 1D148 8002C948 1500C213 */  beq        $fp, $v0, .L8002C9A0
/* 1D14C 8002C94C 2A107E02 */   slt       $v0, $s3, $fp
/* 1D150 8002C950 06004014 */  bnez       $v0, .L8002C96C
/* 1D154 8002C954 00000000 */   nop
/* 1D158 8002C958 2400A38F */  lw         $v1, 0x24($sp)
/* 1D15C 8002C95C 00000000 */  nop
/* 1D160 8002C960 2A107300 */  slt        $v0, $v1, $s3
/* 1D164 8002C964 0F004010 */  beqz       $v0, .L8002C9A4
/* 1D168 8002C968 00000000 */   nop
.L8002C96C:
/* 1D16C 8002C96C D140010C */  jal        u32Random
/* 1D170 8002C970 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1D174 8002C974 21984000 */  addu       $s3, $v0, $zero
/* 1D178 8002C978 2A107E02 */  slt        $v0, $s3, $fp
/* 1D17C 8002C97C FBFF4014 */  bnez       $v0, .L8002C96C
/* 1D180 8002C980 00000000 */   nop
/* 1D184 8002C984 2400A38F */  lw         $v1, 0x24($sp)
/* 1D188 8002C988 00000000 */  nop
/* 1D18C 8002C98C 2A107300 */  slt        $v0, $v1, $s3
/* 1D190 8002C990 F6FF4014 */  bnez       $v0, .L8002C96C
/* 1D194 8002C994 00000000 */   nop
/* 1D198 8002C998 69B20008 */  j          .L8002C9A4
/* 1D19C 8002C99C 00000000 */   nop
.L8002C9A0:
/* 1D1A0 8002C9A0 2198C003 */  addu       $s3, $fp, $zero
.L8002C9A4:
/* 1D1A4 8002C9A4 7BEB010C */  jal        rcos
/* 1D1A8 8002C9A8 21200002 */   addu      $a0, $s0, $zero
/* 1D1AC 8002C9AC 21200002 */  addu       $a0, $s0, $zero
/* 1D1B0 8002C9B0 47EB010C */  jal        rsin
/* 1D1B4 8002C9B4 21904000 */   addu      $s2, $v0, $zero
/* 1D1B8 8002C9B8 21206002 */  addu       $a0, $s3, $zero
/* 1D1BC 8002C9BC 7BEB010C */  jal        rcos
/* 1D1C0 8002C9C0 21884000 */   addu      $s1, $v0, $zero
/* 1D1C4 8002C9C4 21206002 */  addu       $a0, $s3, $zero
/* 1D1C8 8002C9C8 47EB010C */  jal        rsin
/* 1D1CC 8002C9CC 21804000 */   addu      $s0, $v0, $zero
/* 1D1D0 8002C9D0 18003002 */  mult       $s1, $s0
/* 1D1D4 8002C9D4 12880000 */  mflo       $s1
/* 1D1D8 8002C9D8 00000000 */  nop
/* 1D1DC 8002C9DC 00000000 */  nop
/* 1D1E0 8002C9E0 18005002 */  mult       $s2, $s0
/* 1D1E4 8002C9E4 12900000 */  mflo       $s2
/* 1D1E8 8002C9E8 2C000324 */  addiu      $v1, $zero, 0x2C
/* 1D1EC 8002C9EC 038B1100 */  sra        $s1, $s1, 12
/* 1D1F0 8002C9F0 18002302 */  mult       $s1, $v1
/* 1D1F4 8002C9F4 12A80000 */  mflo       $s5
/* 1D1F8 8002C9F8 21A04000 */  addu       $s4, $v0, $zero
/* 1D1FC 8002C9FC 00000000 */  nop
/* 1D200 8002CA00 18008302 */  mult       $s4, $v1
/* 1D204 8002CA04 12980000 */  mflo       $s3
/* 1D208 8002CA08 03931200 */  sra        $s2, $s2, 12
/* 1D20C 8002CA0C 00000000 */  nop
/* 1D210 8002CA10 18004302 */  mult       $s2, $v1
/* 1D214 8002CA14 12800000 */  mflo       $s0
/* 1D218 8002CA18 14000224 */  addiu      $v0, $zero, 0x14
/* 1D21C 8002CA1C 00000000 */  nop
/* 1D220 8002CA20 18002202 */  mult       $s1, $v0
/* 1D224 8002CA24 12880000 */  mflo       $s1
/* 1D228 8002CA28 00000000 */  nop
/* 1D22C 8002CA2C 00000000 */  nop
/* 1D230 8002CA30 18008202 */  mult       $s4, $v0
/* 1D234 8002CA34 12A00000 */  mflo       $s4
/* 1D238 8002CA38 04000424 */  addiu      $a0, $zero, 0x4
/* 1D23C 8002CA3C 00000000 */  nop
/* 1D240 8002CA40 18004202 */  mult       $s2, $v0
/* 1D244 8002CA44 03A91500 */  sra        $s5, $s5, 4
/* 1D248 8002CA48 3800A38F */  lw         $v1, 0x38($sp)
/* 1D24C 8002CA4C 03991300 */  sra        $s3, $s3, 4
/* 1D250 8002CA50 21987300 */  addu       $s3, $v1, $s3
/* 1D254 8002CA54 03811000 */  sra        $s0, $s0, 4
/* 1D258 8002CA58 3400A28F */  lw         $v0, 0x34($sp)
/* 1D25C 8002CA5C 03891100 */  sra        $s1, $s1, 4
/* 1D260 8002CA60 21A85500 */  addu       $s5, $v0, $s5
/* 1D264 8002CA64 3C00A28F */  lw         $v0, 0x3C($sp)
/* 1D268 8002CA68 03A11400 */  sra        $s4, $s4, 4
/* 1D26C 8002CA6C 21805000 */  addu       $s0, $v0, $s0
/* 1D270 8002CA70 12900000 */  mflo       $s2
/* 1D274 8002CA74 D140010C */  jal        u32Random
/* 1D278 8002CA78 03911200 */   sra       $s2, $s2, 4
/* 1D27C 8002CA7C 01000324 */  addiu      $v1, $zero, 0x1
/* 1D280 8002CA80 0000C3A6 */  sh         $v1, 0x0($s6)
/* 1D284 8002CA84 14000324 */  addiu      $v1, $zero, 0x14
/* 1D288 8002CA88 23106200 */  subu       $v0, $v1, $v0
/* 1D28C 8002CA8C 0400D5AE */  sw         $s5, 0x4($s6)
/* 1D290 8002CA90 0800D3AE */  sw         $s3, 0x8($s6)
/* 1D294 8002CA94 0C00D0AE */  sw         $s0, 0xC($s6)
/* 1D298 8002CA98 1000D1AE */  sw         $s1, 0x10($s6)
/* 1D29C 8002CA9C 1400D4AE */  sw         $s4, 0x14($s6)
/* 1D2A0 8002CAA0 1800D2AE */  sw         $s2, 0x18($s6)
/* 1D2A4 8002CAA4 0200C2A6 */  sh         $v0, 0x2($s6)
/* 1D2A8 8002CAA8 4C00E392 */  lbu        $v1, 0x4C($s7)
/* 1D2AC 8002CAAC 4000A58F */  lw         $a1, 0x40($sp)
/* 1D2B0 8002CAB0 00000000 */  nop
/* 1D2B4 8002CAB4 0400A3A0 */  sb         $v1, 0x4($a1)
/* 1D2B8 8002CAB8 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1D2BC 8002CABC 00000000 */  nop
/* 1D2C0 8002CAC0 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1D2C4 8002CAC4 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1D2C8 8002CAC8 00000000 */  nop
/* 1D2CC 8002CACC 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1D2D0 8002CAD0 4C00E492 */  lbu        $a0, 0x4C($s7)
/* 1D2D4 8002CAD4 2C00A58F */  lw         $a1, 0x2C($sp)
/* 1D2D8 8002CAD8 00000000 */  nop
/* 1D2DC 8002CADC 0400A4A0 */  sb         $a0, 0x4($a1)
/* 1D2E0 8002CAE0 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1D2E4 8002CAE4 00000000 */  nop
/* 1D2E8 8002CAE8 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1D2EC 8002CAEC 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1D2F0 8002CAF0 3000B18F */  lw         $s1, 0x30($sp)
/* 1D2F4 8002CAF4 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1D2F8 8002CAF8 0800E28E */  lw         $v0, 0x8($s7)
/* 1D2FC 8002CAFC 2800B68F */  lw         $s6, 0x28($sp)
/* 1D300 8002CB00 2A102202 */  slt        $v0, $s1, $v0
/* 1D304 8002CB04 49FF4014 */  bnez       $v0, .L8002C82C
/* 1D308 8002CB08 00000000 */   nop
.L8002CB0C:
/* 1D30C 8002CB0C 6C00BF8F */  lw         $ra, 0x6C($sp)
/* 1D310 8002CB10 6800BE8F */  lw         $fp, 0x68($sp)
/* 1D314 8002CB14 01000224 */  addiu      $v0, $zero, 0x1
/* 1D318 8002CB18 0000E2AE */  sw         $v0, 0x0($s7)
/* 1D31C 8002CB1C 6400B78F */  lw         $s7, 0x64($sp)
/* 1D320 8002CB20 6000B68F */  lw         $s6, 0x60($sp)
/* 1D324 8002CB24 5C00B58F */  lw         $s5, 0x5C($sp)
/* 1D328 8002CB28 5800B48F */  lw         $s4, 0x58($sp)
/* 1D32C 8002CB2C 5400B38F */  lw         $s3, 0x54($sp)
/* 1D330 8002CB30 5000B28F */  lw         $s2, 0x50($sp)
/* 1D334 8002CB34 4C00B18F */  lw         $s1, 0x4C($sp)
/* 1D338 8002CB38 4800B08F */  lw         $s0, 0x48($sp)
/* 1D33C 8002CB3C 0800E003 */  jr         $ra
/* 1D340 8002CB40 7000BD27 */   addiu     $sp, $sp, 0x70
.size ParticleBombReInit, . - ParticleBombReInit
