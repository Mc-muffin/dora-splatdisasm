.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleGateInit
/* 1B960 8002B160 A0FFBD27 */  addiu      $sp, $sp, -0x60
/* 1B964 8002B164 5400B7AF */  sw         $s7, 0x54($sp)
/* 1B968 8002B168 21B88000 */  addu       $s7, $a0, $zero
/* 1B96C 8002B16C 5C00BFAF */  sw         $ra, 0x5C($sp)
/* 1B970 8002B170 5800BEAF */  sw         $fp, 0x58($sp)
/* 1B974 8002B174 5000B6AF */  sw         $s6, 0x50($sp)
/* 1B978 8002B178 4C00B5AF */  sw         $s5, 0x4C($sp)
/* 1B97C 8002B17C 4800B4AF */  sw         $s4, 0x48($sp)
/* 1B980 8002B180 4400B3AF */  sw         $s3, 0x44($sp)
/* 1B984 8002B184 4000B2AF */  sw         $s2, 0x40($sp)
/* 1B988 8002B188 3C00B1AF */  sw         $s1, 0x3C($sp)
/* 1B98C 8002B18C 3800B0AF */  sw         $s0, 0x38($sp)
/* 1B990 8002B190 1000A5AF */  sw         $a1, 0x10($sp)
/* 1B994 8002B194 1400A6AF */  sw         $a2, 0x14($sp)
/* 1B998 8002B198 1800A7AF */  sw         $a3, 0x18($sp)
/* 1B99C 8002B19C 4000F68E */  lw         $s6, 0x40($s7)
/* 1B9A0 8002B1A0 F0000224 */  addiu      $v0, $zero, 0xF0
/* 1B9A4 8002B1A4 C41382AF */  sw         $v0, %gp_rel(TEMPR)($gp)
/* 1B9A8 8002B1A8 C01382AF */  sw         $v0, %gp_rel(TEMPG)($gp)
/* 1B9AC 8002B1AC BC1382AF */  sw         $v0, %gp_rel(TEMPB)($gp)
/* 1B9B0 8002B1B0 FF0F0224 */  addiu      $v0, $zero, 0xFFF
/* 1B9B4 8002B1B4 3400E2AE */  sw         $v0, 0x34($s7)
/* 1B9B8 8002B1B8 3C00E2AE */  sw         $v0, 0x3C($s7)
/* 1B9BC 8002B1BC 14000224 */  addiu      $v0, $zero, 0x14
/* 1B9C0 8002B1C0 3000E0AE */  sw         $zero, 0x30($s7)
/* 1B9C4 8002B1C4 3800E0AE */  sw         $zero, 0x38($s7)
/* 1B9C8 8002B1C8 0C00E2AE */  sw         $v0, 0xC($s7)
/* 1B9CC 8002B1CC 1000A38F */  lw         $v1, 0x10($sp)
/* 1B9D0 8002B1D0 00000000 */  nop
/* 1B9D4 8002B1D4 2400E3AE */  sw         $v1, 0x24($s7)
/* 1B9D8 8002B1D8 1400A28F */  lw         $v0, 0x14($sp)
/* 1B9DC 8002B1DC 00000000 */  nop
/* 1B9E0 8002B1E0 2800E2AE */  sw         $v0, 0x28($s7)
/* 1B9E4 8002B1E4 1800A38F */  lw         $v1, 0x18($sp)
/* 1B9E8 8002B1E8 C8000224 */  addiu      $v0, $zero, 0xC8
/* 1B9EC 8002B1EC 4A00E2A6 */  sh         $v0, 0x4A($s7)
/* 1B9F0 8002B1F0 0400E28E */  lw         $v0, 0x4($s7)
/* 1B9F4 8002B1F4 00000000 */  nop
/* 1B9F8 8002B1F8 04004014 */  bnez       $v0, .L8002B20C
/* 1B9FC 8002B1FC 2C00E3AE */   sw        $v1, 0x2C($s7)
/* 1BA00 8002B200 1000A0AF */  sw         $zero, 0x10($sp)
/* 1BA04 8002B204 1400A0AF */  sw         $zero, 0x14($sp)
/* 1BA08 8002B208 1800A0AF */  sw         $zero, 0x18($sp)
.L8002B20C:
/* 1BA0C 8002B20C 0800E28E */  lw         $v0, 0x8($s7)
/* 1BA10 8002B210 00000000 */  nop
/* 1BA14 8002B214 A8004018 */  blez       $v0, .L8002B4B8
/* 1BA18 8002B218 21880000 */   addu      $s1, $zero, $zero
.L8002B21C:
/* 1BA1C 8002B21C D140010C */  jal        u32Random
/* 1BA20 8002B220 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1BA24 8002B224 21804000 */  addu       $s0, $v0, $zero
/* 1BA28 8002B228 D140010C */  jal        u32Random
/* 1BA2C 8002B22C FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1BA30 8002B230 21984000 */  addu       $s3, $v0, $zero
/* 1BA34 8002B234 21100000 */  addu       $v0, $zero, $zero
/* 1BA38 8002B238 FF0F0324 */  addiu      $v1, $zero, 0xFFF
/* 1BA3C 8002B23C 20004310 */  beq        $v0, $v1, .L8002B2C0
/* 1BA40 8002B240 00000000 */   nop
/* 1BA44 8002B244 1000A28F */  lw         $v0, 0x10($sp)
/* 1BA48 8002B248 1400A38F */  lw         $v1, 0x14($sp)
/* 1BA4C 8002B24C 01003126 */  addiu      $s1, $s1, 0x1
/* 1BA50 8002B250 2000B1AF */  sw         $s1, 0x20($sp)
/* 1BA54 8002B254 00F20200 */  sll        $fp, $v0, 8
/* 1BA58 8002B258 1800A28F */  lw         $v0, 0x18($sp)
/* 1BA5C 8002B25C 001A0300 */  sll        $v1, $v1, 8
/* 1BA60 8002B260 2400A3AF */  sw         $v1, 0x24($sp)
/* 1BA64 8002B264 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1BA68 8002B268 2C00A3AF */  sw         $v1, 0x2C($sp)
/* 1BA6C 8002B26C 7400C326 */  addiu      $v1, $s6, 0x74
/* 1BA70 8002B270 3000A3AF */  sw         $v1, 0x30($sp)
/* 1BA74 8002B274 00120200 */  sll        $v0, $v0, 8
/* 1BA78 8002B278 2800A2AF */  sw         $v0, 0x28($sp)
/* 1BA7C 8002B27C 4400C226 */  addiu      $v0, $s6, 0x44
/* 1BA80 8002B280 05000006 */  bltz       $s0, .L8002B298
/* 1BA84 8002B284 1C00A2AF */   sw        $v0, 0x1C($sp)
/* 1BA88 8002B288 FF0F0324 */  addiu      $v1, $zero, 0xFFF
/* 1BA8C 8002B28C 2A107000 */  slt        $v0, $v1, $s0
/* 1BA90 8002B290 1E004010 */  beqz       $v0, .L8002B30C
/* 1BA94 8002B294 21100000 */   addu      $v0, $zero, $zero
.L8002B298:
/* 1BA98 8002B298 D140010C */  jal        u32Random
/* 1BA9C 8002B29C FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1BAA0 8002B2A0 21804000 */  addu       $s0, $v0, $zero
/* 1BAA4 8002B2A4 FCFF0006 */  bltz       $s0, .L8002B298
/* 1BAA8 8002B2A8 FF0F0324 */   addiu     $v1, $zero, 0xFFF
/* 1BAAC 8002B2AC 2A107000 */  slt        $v0, $v1, $s0
/* 1BAB0 8002B2B0 F9FF4014 */  bnez       $v0, .L8002B298
/* 1BAB4 8002B2B4 21100000 */   addu      $v0, $zero, $zero
/* 1BAB8 8002B2B8 C3AC0008 */  j          .L8002B30C
/* 1BABC 8002B2BC 00000000 */   nop
.L8002B2C0:
/* 1BAC0 8002B2C0 21800000 */  addu       $s0, $zero, $zero
/* 1BAC4 8002B2C4 1000A28F */  lw         $v0, 0x10($sp)
/* 1BAC8 8002B2C8 1400A38F */  lw         $v1, 0x14($sp)
/* 1BACC 8002B2CC 01003126 */  addiu      $s1, $s1, 0x1
/* 1BAD0 8002B2D0 2000B1AF */  sw         $s1, 0x20($sp)
/* 1BAD4 8002B2D4 00F20200 */  sll        $fp, $v0, 8
/* 1BAD8 8002B2D8 1800A28F */  lw         $v0, 0x18($sp)
/* 1BADC 8002B2DC 001A0300 */  sll        $v1, $v1, 8
/* 1BAE0 8002B2E0 2400A3AF */  sw         $v1, 0x24($sp)
/* 1BAE4 8002B2E4 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1BAE8 8002B2E8 2C00A3AF */  sw         $v1, 0x2C($sp)
/* 1BAEC 8002B2EC 7400C326 */  addiu      $v1, $s6, 0x74
/* 1BAF0 8002B2F0 3000A3AF */  sw         $v1, 0x30($sp)
/* 1BAF4 8002B2F4 00120200 */  sll        $v0, $v0, 8
/* 1BAF8 8002B2F8 2800A2AF */  sw         $v0, 0x28($sp)
/* 1BAFC 8002B2FC 4400C226 */  addiu      $v0, $s6, 0x44
/* 1BB00 8002B300 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 1BB04 8002B304 21100000 */  addu       $v0, $zero, $zero
/* 1BB08 8002B308 FF0F0324 */  addiu      $v1, $zero, 0xFFF
.L8002B30C:
/* 1BB0C 8002B30C 0F004310 */  beq        $v0, $v1, .L8002B34C
/* 1BB10 8002B310 00000000 */   nop
/* 1BB14 8002B314 03006006 */  bltz       $s3, .L8002B324
/* 1BB18 8002B318 2A107300 */   slt       $v0, $v1, $s3
/* 1BB1C 8002B31C 0C004010 */  beqz       $v0, .L8002B350
/* 1BB20 8002B320 00000000 */   nop
.L8002B324:
/* 1BB24 8002B324 D140010C */  jal        u32Random
/* 1BB28 8002B328 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1BB2C 8002B32C 21984000 */  addu       $s3, $v0, $zero
/* 1BB30 8002B330 FCFF6006 */  bltz       $s3, .L8002B324
/* 1BB34 8002B334 FF0F0324 */   addiu     $v1, $zero, 0xFFF
/* 1BB38 8002B338 2A107300 */  slt        $v0, $v1, $s3
/* 1BB3C 8002B33C F9FF4014 */  bnez       $v0, .L8002B324
/* 1BB40 8002B340 00000000 */   nop
/* 1BB44 8002B344 D4AC0008 */  j          .L8002B350
/* 1BB48 8002B348 00000000 */   nop
.L8002B34C:
/* 1BB4C 8002B34C 21980000 */  addu       $s3, $zero, $zero
.L8002B350:
/* 1BB50 8002B350 7BEB010C */  jal        rcos
/* 1BB54 8002B354 21200002 */   addu      $a0, $s0, $zero
/* 1BB58 8002B358 21200002 */  addu       $a0, $s0, $zero
/* 1BB5C 8002B35C 47EB010C */  jal        rsin
/* 1BB60 8002B360 21904000 */   addu      $s2, $v0, $zero
/* 1BB64 8002B364 21206002 */  addu       $a0, $s3, $zero
/* 1BB68 8002B368 7BEB010C */  jal        rcos
/* 1BB6C 8002B36C 21884000 */   addu      $s1, $v0, $zero
/* 1BB70 8002B370 21206002 */  addu       $a0, $s3, $zero
/* 1BB74 8002B374 47EB010C */  jal        rsin
/* 1BB78 8002B378 21804000 */   addu      $s0, $v0, $zero
/* 1BB7C 8002B37C 18003002 */  mult       $s1, $s0
/* 1BB80 8002B380 12880000 */  mflo       $s1
/* 1BB84 8002B384 00000000 */  nop
/* 1BB88 8002B388 00000000 */  nop
/* 1BB8C 8002B38C 18005002 */  mult       $s2, $s0
/* 1BB90 8002B390 12900000 */  mflo       $s2
/* 1BB94 8002B394 14000324 */  addiu      $v1, $zero, 0x14
/* 1BB98 8002B398 038B1100 */  sra        $s1, $s1, 12
/* 1BB9C 8002B39C 18002302 */  mult       $s1, $v1
/* 1BBA0 8002B3A0 12A80000 */  mflo       $s5
/* 1BBA4 8002B3A4 21A04000 */  addu       $s4, $v0, $zero
/* 1BBA8 8002B3A8 00000000 */  nop
/* 1BBAC 8002B3AC 18008302 */  mult       $s4, $v1
/* 1BBB0 8002B3B0 12980000 */  mflo       $s3
/* 1BBB4 8002B3B4 03931200 */  sra        $s2, $s2, 12
/* 1BBB8 8002B3B8 00000000 */  nop
/* 1BBBC 8002B3BC 18004302 */  mult       $s2, $v1
/* 1BBC0 8002B3C0 12800000 */  mflo       $s0
/* 1BBC4 8002B3C4 0A000224 */  addiu      $v0, $zero, 0xA
/* 1BBC8 8002B3C8 00000000 */  nop
/* 1BBCC 8002B3CC 18002202 */  mult       $s1, $v0
/* 1BBD0 8002B3D0 12880000 */  mflo       $s1
/* 1BBD4 8002B3D4 00000000 */  nop
/* 1BBD8 8002B3D8 00000000 */  nop
/* 1BBDC 8002B3DC 18008202 */  mult       $s4, $v0
/* 1BBE0 8002B3E0 12A00000 */  mflo       $s4
/* 1BBE4 8002B3E4 00000000 */  nop
/* 1BBE8 8002B3E8 00000000 */  nop
/* 1BBEC 8002B3EC 18004202 */  mult       $s2, $v0
/* 1BBF0 8002B3F0 04000424 */  addiu      $a0, $zero, 0x4
/* 1BBF4 8002B3F4 03A91500 */  sra        $s5, $s5, 4
/* 1BBF8 8002B3F8 21A8D503 */  addu       $s5, $fp, $s5
/* 1BBFC 8002B3FC 03991300 */  sra        $s3, $s3, 4
/* 1BC00 8002B400 2800A38F */  lw         $v1, 0x28($sp)
/* 1BC04 8002B404 03811000 */  sra        $s0, $s0, 4
/* 1BC08 8002B408 21807000 */  addu       $s0, $v1, $s0
/* 1BC0C 8002B40C 03891100 */  sra        $s1, $s1, 4
/* 1BC10 8002B410 2400A28F */  lw         $v0, 0x24($sp)
/* 1BC14 8002B414 03A11400 */  sra        $s4, $s4, 4
/* 1BC18 8002B418 21985300 */  addu       $s3, $v0, $s3
/* 1BC1C 8002B41C 12900000 */  mflo       $s2
/* 1BC20 8002B420 D140010C */  jal        u32Random
/* 1BC24 8002B424 03911200 */   sra       $s2, $s2, 4
/* 1BC28 8002B428 01000324 */  addiu      $v1, $zero, 0x1
/* 1BC2C 8002B42C 0000C3A6 */  sh         $v1, 0x0($s6)
/* 1BC30 8002B430 14000324 */  addiu      $v1, $zero, 0x14
/* 1BC34 8002B434 23106200 */  subu       $v0, $v1, $v0
/* 1BC38 8002B438 0400D5AE */  sw         $s5, 0x4($s6)
/* 1BC3C 8002B43C 0800D3AE */  sw         $s3, 0x8($s6)
/* 1BC40 8002B440 0C00D0AE */  sw         $s0, 0xC($s6)
/* 1BC44 8002B444 1000D1AE */  sw         $s1, 0x10($s6)
/* 1BC48 8002B448 1400D4AE */  sw         $s4, 0x14($s6)
/* 1BC4C 8002B44C 1800D2AE */  sw         $s2, 0x18($s6)
/* 1BC50 8002B450 0200C2A6 */  sh         $v0, 0x2($s6)
/* 1BC54 8002B454 4C00E392 */  lbu        $v1, 0x4C($s7)
/* 1BC58 8002B458 2C00A58F */  lw         $a1, 0x2C($sp)
/* 1BC5C 8002B45C 00000000 */  nop
/* 1BC60 8002B460 0400A3A0 */  sb         $v1, 0x4($a1)
/* 1BC64 8002B464 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1BC68 8002B468 00000000 */  nop
/* 1BC6C 8002B46C 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1BC70 8002B470 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1BC74 8002B474 00000000 */  nop
/* 1BC78 8002B478 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1BC7C 8002B47C 4C00E492 */  lbu        $a0, 0x4C($s7)
/* 1BC80 8002B480 1C00A58F */  lw         $a1, 0x1C($sp)
/* 1BC84 8002B484 00000000 */  nop
/* 1BC88 8002B488 0400A4A0 */  sb         $a0, 0x4($a1)
/* 1BC8C 8002B48C 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1BC90 8002B490 00000000 */  nop
/* 1BC94 8002B494 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1BC98 8002B498 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1BC9C 8002B49C 2000B18F */  lw         $s1, 0x20($sp)
/* 1BCA0 8002B4A0 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1BCA4 8002B4A4 0800E28E */  lw         $v0, 0x8($s7)
/* 1BCA8 8002B4A8 3000B68F */  lw         $s6, 0x30($sp)
/* 1BCAC 8002B4AC 2A102202 */  slt        $v0, $s1, $v0
/* 1BCB0 8002B4B0 5AFF4014 */  bnez       $v0, .L8002B21C
/* 1BCB4 8002B4B4 00000000 */   nop
.L8002B4B8:
/* 1BCB8 8002B4B8 5C00BF8F */  lw         $ra, 0x5C($sp)
/* 1BCBC 8002B4BC 5800BE8F */  lw         $fp, 0x58($sp)
/* 1BCC0 8002B4C0 0000E0AE */  sw         $zero, 0x0($s7)
/* 1BCC4 8002B4C4 5400B78F */  lw         $s7, 0x54($sp)
/* 1BCC8 8002B4C8 5000B68F */  lw         $s6, 0x50($sp)
/* 1BCCC 8002B4CC 4C00B58F */  lw         $s5, 0x4C($sp)
/* 1BCD0 8002B4D0 4800B48F */  lw         $s4, 0x48($sp)
/* 1BCD4 8002B4D4 4400B38F */  lw         $s3, 0x44($sp)
/* 1BCD8 8002B4D8 4000B28F */  lw         $s2, 0x40($sp)
/* 1BCDC 8002B4DC 3C00B18F */  lw         $s1, 0x3C($sp)
/* 1BCE0 8002B4E0 3800B08F */  lw         $s0, 0x38($sp)
/* 1BCE4 8002B4E4 0800E003 */  jr         $ra
/* 1BCE8 8002B4E8 6000BD27 */   addiu     $sp, $sp, 0x60
.size ParticleGateInit, . - ParticleGateInit
