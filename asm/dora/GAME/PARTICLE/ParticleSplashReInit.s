.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleSplashReInit
/* 1C808 8002C008 3408828F */  lw         $v0, %gp_rel(R)($gp)
/* 1C80C 8002C00C 88FFBD27 */  addiu      $sp, $sp, -0x78
/* 1C810 8002C010 6C00B7AF */  sw         $s7, 0x6C($sp)
/* 1C814 8002C014 21B88000 */  addu       $s7, $a0, $zero
/* 1C818 8002C018 7400BFAF */  sw         $ra, 0x74($sp)
/* 1C81C 8002C01C 7000BEAF */  sw         $fp, 0x70($sp)
/* 1C820 8002C020 6800B6AF */  sw         $s6, 0x68($sp)
/* 1C824 8002C024 6400B5AF */  sw         $s5, 0x64($sp)
/* 1C828 8002C028 6000B4AF */  sw         $s4, 0x60($sp)
/* 1C82C 8002C02C 5C00B3AF */  sw         $s3, 0x5C($sp)
/* 1C830 8002C030 5800B2AF */  sw         $s2, 0x58($sp)
/* 1C834 8002C034 5400B1AF */  sw         $s1, 0x54($sp)
/* 1C838 8002C038 5000B0AF */  sw         $s0, 0x50($sp)
/* 1C83C 8002C03C 1000A5AF */  sw         $a1, 0x10($sp)
/* 1C840 8002C040 1400A6AF */  sw         $a2, 0x14($sp)
/* 1C844 8002C044 1800A7AF */  sw         $a3, 0x18($sp)
/* 1C848 8002C048 4000F68E */  lw         $s6, 0x40($s7)
/* 1C84C 8002C04C 3808838F */  lw         $v1, %gp_rel(S)($gp)
/* 1C850 8002C050 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 1C854 8002C054 14000224 */  addiu      $v0, $zero, 0x14
/* 1C858 8002C058 2000A3AF */  sw         $v1, 0x20($sp)
/* 1C85C 8002C05C 0C00E2AE */  sw         $v0, 0xC($s7)
/* 1C860 8002C060 1000A38F */  lw         $v1, 0x10($sp)
/* 1C864 8002C064 00000000 */  nop
/* 1C868 8002C068 2400E3AE */  sw         $v1, 0x24($s7)
/* 1C86C 8002C06C 1400A28F */  lw         $v0, 0x14($sp)
/* 1C870 8002C070 00000000 */  nop
/* 1C874 8002C074 2800E2AE */  sw         $v0, 0x28($s7)
/* 1C878 8002C078 1800A38F */  lw         $v1, 0x18($sp)
/* 1C87C 8002C07C C8000224 */  addiu      $v0, $zero, 0xC8
/* 1C880 8002C080 4A00E2A6 */  sh         $v0, 0x4A($s7)
/* 1C884 8002C084 3000E28E */  lw         $v0, 0x30($s7)
/* 1C888 8002C088 2C00E3AE */  sw         $v1, 0x2C($s7)
/* 1C88C 8002C08C 2400A2AF */  sw         $v0, 0x24($sp)
/* 1C890 8002C090 3400E38E */  lw         $v1, 0x34($s7)
/* 1C894 8002C094 00000000 */  nop
/* 1C898 8002C098 2800A3AF */  sw         $v1, 0x28($sp)
/* 1C89C 8002C09C 3C00E38E */  lw         $v1, 0x3C($s7)
/* 1C8A0 8002C0A0 3800FE8E */  lw         $fp, 0x38($s7)
/* 1C8A4 8002C0A4 0400E28E */  lw         $v0, 0x4($s7)
/* 1C8A8 8002C0A8 00000000 */  nop
/* 1C8AC 8002C0AC 04004014 */  bnez       $v0, .L8002C0C0
/* 1C8B0 8002C0B0 2C00A3AF */   sw        $v1, 0x2C($sp)
/* 1C8B4 8002C0B4 1000A0AF */  sw         $zero, 0x10($sp)
/* 1C8B8 8002C0B8 1400A0AF */  sw         $zero, 0x14($sp)
/* 1C8BC 8002C0BC 1800A0AF */  sw         $zero, 0x18($sp)
.L8002C0C0:
/* 1C8C0 8002C0C0 0800E28E */  lw         $v0, 0x8($s7)
/* 1C8C4 8002C0C4 00000000 */  nop
/* 1C8C8 8002C0C8 B9004018 */  blez       $v0, .L8002C3B0
/* 1C8CC 8002C0CC 21880000 */   addu      $s1, $zero, $zero
.L8002C0D0:
/* 1C8D0 8002C0D0 D140010C */  jal        u32Random
/* 1C8D4 8002C0D4 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1C8D8 8002C0D8 21804000 */  addu       $s0, $v0, $zero
/* 1C8DC 8002C0DC D140010C */  jal        u32Random
/* 1C8E0 8002C0E0 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1C8E4 8002C0E4 21984000 */  addu       $s3, $v0, $zero
/* 1C8E8 8002C0E8 2400A28F */  lw         $v0, 0x24($sp)
/* 1C8EC 8002C0EC 2800A38F */  lw         $v1, 0x28($sp)
/* 1C8F0 8002C0F0 00000000 */  nop
/* 1C8F4 8002C0F4 29004310 */  beq        $v0, $v1, .L8002C19C
/* 1C8F8 8002C0F8 00000000 */   nop
/* 1C8FC 8002C0FC 1000A28F */  lw         $v0, 0x10($sp)
/* 1C900 8002C100 1400A38F */  lw         $v1, 0x14($sp)
/* 1C904 8002C104 01003126 */  addiu      $s1, $s1, 0x1
/* 1C908 8002C108 3800B1AF */  sw         $s1, 0x38($sp)
/* 1C90C 8002C10C 00120200 */  sll        $v0, $v0, 8
/* 1C910 8002C110 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 1C914 8002C114 1800A28F */  lw         $v0, 0x18($sp)
/* 1C918 8002C118 001A0300 */  sll        $v1, $v1, 8
/* 1C91C 8002C11C 4000A3AF */  sw         $v1, 0x40($sp)
/* 1C920 8002C120 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1C924 8002C124 4800A3AF */  sw         $v1, 0x48($sp)
/* 1C928 8002C128 7400C326 */  addiu      $v1, $s6, 0x74
/* 1C92C 8002C12C 3000A3AF */  sw         $v1, 0x30($sp)
/* 1C930 8002C130 2400A38F */  lw         $v1, 0x24($sp)
/* 1C934 8002C134 00120200 */  sll        $v0, $v0, 8
/* 1C938 8002C138 4400A2AF */  sw         $v0, 0x44($sp)
/* 1C93C 8002C13C 4400C226 */  addiu      $v0, $s6, 0x44
/* 1C940 8002C140 3400A2AF */  sw         $v0, 0x34($sp)
/* 1C944 8002C144 2A100302 */  slt        $v0, $s0, $v1
/* 1C948 8002C148 06004014 */  bnez       $v0, .L8002C164
/* 1C94C 8002C14C 00000000 */   nop
/* 1C950 8002C150 2800A38F */  lw         $v1, 0x28($sp)
/* 1C954 8002C154 00000000 */  nop
/* 1C958 8002C158 2A107000 */  slt        $v0, $v1, $s0
/* 1C95C 8002C15C 21004010 */  beqz       $v0, .L8002C1E4
/* 1C960 8002C160 00000000 */   nop
.L8002C164:
/* 1C964 8002C164 D140010C */  jal        u32Random
/* 1C968 8002C168 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1C96C 8002C16C 2400A38F */  lw         $v1, 0x24($sp)
/* 1C970 8002C170 21804000 */  addu       $s0, $v0, $zero
/* 1C974 8002C174 2A100302 */  slt        $v0, $s0, $v1
/* 1C978 8002C178 FAFF4014 */  bnez       $v0, .L8002C164
/* 1C97C 8002C17C 00000000 */   nop
/* 1C980 8002C180 2800A38F */  lw         $v1, 0x28($sp)
/* 1C984 8002C184 00000000 */  nop
/* 1C988 8002C188 2A107000 */  slt        $v0, $v1, $s0
/* 1C98C 8002C18C F5FF4014 */  bnez       $v0, .L8002C164
/* 1C990 8002C190 00000000 */   nop
/* 1C994 8002C194 79B00008 */  j          .L8002C1E4
/* 1C998 8002C198 00000000 */   nop
.L8002C19C:
/* 1C99C 8002C19C 2400B08F */  lw         $s0, 0x24($sp)
/* 1C9A0 8002C1A0 1000A28F */  lw         $v0, 0x10($sp)
/* 1C9A4 8002C1A4 1400A38F */  lw         $v1, 0x14($sp)
/* 1C9A8 8002C1A8 01003126 */  addiu      $s1, $s1, 0x1
/* 1C9AC 8002C1AC 3800B1AF */  sw         $s1, 0x38($sp)
/* 1C9B0 8002C1B0 00120200 */  sll        $v0, $v0, 8
/* 1C9B4 8002C1B4 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 1C9B8 8002C1B8 1800A28F */  lw         $v0, 0x18($sp)
/* 1C9BC 8002C1BC 001A0300 */  sll        $v1, $v1, 8
/* 1C9C0 8002C1C0 4000A3AF */  sw         $v1, 0x40($sp)
/* 1C9C4 8002C1C4 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1C9C8 8002C1C8 4800A3AF */  sw         $v1, 0x48($sp)
/* 1C9CC 8002C1CC 7400C326 */  addiu      $v1, $s6, 0x74
/* 1C9D0 8002C1D0 3000A3AF */  sw         $v1, 0x30($sp)
/* 1C9D4 8002C1D4 00120200 */  sll        $v0, $v0, 8
/* 1C9D8 8002C1D8 4400A2AF */  sw         $v0, 0x44($sp)
/* 1C9DC 8002C1DC 4400C226 */  addiu      $v0, $s6, 0x44
/* 1C9E0 8002C1E0 3400A2AF */  sw         $v0, 0x34($sp)
.L8002C1E4:
/* 1C9E4 8002C1E4 2C00A28F */  lw         $v0, 0x2C($sp)
/* 1C9E8 8002C1E8 00000000 */  nop
/* 1C9EC 8002C1EC 1500C213 */  beq        $fp, $v0, .L8002C244
/* 1C9F0 8002C1F0 2A107E02 */   slt       $v0, $s3, $fp
/* 1C9F4 8002C1F4 06004014 */  bnez       $v0, .L8002C210
/* 1C9F8 8002C1F8 00000000 */   nop
/* 1C9FC 8002C1FC 2C00A38F */  lw         $v1, 0x2C($sp)
/* 1CA00 8002C200 00000000 */  nop
/* 1CA04 8002C204 2A107300 */  slt        $v0, $v1, $s3
/* 1CA08 8002C208 0F004010 */  beqz       $v0, .L8002C248
/* 1CA0C 8002C20C 00000000 */   nop
.L8002C210:
/* 1CA10 8002C210 D140010C */  jal        u32Random
/* 1CA14 8002C214 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1CA18 8002C218 21984000 */  addu       $s3, $v0, $zero
/* 1CA1C 8002C21C 2A107E02 */  slt        $v0, $s3, $fp
/* 1CA20 8002C220 FBFF4014 */  bnez       $v0, .L8002C210
/* 1CA24 8002C224 00000000 */   nop
/* 1CA28 8002C228 2C00A38F */  lw         $v1, 0x2C($sp)
/* 1CA2C 8002C22C 00000000 */  nop
/* 1CA30 8002C230 2A107300 */  slt        $v0, $v1, $s3
/* 1CA34 8002C234 F6FF4014 */  bnez       $v0, .L8002C210
/* 1CA38 8002C238 00000000 */   nop
/* 1CA3C 8002C23C 92B00008 */  j          .L8002C248
/* 1CA40 8002C240 00000000 */   nop
.L8002C244:
/* 1CA44 8002C244 2198C003 */  addu       $s3, $fp, $zero
.L8002C248:
/* 1CA48 8002C248 7BEB010C */  jal        rcos
/* 1CA4C 8002C24C 21200002 */   addu      $a0, $s0, $zero
/* 1CA50 8002C250 21200002 */  addu       $a0, $s0, $zero
/* 1CA54 8002C254 47EB010C */  jal        rsin
/* 1CA58 8002C258 21904000 */   addu      $s2, $v0, $zero
/* 1CA5C 8002C25C 21206002 */  addu       $a0, $s3, $zero
/* 1CA60 8002C260 7BEB010C */  jal        rcos
/* 1CA64 8002C264 21884000 */   addu      $s1, $v0, $zero
/* 1CA68 8002C268 21206002 */  addu       $a0, $s3, $zero
/* 1CA6C 8002C26C 47EB010C */  jal        rsin
/* 1CA70 8002C270 21804000 */   addu      $s0, $v0, $zero
/* 1CA74 8002C274 18003002 */  mult       $s1, $s0
/* 1CA78 8002C278 12880000 */  mflo       $s1
/* 1CA7C 8002C27C 00000000 */  nop
/* 1CA80 8002C280 00000000 */  nop
/* 1CA84 8002C284 18005002 */  mult       $s2, $s0
/* 1CA88 8002C288 12900000 */  mflo       $s2
/* 1CA8C 8002C28C 1C00A38F */  lw         $v1, 0x1C($sp)
/* 1CA90 8002C290 038B1100 */  sra        $s1, $s1, 12
/* 1CA94 8002C294 18002302 */  mult       $s1, $v1
/* 1CA98 8002C298 12A80000 */  mflo       $s5
/* 1CA9C 8002C29C 21A04000 */  addu       $s4, $v0, $zero
/* 1CAA0 8002C2A0 00000000 */  nop
/* 1CAA4 8002C2A4 18008302 */  mult       $s4, $v1
/* 1CAA8 8002C2A8 12980000 */  mflo       $s3
/* 1CAAC 8002C2AC 03931200 */  sra        $s2, $s2, 12
/* 1CAB0 8002C2B0 00000000 */  nop
/* 1CAB4 8002C2B4 18004302 */  mult       $s2, $v1
/* 1CAB8 8002C2B8 12800000 */  mflo       $s0
/* 1CABC 8002C2BC 2000A28F */  lw         $v0, 0x20($sp)
/* 1CAC0 8002C2C0 00000000 */  nop
/* 1CAC4 8002C2C4 18002202 */  mult       $s1, $v0
/* 1CAC8 8002C2C8 12880000 */  mflo       $s1
/* 1CACC 8002C2CC 00000000 */  nop
/* 1CAD0 8002C2D0 00000000 */  nop
/* 1CAD4 8002C2D4 18008202 */  mult       $s4, $v0
/* 1CAD8 8002C2D8 12A00000 */  mflo       $s4
/* 1CADC 8002C2DC 04000424 */  addiu      $a0, $zero, 0x4
/* 1CAE0 8002C2E0 00000000 */  nop
/* 1CAE4 8002C2E4 18004202 */  mult       $s2, $v0
/* 1CAE8 8002C2E8 03A91500 */  sra        $s5, $s5, 4
/* 1CAEC 8002C2EC 4000A38F */  lw         $v1, 0x40($sp)
/* 1CAF0 8002C2F0 03991300 */  sra        $s3, $s3, 4
/* 1CAF4 8002C2F4 21987300 */  addu       $s3, $v1, $s3
/* 1CAF8 8002C2F8 03811000 */  sra        $s0, $s0, 4
/* 1CAFC 8002C2FC 3C00A28F */  lw         $v0, 0x3C($sp)
/* 1CB00 8002C300 03891100 */  sra        $s1, $s1, 4
/* 1CB04 8002C304 21A85500 */  addu       $s5, $v0, $s5
/* 1CB08 8002C308 4400A28F */  lw         $v0, 0x44($sp)
/* 1CB0C 8002C30C 03A11400 */  sra        $s4, $s4, 4
/* 1CB10 8002C310 21805000 */  addu       $s0, $v0, $s0
/* 1CB14 8002C314 12900000 */  mflo       $s2
/* 1CB18 8002C318 D140010C */  jal        u32Random
/* 1CB1C 8002C31C 03911200 */   sra       $s2, $s2, 4
/* 1CB20 8002C320 01000324 */  addiu      $v1, $zero, 0x1
/* 1CB24 8002C324 0000C3A6 */  sh         $v1, 0x0($s6)
/* 1CB28 8002C328 14000324 */  addiu      $v1, $zero, 0x14
/* 1CB2C 8002C32C 23106200 */  subu       $v0, $v1, $v0
/* 1CB30 8002C330 0400D5AE */  sw         $s5, 0x4($s6)
/* 1CB34 8002C334 0800D3AE */  sw         $s3, 0x8($s6)
/* 1CB38 8002C338 0C00D0AE */  sw         $s0, 0xC($s6)
/* 1CB3C 8002C33C 1000D1AE */  sw         $s1, 0x10($s6)
/* 1CB40 8002C340 1400D4AE */  sw         $s4, 0x14($s6)
/* 1CB44 8002C344 1800D2AE */  sw         $s2, 0x18($s6)
/* 1CB48 8002C348 0200C2A6 */  sh         $v0, 0x2($s6)
/* 1CB4C 8002C34C 4C00E392 */  lbu        $v1, 0x4C($s7)
/* 1CB50 8002C350 4800A58F */  lw         $a1, 0x48($sp)
/* 1CB54 8002C354 00000000 */  nop
/* 1CB58 8002C358 0400A3A0 */  sb         $v1, 0x4($a1)
/* 1CB5C 8002C35C 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1CB60 8002C360 00000000 */  nop
/* 1CB64 8002C364 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1CB68 8002C368 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1CB6C 8002C36C 00000000 */  nop
/* 1CB70 8002C370 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1CB74 8002C374 4C00E492 */  lbu        $a0, 0x4C($s7)
/* 1CB78 8002C378 3400A58F */  lw         $a1, 0x34($sp)
/* 1CB7C 8002C37C 00000000 */  nop
/* 1CB80 8002C380 0400A4A0 */  sb         $a0, 0x4($a1)
/* 1CB84 8002C384 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1CB88 8002C388 00000000 */  nop
/* 1CB8C 8002C38C 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1CB90 8002C390 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1CB94 8002C394 3800B18F */  lw         $s1, 0x38($sp)
/* 1CB98 8002C398 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1CB9C 8002C39C 0800E28E */  lw         $v0, 0x8($s7)
/* 1CBA0 8002C3A0 3000B68F */  lw         $s6, 0x30($sp)
/* 1CBA4 8002C3A4 2A102202 */  slt        $v0, $s1, $v0
/* 1CBA8 8002C3A8 49FF4014 */  bnez       $v0, .L8002C0D0
/* 1CBAC 8002C3AC 00000000 */   nop
.L8002C3B0:
/* 1CBB0 8002C3B0 7400BF8F */  lw         $ra, 0x74($sp)
/* 1CBB4 8002C3B4 7000BE8F */  lw         $fp, 0x70($sp)
/* 1CBB8 8002C3B8 01000224 */  addiu      $v0, $zero, 0x1
/* 1CBBC 8002C3BC 0000E2AE */  sw         $v0, 0x0($s7)
/* 1CBC0 8002C3C0 6C00B78F */  lw         $s7, 0x6C($sp)
/* 1CBC4 8002C3C4 6800B68F */  lw         $s6, 0x68($sp)
/* 1CBC8 8002C3C8 6400B58F */  lw         $s5, 0x64($sp)
/* 1CBCC 8002C3CC 6000B48F */  lw         $s4, 0x60($sp)
/* 1CBD0 8002C3D0 5C00B38F */  lw         $s3, 0x5C($sp)
/* 1CBD4 8002C3D4 5800B28F */  lw         $s2, 0x58($sp)
/* 1CBD8 8002C3D8 5400B18F */  lw         $s1, 0x54($sp)
/* 1CBDC 8002C3DC 5000B08F */  lw         $s0, 0x50($sp)
/* 1CBE0 8002C3E0 0800E003 */  jr         $ra
/* 1CBE4 8002C3E4 7800BD27 */   addiu     $sp, $sp, 0x78
.size ParticleSplashReInit, . - ParticleSplashReInit
