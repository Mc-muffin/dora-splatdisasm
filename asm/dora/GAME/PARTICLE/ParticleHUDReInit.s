.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleHUDReInit
/* 1C088 8002B888 3408828F */  lw         $v0, %gp_rel(R)($gp)
/* 1C08C 8002B88C 88FFBD27 */  addiu      $sp, $sp, -0x78
/* 1C090 8002B890 6C00B7AF */  sw         $s7, 0x6C($sp)
/* 1C094 8002B894 21B88000 */  addu       $s7, $a0, $zero
/* 1C098 8002B898 7400BFAF */  sw         $ra, 0x74($sp)
/* 1C09C 8002B89C 7000BEAF */  sw         $fp, 0x70($sp)
/* 1C0A0 8002B8A0 6800B6AF */  sw         $s6, 0x68($sp)
/* 1C0A4 8002B8A4 6400B5AF */  sw         $s5, 0x64($sp)
/* 1C0A8 8002B8A8 6000B4AF */  sw         $s4, 0x60($sp)
/* 1C0AC 8002B8AC 5C00B3AF */  sw         $s3, 0x5C($sp)
/* 1C0B0 8002B8B0 5800B2AF */  sw         $s2, 0x58($sp)
/* 1C0B4 8002B8B4 5400B1AF */  sw         $s1, 0x54($sp)
/* 1C0B8 8002B8B8 5000B0AF */  sw         $s0, 0x50($sp)
/* 1C0BC 8002B8BC 1000A5AF */  sw         $a1, 0x10($sp)
/* 1C0C0 8002B8C0 1400A6AF */  sw         $a2, 0x14($sp)
/* 1C0C4 8002B8C4 1800A7AF */  sw         $a3, 0x18($sp)
/* 1C0C8 8002B8C8 4000F68E */  lw         $s6, 0x40($s7)
/* 1C0CC 8002B8CC 3808838F */  lw         $v1, %gp_rel(S)($gp)
/* 1C0D0 8002B8D0 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 1C0D4 8002B8D4 14000224 */  addiu      $v0, $zero, 0x14
/* 1C0D8 8002B8D8 2000A3AF */  sw         $v1, 0x20($sp)
/* 1C0DC 8002B8DC 0C00E2AE */  sw         $v0, 0xC($s7)
/* 1C0E0 8002B8E0 1000A38F */  lw         $v1, 0x10($sp)
/* 1C0E4 8002B8E4 00000000 */  nop
/* 1C0E8 8002B8E8 2400E3AE */  sw         $v1, 0x24($s7)
/* 1C0EC 8002B8EC 1400A28F */  lw         $v0, 0x14($sp)
/* 1C0F0 8002B8F0 00000000 */  nop
/* 1C0F4 8002B8F4 2800E2AE */  sw         $v0, 0x28($s7)
/* 1C0F8 8002B8F8 1800A38F */  lw         $v1, 0x18($sp)
/* 1C0FC 8002B8FC C8000224 */  addiu      $v0, $zero, 0xC8
/* 1C100 8002B900 4A00E2A6 */  sh         $v0, 0x4A($s7)
/* 1C104 8002B904 3000E28E */  lw         $v0, 0x30($s7)
/* 1C108 8002B908 2C00E3AE */  sw         $v1, 0x2C($s7)
/* 1C10C 8002B90C 2400A2AF */  sw         $v0, 0x24($sp)
/* 1C110 8002B910 3400E38E */  lw         $v1, 0x34($s7)
/* 1C114 8002B914 00000000 */  nop
/* 1C118 8002B918 2800A3AF */  sw         $v1, 0x28($sp)
/* 1C11C 8002B91C 3C00E38E */  lw         $v1, 0x3C($s7)
/* 1C120 8002B920 3800FE8E */  lw         $fp, 0x38($s7)
/* 1C124 8002B924 0400E28E */  lw         $v0, 0x4($s7)
/* 1C128 8002B928 00000000 */  nop
/* 1C12C 8002B92C 04004014 */  bnez       $v0, .L8002B940
/* 1C130 8002B930 2C00A3AF */   sw        $v1, 0x2C($sp)
/* 1C134 8002B934 1000A0AF */  sw         $zero, 0x10($sp)
/* 1C138 8002B938 1400A0AF */  sw         $zero, 0x14($sp)
/* 1C13C 8002B93C 1800A0AF */  sw         $zero, 0x18($sp)
.L8002B940:
/* 1C140 8002B940 0800E28E */  lw         $v0, 0x8($s7)
/* 1C144 8002B944 00000000 */  nop
/* 1C148 8002B948 B9004018 */  blez       $v0, .L8002BC30
/* 1C14C 8002B94C 21880000 */   addu      $s1, $zero, $zero
.L8002B950:
/* 1C150 8002B950 D140010C */  jal        u32Random
/* 1C154 8002B954 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1C158 8002B958 21804000 */  addu       $s0, $v0, $zero
/* 1C15C 8002B95C D140010C */  jal        u32Random
/* 1C160 8002B960 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1C164 8002B964 21984000 */  addu       $s3, $v0, $zero
/* 1C168 8002B968 2400A28F */  lw         $v0, 0x24($sp)
/* 1C16C 8002B96C 2800A38F */  lw         $v1, 0x28($sp)
/* 1C170 8002B970 00000000 */  nop
/* 1C174 8002B974 29004310 */  beq        $v0, $v1, .L8002BA1C
/* 1C178 8002B978 00000000 */   nop
/* 1C17C 8002B97C 1000A28F */  lw         $v0, 0x10($sp)
/* 1C180 8002B980 1400A38F */  lw         $v1, 0x14($sp)
/* 1C184 8002B984 01003126 */  addiu      $s1, $s1, 0x1
/* 1C188 8002B988 3800B1AF */  sw         $s1, 0x38($sp)
/* 1C18C 8002B98C 00120200 */  sll        $v0, $v0, 8
/* 1C190 8002B990 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 1C194 8002B994 1800A28F */  lw         $v0, 0x18($sp)
/* 1C198 8002B998 001A0300 */  sll        $v1, $v1, 8
/* 1C19C 8002B99C 4000A3AF */  sw         $v1, 0x40($sp)
/* 1C1A0 8002B9A0 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1C1A4 8002B9A4 4800A3AF */  sw         $v1, 0x48($sp)
/* 1C1A8 8002B9A8 7400C326 */  addiu      $v1, $s6, 0x74
/* 1C1AC 8002B9AC 3000A3AF */  sw         $v1, 0x30($sp)
/* 1C1B0 8002B9B0 2400A38F */  lw         $v1, 0x24($sp)
/* 1C1B4 8002B9B4 00120200 */  sll        $v0, $v0, 8
/* 1C1B8 8002B9B8 4400A2AF */  sw         $v0, 0x44($sp)
/* 1C1BC 8002B9BC 4400C226 */  addiu      $v0, $s6, 0x44
/* 1C1C0 8002B9C0 3400A2AF */  sw         $v0, 0x34($sp)
/* 1C1C4 8002B9C4 2A100302 */  slt        $v0, $s0, $v1
/* 1C1C8 8002B9C8 06004014 */  bnez       $v0, .L8002B9E4
/* 1C1CC 8002B9CC 00000000 */   nop
/* 1C1D0 8002B9D0 2800A38F */  lw         $v1, 0x28($sp)
/* 1C1D4 8002B9D4 00000000 */  nop
/* 1C1D8 8002B9D8 2A107000 */  slt        $v0, $v1, $s0
/* 1C1DC 8002B9DC 21004010 */  beqz       $v0, .L8002BA64
/* 1C1E0 8002B9E0 00000000 */   nop
.L8002B9E4:
/* 1C1E4 8002B9E4 D140010C */  jal        u32Random
/* 1C1E8 8002B9E8 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1C1EC 8002B9EC 2400A38F */  lw         $v1, 0x24($sp)
/* 1C1F0 8002B9F0 21804000 */  addu       $s0, $v0, $zero
/* 1C1F4 8002B9F4 2A100302 */  slt        $v0, $s0, $v1
/* 1C1F8 8002B9F8 FAFF4014 */  bnez       $v0, .L8002B9E4
/* 1C1FC 8002B9FC 00000000 */   nop
/* 1C200 8002BA00 2800A38F */  lw         $v1, 0x28($sp)
/* 1C204 8002BA04 00000000 */  nop
/* 1C208 8002BA08 2A107000 */  slt        $v0, $v1, $s0
/* 1C20C 8002BA0C F5FF4014 */  bnez       $v0, .L8002B9E4
/* 1C210 8002BA10 00000000 */   nop
/* 1C214 8002BA14 99AE0008 */  j          .L8002BA64
/* 1C218 8002BA18 00000000 */   nop
.L8002BA1C:
/* 1C21C 8002BA1C 2400B08F */  lw         $s0, 0x24($sp)
/* 1C220 8002BA20 1000A28F */  lw         $v0, 0x10($sp)
/* 1C224 8002BA24 1400A38F */  lw         $v1, 0x14($sp)
/* 1C228 8002BA28 01003126 */  addiu      $s1, $s1, 0x1
/* 1C22C 8002BA2C 3800B1AF */  sw         $s1, 0x38($sp)
/* 1C230 8002BA30 00120200 */  sll        $v0, $v0, 8
/* 1C234 8002BA34 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 1C238 8002BA38 1800A28F */  lw         $v0, 0x18($sp)
/* 1C23C 8002BA3C 001A0300 */  sll        $v1, $v1, 8
/* 1C240 8002BA40 4000A3AF */  sw         $v1, 0x40($sp)
/* 1C244 8002BA44 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1C248 8002BA48 4800A3AF */  sw         $v1, 0x48($sp)
/* 1C24C 8002BA4C 7400C326 */  addiu      $v1, $s6, 0x74
/* 1C250 8002BA50 3000A3AF */  sw         $v1, 0x30($sp)
/* 1C254 8002BA54 00120200 */  sll        $v0, $v0, 8
/* 1C258 8002BA58 4400A2AF */  sw         $v0, 0x44($sp)
/* 1C25C 8002BA5C 4400C226 */  addiu      $v0, $s6, 0x44
/* 1C260 8002BA60 3400A2AF */  sw         $v0, 0x34($sp)
.L8002BA64:
/* 1C264 8002BA64 2C00A28F */  lw         $v0, 0x2C($sp)
/* 1C268 8002BA68 00000000 */  nop
/* 1C26C 8002BA6C 1500C213 */  beq        $fp, $v0, .L8002BAC4
/* 1C270 8002BA70 2A107E02 */   slt       $v0, $s3, $fp
/* 1C274 8002BA74 06004014 */  bnez       $v0, .L8002BA90
/* 1C278 8002BA78 00000000 */   nop
/* 1C27C 8002BA7C 2C00A38F */  lw         $v1, 0x2C($sp)
/* 1C280 8002BA80 00000000 */  nop
/* 1C284 8002BA84 2A107300 */  slt        $v0, $v1, $s3
/* 1C288 8002BA88 0F004010 */  beqz       $v0, .L8002BAC8
/* 1C28C 8002BA8C 00000000 */   nop
.L8002BA90:
/* 1C290 8002BA90 D140010C */  jal        u32Random
/* 1C294 8002BA94 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1C298 8002BA98 21984000 */  addu       $s3, $v0, $zero
/* 1C29C 8002BA9C 2A107E02 */  slt        $v0, $s3, $fp
/* 1C2A0 8002BAA0 FBFF4014 */  bnez       $v0, .L8002BA90
/* 1C2A4 8002BAA4 00000000 */   nop
/* 1C2A8 8002BAA8 2C00A38F */  lw         $v1, 0x2C($sp)
/* 1C2AC 8002BAAC 00000000 */  nop
/* 1C2B0 8002BAB0 2A107300 */  slt        $v0, $v1, $s3
/* 1C2B4 8002BAB4 F6FF4014 */  bnez       $v0, .L8002BA90
/* 1C2B8 8002BAB8 00000000 */   nop
/* 1C2BC 8002BABC B2AE0008 */  j          .L8002BAC8
/* 1C2C0 8002BAC0 00000000 */   nop
.L8002BAC4:
/* 1C2C4 8002BAC4 2198C003 */  addu       $s3, $fp, $zero
.L8002BAC8:
/* 1C2C8 8002BAC8 7BEB010C */  jal        rcos
/* 1C2CC 8002BACC 21200002 */   addu      $a0, $s0, $zero
/* 1C2D0 8002BAD0 21200002 */  addu       $a0, $s0, $zero
/* 1C2D4 8002BAD4 47EB010C */  jal        rsin
/* 1C2D8 8002BAD8 21904000 */   addu      $s2, $v0, $zero
/* 1C2DC 8002BADC 21206002 */  addu       $a0, $s3, $zero
/* 1C2E0 8002BAE0 7BEB010C */  jal        rcos
/* 1C2E4 8002BAE4 21884000 */   addu      $s1, $v0, $zero
/* 1C2E8 8002BAE8 21206002 */  addu       $a0, $s3, $zero
/* 1C2EC 8002BAEC 47EB010C */  jal        rsin
/* 1C2F0 8002BAF0 21804000 */   addu      $s0, $v0, $zero
/* 1C2F4 8002BAF4 18003002 */  mult       $s1, $s0
/* 1C2F8 8002BAF8 12880000 */  mflo       $s1
/* 1C2FC 8002BAFC 00000000 */  nop
/* 1C300 8002BB00 00000000 */  nop
/* 1C304 8002BB04 18005002 */  mult       $s2, $s0
/* 1C308 8002BB08 12900000 */  mflo       $s2
/* 1C30C 8002BB0C 1C00A38F */  lw         $v1, 0x1C($sp)
/* 1C310 8002BB10 038B1100 */  sra        $s1, $s1, 12
/* 1C314 8002BB14 18002302 */  mult       $s1, $v1
/* 1C318 8002BB18 12A80000 */  mflo       $s5
/* 1C31C 8002BB1C 21A04000 */  addu       $s4, $v0, $zero
/* 1C320 8002BB20 00000000 */  nop
/* 1C324 8002BB24 18008302 */  mult       $s4, $v1
/* 1C328 8002BB28 12980000 */  mflo       $s3
/* 1C32C 8002BB2C 03931200 */  sra        $s2, $s2, 12
/* 1C330 8002BB30 00000000 */  nop
/* 1C334 8002BB34 18004302 */  mult       $s2, $v1
/* 1C338 8002BB38 12800000 */  mflo       $s0
/* 1C33C 8002BB3C 2000A28F */  lw         $v0, 0x20($sp)
/* 1C340 8002BB40 00000000 */  nop
/* 1C344 8002BB44 18002202 */  mult       $s1, $v0
/* 1C348 8002BB48 12880000 */  mflo       $s1
/* 1C34C 8002BB4C 00000000 */  nop
/* 1C350 8002BB50 00000000 */  nop
/* 1C354 8002BB54 18008202 */  mult       $s4, $v0
/* 1C358 8002BB58 12A00000 */  mflo       $s4
/* 1C35C 8002BB5C 04000424 */  addiu      $a0, $zero, 0x4
/* 1C360 8002BB60 00000000 */  nop
/* 1C364 8002BB64 18004202 */  mult       $s2, $v0
/* 1C368 8002BB68 03A91500 */  sra        $s5, $s5, 4
/* 1C36C 8002BB6C 4000A38F */  lw         $v1, 0x40($sp)
/* 1C370 8002BB70 03991300 */  sra        $s3, $s3, 4
/* 1C374 8002BB74 21987300 */  addu       $s3, $v1, $s3
/* 1C378 8002BB78 03811000 */  sra        $s0, $s0, 4
/* 1C37C 8002BB7C 3C00A28F */  lw         $v0, 0x3C($sp)
/* 1C380 8002BB80 03891100 */  sra        $s1, $s1, 4
/* 1C384 8002BB84 21A85500 */  addu       $s5, $v0, $s5
/* 1C388 8002BB88 4400A28F */  lw         $v0, 0x44($sp)
/* 1C38C 8002BB8C 03A11400 */  sra        $s4, $s4, 4
/* 1C390 8002BB90 21805000 */  addu       $s0, $v0, $s0
/* 1C394 8002BB94 12900000 */  mflo       $s2
/* 1C398 8002BB98 D140010C */  jal        u32Random
/* 1C39C 8002BB9C 03911200 */   sra       $s2, $s2, 4
/* 1C3A0 8002BBA0 01000324 */  addiu      $v1, $zero, 0x1
/* 1C3A4 8002BBA4 0000C3A6 */  sh         $v1, 0x0($s6)
/* 1C3A8 8002BBA8 14000324 */  addiu      $v1, $zero, 0x14
/* 1C3AC 8002BBAC 23106200 */  subu       $v0, $v1, $v0
/* 1C3B0 8002BBB0 0400D5AE */  sw         $s5, 0x4($s6)
/* 1C3B4 8002BBB4 0800D3AE */  sw         $s3, 0x8($s6)
/* 1C3B8 8002BBB8 0C00D0AE */  sw         $s0, 0xC($s6)
/* 1C3BC 8002BBBC 1000D1AE */  sw         $s1, 0x10($s6)
/* 1C3C0 8002BBC0 1400D4AE */  sw         $s4, 0x14($s6)
/* 1C3C4 8002BBC4 1800D2AE */  sw         $s2, 0x18($s6)
/* 1C3C8 8002BBC8 0200C2A6 */  sh         $v0, 0x2($s6)
/* 1C3CC 8002BBCC 4C00E392 */  lbu        $v1, 0x4C($s7)
/* 1C3D0 8002BBD0 4800A58F */  lw         $a1, 0x48($sp)
/* 1C3D4 8002BBD4 00000000 */  nop
/* 1C3D8 8002BBD8 0400A3A0 */  sb         $v1, 0x4($a1)
/* 1C3DC 8002BBDC 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1C3E0 8002BBE0 00000000 */  nop
/* 1C3E4 8002BBE4 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1C3E8 8002BBE8 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1C3EC 8002BBEC 00000000 */  nop
/* 1C3F0 8002BBF0 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1C3F4 8002BBF4 4C00E492 */  lbu        $a0, 0x4C($s7)
/* 1C3F8 8002BBF8 3400A58F */  lw         $a1, 0x34($sp)
/* 1C3FC 8002BBFC 00000000 */  nop
/* 1C400 8002BC00 0400A4A0 */  sb         $a0, 0x4($a1)
/* 1C404 8002BC04 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1C408 8002BC08 00000000 */  nop
/* 1C40C 8002BC0C 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1C410 8002BC10 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1C414 8002BC14 3800B18F */  lw         $s1, 0x38($sp)
/* 1C418 8002BC18 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1C41C 8002BC1C 0800E28E */  lw         $v0, 0x8($s7)
/* 1C420 8002BC20 3000B68F */  lw         $s6, 0x30($sp)
/* 1C424 8002BC24 2A102202 */  slt        $v0, $s1, $v0
/* 1C428 8002BC28 49FF4014 */  bnez       $v0, .L8002B950
/* 1C42C 8002BC2C 00000000 */   nop
.L8002BC30:
/* 1C430 8002BC30 7400BF8F */  lw         $ra, 0x74($sp)
/* 1C434 8002BC34 7000BE8F */  lw         $fp, 0x70($sp)
/* 1C438 8002BC38 01000224 */  addiu      $v0, $zero, 0x1
/* 1C43C 8002BC3C 0000E2AE */  sw         $v0, 0x0($s7)
/* 1C440 8002BC40 6C00B78F */  lw         $s7, 0x6C($sp)
/* 1C444 8002BC44 6800B68F */  lw         $s6, 0x68($sp)
/* 1C448 8002BC48 6400B58F */  lw         $s5, 0x64($sp)
/* 1C44C 8002BC4C 6000B48F */  lw         $s4, 0x60($sp)
/* 1C450 8002BC50 5C00B38F */  lw         $s3, 0x5C($sp)
/* 1C454 8002BC54 5800B28F */  lw         $s2, 0x58($sp)
/* 1C458 8002BC58 5400B18F */  lw         $s1, 0x54($sp)
/* 1C45C 8002BC5C 5000B08F */  lw         $s0, 0x50($sp)
/* 1C460 8002BC60 0800E003 */  jr         $ra
/* 1C464 8002BC64 7800BD27 */   addiu     $sp, $sp, 0x78
.size ParticleHUDReInit, . - ParticleHUDReInit
