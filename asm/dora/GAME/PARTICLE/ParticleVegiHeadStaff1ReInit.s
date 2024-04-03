.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleVegiHeadStaff1ReInit
/* 1F8EC 8002F0EC 3408828F */  lw         $v0, %gp_rel(R)($gp)
/* 1F8F0 8002F0F0 88FFBD27 */  addiu      $sp, $sp, -0x78
/* 1F8F4 8002F0F4 6C00B7AF */  sw         $s7, 0x6C($sp)
/* 1F8F8 8002F0F8 21B88000 */  addu       $s7, $a0, $zero
/* 1F8FC 8002F0FC 7400BFAF */  sw         $ra, 0x74($sp)
/* 1F900 8002F100 7000BEAF */  sw         $fp, 0x70($sp)
/* 1F904 8002F104 6800B6AF */  sw         $s6, 0x68($sp)
/* 1F908 8002F108 6400B5AF */  sw         $s5, 0x64($sp)
/* 1F90C 8002F10C 6000B4AF */  sw         $s4, 0x60($sp)
/* 1F910 8002F110 5C00B3AF */  sw         $s3, 0x5C($sp)
/* 1F914 8002F114 5800B2AF */  sw         $s2, 0x58($sp)
/* 1F918 8002F118 5400B1AF */  sw         $s1, 0x54($sp)
/* 1F91C 8002F11C 5000B0AF */  sw         $s0, 0x50($sp)
/* 1F920 8002F120 1000A5AF */  sw         $a1, 0x10($sp)
/* 1F924 8002F124 1400A6AF */  sw         $a2, 0x14($sp)
/* 1F928 8002F128 1800A7AF */  sw         $a3, 0x18($sp)
/* 1F92C 8002F12C 4000F68E */  lw         $s6, 0x40($s7)
/* 1F930 8002F130 3808838F */  lw         $v1, %gp_rel(S)($gp)
/* 1F934 8002F134 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 1F938 8002F138 10000224 */  addiu      $v0, $zero, 0x10
/* 1F93C 8002F13C 2000A3AF */  sw         $v1, 0x20($sp)
/* 1F940 8002F140 0C00E2AE */  sw         $v0, 0xC($s7)
/* 1F944 8002F144 1000A38F */  lw         $v1, 0x10($sp)
/* 1F948 8002F148 00000000 */  nop
/* 1F94C 8002F14C 2400E3AE */  sw         $v1, 0x24($s7)
/* 1F950 8002F150 1400A28F */  lw         $v0, 0x14($sp)
/* 1F954 8002F154 00000000 */  nop
/* 1F958 8002F158 2800E2AE */  sw         $v0, 0x28($s7)
/* 1F95C 8002F15C 1800A38F */  lw         $v1, 0x18($sp)
/* 1F960 8002F160 C8000224 */  addiu      $v0, $zero, 0xC8
/* 1F964 8002F164 4A00E2A6 */  sh         $v0, 0x4A($s7)
/* 1F968 8002F168 3000E28E */  lw         $v0, 0x30($s7)
/* 1F96C 8002F16C 2C00E3AE */  sw         $v1, 0x2C($s7)
/* 1F970 8002F170 2400A2AF */  sw         $v0, 0x24($sp)
/* 1F974 8002F174 3400E38E */  lw         $v1, 0x34($s7)
/* 1F978 8002F178 00000000 */  nop
/* 1F97C 8002F17C 2800A3AF */  sw         $v1, 0x28($sp)
/* 1F980 8002F180 3C00E38E */  lw         $v1, 0x3C($s7)
/* 1F984 8002F184 3800FE8E */  lw         $fp, 0x38($s7)
/* 1F988 8002F188 0400E28E */  lw         $v0, 0x4($s7)
/* 1F98C 8002F18C 00000000 */  nop
/* 1F990 8002F190 04004014 */  bnez       $v0, .L8002F1A4
/* 1F994 8002F194 2C00A3AF */   sw        $v1, 0x2C($sp)
/* 1F998 8002F198 1000A0AF */  sw         $zero, 0x10($sp)
/* 1F99C 8002F19C 1400A0AF */  sw         $zero, 0x14($sp)
/* 1F9A0 8002F1A0 1800A0AF */  sw         $zero, 0x18($sp)
.L8002F1A4:
/* 1F9A4 8002F1A4 0800E28E */  lw         $v0, 0x8($s7)
/* 1F9A8 8002F1A8 00000000 */  nop
/* 1F9AC 8002F1AC B9004018 */  blez       $v0, .L8002F494
/* 1F9B0 8002F1B0 21880000 */   addu      $s1, $zero, $zero
.L8002F1B4:
/* 1F9B4 8002F1B4 D140010C */  jal        u32Random
/* 1F9B8 8002F1B8 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1F9BC 8002F1BC 21804000 */  addu       $s0, $v0, $zero
/* 1F9C0 8002F1C0 D140010C */  jal        u32Random
/* 1F9C4 8002F1C4 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1F9C8 8002F1C8 21984000 */  addu       $s3, $v0, $zero
/* 1F9CC 8002F1CC 2400A28F */  lw         $v0, 0x24($sp)
/* 1F9D0 8002F1D0 2800A38F */  lw         $v1, 0x28($sp)
/* 1F9D4 8002F1D4 00000000 */  nop
/* 1F9D8 8002F1D8 29004310 */  beq        $v0, $v1, .L8002F280
/* 1F9DC 8002F1DC 00000000 */   nop
/* 1F9E0 8002F1E0 1000A28F */  lw         $v0, 0x10($sp)
/* 1F9E4 8002F1E4 1400A38F */  lw         $v1, 0x14($sp)
/* 1F9E8 8002F1E8 01003126 */  addiu      $s1, $s1, 0x1
/* 1F9EC 8002F1EC 3800B1AF */  sw         $s1, 0x38($sp)
/* 1F9F0 8002F1F0 00120200 */  sll        $v0, $v0, 8
/* 1F9F4 8002F1F4 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 1F9F8 8002F1F8 1800A28F */  lw         $v0, 0x18($sp)
/* 1F9FC 8002F1FC 001A0300 */  sll        $v1, $v1, 8
/* 1FA00 8002F200 4000A3AF */  sw         $v1, 0x40($sp)
/* 1FA04 8002F204 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1FA08 8002F208 4800A3AF */  sw         $v1, 0x48($sp)
/* 1FA0C 8002F20C 7400C326 */  addiu      $v1, $s6, 0x74
/* 1FA10 8002F210 3000A3AF */  sw         $v1, 0x30($sp)
/* 1FA14 8002F214 2400A38F */  lw         $v1, 0x24($sp)
/* 1FA18 8002F218 00120200 */  sll        $v0, $v0, 8
/* 1FA1C 8002F21C 4400A2AF */  sw         $v0, 0x44($sp)
/* 1FA20 8002F220 4400C226 */  addiu      $v0, $s6, 0x44
/* 1FA24 8002F224 3400A2AF */  sw         $v0, 0x34($sp)
/* 1FA28 8002F228 2A100302 */  slt        $v0, $s0, $v1
/* 1FA2C 8002F22C 06004014 */  bnez       $v0, .L8002F248
/* 1FA30 8002F230 00000000 */   nop
/* 1FA34 8002F234 2800A38F */  lw         $v1, 0x28($sp)
/* 1FA38 8002F238 00000000 */  nop
/* 1FA3C 8002F23C 2A107000 */  slt        $v0, $v1, $s0
/* 1FA40 8002F240 21004010 */  beqz       $v0, .L8002F2C8
/* 1FA44 8002F244 00000000 */   nop
.L8002F248:
/* 1FA48 8002F248 D140010C */  jal        u32Random
/* 1FA4C 8002F24C FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1FA50 8002F250 2400A38F */  lw         $v1, 0x24($sp)
/* 1FA54 8002F254 21804000 */  addu       $s0, $v0, $zero
/* 1FA58 8002F258 2A100302 */  slt        $v0, $s0, $v1
/* 1FA5C 8002F25C FAFF4014 */  bnez       $v0, .L8002F248
/* 1FA60 8002F260 00000000 */   nop
/* 1FA64 8002F264 2800A38F */  lw         $v1, 0x28($sp)
/* 1FA68 8002F268 00000000 */  nop
/* 1FA6C 8002F26C 2A107000 */  slt        $v0, $v1, $s0
/* 1FA70 8002F270 F5FF4014 */  bnez       $v0, .L8002F248
/* 1FA74 8002F274 00000000 */   nop
/* 1FA78 8002F278 B2BC0008 */  j          .L8002F2C8
/* 1FA7C 8002F27C 00000000 */   nop
.L8002F280:
/* 1FA80 8002F280 2400B08F */  lw         $s0, 0x24($sp)
/* 1FA84 8002F284 1000A28F */  lw         $v0, 0x10($sp)
/* 1FA88 8002F288 1400A38F */  lw         $v1, 0x14($sp)
/* 1FA8C 8002F28C 01003126 */  addiu      $s1, $s1, 0x1
/* 1FA90 8002F290 3800B1AF */  sw         $s1, 0x38($sp)
/* 1FA94 8002F294 00120200 */  sll        $v0, $v0, 8
/* 1FA98 8002F298 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 1FA9C 8002F29C 1800A28F */  lw         $v0, 0x18($sp)
/* 1FAA0 8002F2A0 001A0300 */  sll        $v1, $v1, 8
/* 1FAA4 8002F2A4 4000A3AF */  sw         $v1, 0x40($sp)
/* 1FAA8 8002F2A8 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1FAAC 8002F2AC 4800A3AF */  sw         $v1, 0x48($sp)
/* 1FAB0 8002F2B0 7400C326 */  addiu      $v1, $s6, 0x74
/* 1FAB4 8002F2B4 3000A3AF */  sw         $v1, 0x30($sp)
/* 1FAB8 8002F2B8 00120200 */  sll        $v0, $v0, 8
/* 1FABC 8002F2BC 4400A2AF */  sw         $v0, 0x44($sp)
/* 1FAC0 8002F2C0 4400C226 */  addiu      $v0, $s6, 0x44
/* 1FAC4 8002F2C4 3400A2AF */  sw         $v0, 0x34($sp)
.L8002F2C8:
/* 1FAC8 8002F2C8 2C00A28F */  lw         $v0, 0x2C($sp)
/* 1FACC 8002F2CC 00000000 */  nop
/* 1FAD0 8002F2D0 1500C213 */  beq        $fp, $v0, .L8002F328
/* 1FAD4 8002F2D4 2A107E02 */   slt       $v0, $s3, $fp
/* 1FAD8 8002F2D8 06004014 */  bnez       $v0, .L8002F2F4
/* 1FADC 8002F2DC 00000000 */   nop
/* 1FAE0 8002F2E0 2C00A38F */  lw         $v1, 0x2C($sp)
/* 1FAE4 8002F2E4 00000000 */  nop
/* 1FAE8 8002F2E8 2A107300 */  slt        $v0, $v1, $s3
/* 1FAEC 8002F2EC 0F004010 */  beqz       $v0, .L8002F32C
/* 1FAF0 8002F2F0 00000000 */   nop
.L8002F2F4:
/* 1FAF4 8002F2F4 D140010C */  jal        u32Random
/* 1FAF8 8002F2F8 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1FAFC 8002F2FC 21984000 */  addu       $s3, $v0, $zero
/* 1FB00 8002F300 2A107E02 */  slt        $v0, $s3, $fp
/* 1FB04 8002F304 FBFF4014 */  bnez       $v0, .L8002F2F4
/* 1FB08 8002F308 00000000 */   nop
/* 1FB0C 8002F30C 2C00A38F */  lw         $v1, 0x2C($sp)
/* 1FB10 8002F310 00000000 */  nop
/* 1FB14 8002F314 2A107300 */  slt        $v0, $v1, $s3
/* 1FB18 8002F318 F6FF4014 */  bnez       $v0, .L8002F2F4
/* 1FB1C 8002F31C 00000000 */   nop
/* 1FB20 8002F320 CBBC0008 */  j          .L8002F32C
/* 1FB24 8002F324 00000000 */   nop
.L8002F328:
/* 1FB28 8002F328 2198C003 */  addu       $s3, $fp, $zero
.L8002F32C:
/* 1FB2C 8002F32C 7BEB010C */  jal        rcos
/* 1FB30 8002F330 21200002 */   addu      $a0, $s0, $zero
/* 1FB34 8002F334 21200002 */  addu       $a0, $s0, $zero
/* 1FB38 8002F338 47EB010C */  jal        rsin
/* 1FB3C 8002F33C 21904000 */   addu      $s2, $v0, $zero
/* 1FB40 8002F340 21206002 */  addu       $a0, $s3, $zero
/* 1FB44 8002F344 7BEB010C */  jal        rcos
/* 1FB48 8002F348 21884000 */   addu      $s1, $v0, $zero
/* 1FB4C 8002F34C 21206002 */  addu       $a0, $s3, $zero
/* 1FB50 8002F350 47EB010C */  jal        rsin
/* 1FB54 8002F354 21804000 */   addu      $s0, $v0, $zero
/* 1FB58 8002F358 18003002 */  mult       $s1, $s0
/* 1FB5C 8002F35C 12880000 */  mflo       $s1
/* 1FB60 8002F360 00000000 */  nop
/* 1FB64 8002F364 00000000 */  nop
/* 1FB68 8002F368 18005002 */  mult       $s2, $s0
/* 1FB6C 8002F36C 12900000 */  mflo       $s2
/* 1FB70 8002F370 1C00A38F */  lw         $v1, 0x1C($sp)
/* 1FB74 8002F374 038B1100 */  sra        $s1, $s1, 12
/* 1FB78 8002F378 18002302 */  mult       $s1, $v1
/* 1FB7C 8002F37C 12A80000 */  mflo       $s5
/* 1FB80 8002F380 21A04000 */  addu       $s4, $v0, $zero
/* 1FB84 8002F384 00000000 */  nop
/* 1FB88 8002F388 18008302 */  mult       $s4, $v1
/* 1FB8C 8002F38C 12980000 */  mflo       $s3
/* 1FB90 8002F390 03931200 */  sra        $s2, $s2, 12
/* 1FB94 8002F394 00000000 */  nop
/* 1FB98 8002F398 18004302 */  mult       $s2, $v1
/* 1FB9C 8002F39C 12800000 */  mflo       $s0
/* 1FBA0 8002F3A0 2000A28F */  lw         $v0, 0x20($sp)
/* 1FBA4 8002F3A4 00000000 */  nop
/* 1FBA8 8002F3A8 18002202 */  mult       $s1, $v0
/* 1FBAC 8002F3AC 12880000 */  mflo       $s1
/* 1FBB0 8002F3B0 00000000 */  nop
/* 1FBB4 8002F3B4 00000000 */  nop
/* 1FBB8 8002F3B8 18008202 */  mult       $s4, $v0
/* 1FBBC 8002F3BC 12A00000 */  mflo       $s4
/* 1FBC0 8002F3C0 04000424 */  addiu      $a0, $zero, 0x4
/* 1FBC4 8002F3C4 00000000 */  nop
/* 1FBC8 8002F3C8 18004202 */  mult       $s2, $v0
/* 1FBCC 8002F3CC 03A91500 */  sra        $s5, $s5, 4
/* 1FBD0 8002F3D0 4000A38F */  lw         $v1, 0x40($sp)
/* 1FBD4 8002F3D4 03991300 */  sra        $s3, $s3, 4
/* 1FBD8 8002F3D8 21987300 */  addu       $s3, $v1, $s3
/* 1FBDC 8002F3DC 03811000 */  sra        $s0, $s0, 4
/* 1FBE0 8002F3E0 3C00A28F */  lw         $v0, 0x3C($sp)
/* 1FBE4 8002F3E4 03891100 */  sra        $s1, $s1, 4
/* 1FBE8 8002F3E8 21A85500 */  addu       $s5, $v0, $s5
/* 1FBEC 8002F3EC 4400A28F */  lw         $v0, 0x44($sp)
/* 1FBF0 8002F3F0 03A11400 */  sra        $s4, $s4, 4
/* 1FBF4 8002F3F4 21805000 */  addu       $s0, $v0, $s0
/* 1FBF8 8002F3F8 12900000 */  mflo       $s2
/* 1FBFC 8002F3FC D140010C */  jal        u32Random
/* 1FC00 8002F400 03911200 */   sra       $s2, $s2, 4
/* 1FC04 8002F404 01000324 */  addiu      $v1, $zero, 0x1
/* 1FC08 8002F408 0000C3A6 */  sh         $v1, 0x0($s6)
/* 1FC0C 8002F40C 10000324 */  addiu      $v1, $zero, 0x10
/* 1FC10 8002F410 23106200 */  subu       $v0, $v1, $v0
/* 1FC14 8002F414 0400D5AE */  sw         $s5, 0x4($s6)
/* 1FC18 8002F418 0800D3AE */  sw         $s3, 0x8($s6)
/* 1FC1C 8002F41C 0C00D0AE */  sw         $s0, 0xC($s6)
/* 1FC20 8002F420 1000D1AE */  sw         $s1, 0x10($s6)
/* 1FC24 8002F424 1400D4AE */  sw         $s4, 0x14($s6)
/* 1FC28 8002F428 1800D2AE */  sw         $s2, 0x18($s6)
/* 1FC2C 8002F42C 0200C2A6 */  sh         $v0, 0x2($s6)
/* 1FC30 8002F430 4C00E392 */  lbu        $v1, 0x4C($s7)
/* 1FC34 8002F434 4800A58F */  lw         $a1, 0x48($sp)
/* 1FC38 8002F438 00000000 */  nop
/* 1FC3C 8002F43C 0400A3A0 */  sb         $v1, 0x4($a1)
/* 1FC40 8002F440 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1FC44 8002F444 00000000 */  nop
/* 1FC48 8002F448 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1FC4C 8002F44C 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1FC50 8002F450 00000000 */  nop
/* 1FC54 8002F454 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1FC58 8002F458 4C00E492 */  lbu        $a0, 0x4C($s7)
/* 1FC5C 8002F45C 3400A58F */  lw         $a1, 0x34($sp)
/* 1FC60 8002F460 00000000 */  nop
/* 1FC64 8002F464 0400A4A0 */  sb         $a0, 0x4($a1)
/* 1FC68 8002F468 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1FC6C 8002F46C 00000000 */  nop
/* 1FC70 8002F470 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1FC74 8002F474 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1FC78 8002F478 3800B18F */  lw         $s1, 0x38($sp)
/* 1FC7C 8002F47C 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1FC80 8002F480 0800E28E */  lw         $v0, 0x8($s7)
/* 1FC84 8002F484 3000B68F */  lw         $s6, 0x30($sp)
/* 1FC88 8002F488 2A102202 */  slt        $v0, $s1, $v0
/* 1FC8C 8002F48C 49FF4014 */  bnez       $v0, .L8002F1B4
/* 1FC90 8002F490 00000000 */   nop
.L8002F494:
/* 1FC94 8002F494 7400BF8F */  lw         $ra, 0x74($sp)
/* 1FC98 8002F498 7000BE8F */  lw         $fp, 0x70($sp)
/* 1FC9C 8002F49C 01000224 */  addiu      $v0, $zero, 0x1
/* 1FCA0 8002F4A0 0000E2AE */  sw         $v0, 0x0($s7)
/* 1FCA4 8002F4A4 6C00B78F */  lw         $s7, 0x6C($sp)
/* 1FCA8 8002F4A8 6800B68F */  lw         $s6, 0x68($sp)
/* 1FCAC 8002F4AC 6400B58F */  lw         $s5, 0x64($sp)
/* 1FCB0 8002F4B0 6000B48F */  lw         $s4, 0x60($sp)
/* 1FCB4 8002F4B4 5C00B38F */  lw         $s3, 0x5C($sp)
/* 1FCB8 8002F4B8 5800B28F */  lw         $s2, 0x58($sp)
/* 1FCBC 8002F4BC 5400B18F */  lw         $s1, 0x54($sp)
/* 1FCC0 8002F4C0 5000B08F */  lw         $s0, 0x50($sp)
/* 1FCC4 8002F4C4 0800E003 */  jr         $ra
/* 1FCC8 8002F4C8 7800BD27 */   addiu     $sp, $sp, 0x78
.size ParticleVegiHeadStaff1ReInit, . - ParticleVegiHeadStaff1ReInit
