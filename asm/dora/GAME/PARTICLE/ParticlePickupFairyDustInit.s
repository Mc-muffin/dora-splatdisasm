.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticlePickupFairyDustInit
/* 1EA4C 8002E24C 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 1EA50 8002E250 5C00B7AF */  sw         $s7, 0x5C($sp)
/* 1EA54 8002E254 21B88000 */  addu       $s7, $a0, $zero
/* 1EA58 8002E258 6400BFAF */  sw         $ra, 0x64($sp)
/* 1EA5C 8002E25C 6000BEAF */  sw         $fp, 0x60($sp)
/* 1EA60 8002E260 5800B6AF */  sw         $s6, 0x58($sp)
/* 1EA64 8002E264 5400B5AF */  sw         $s5, 0x54($sp)
/* 1EA68 8002E268 5000B4AF */  sw         $s4, 0x50($sp)
/* 1EA6C 8002E26C 4C00B3AF */  sw         $s3, 0x4C($sp)
/* 1EA70 8002E270 4800B2AF */  sw         $s2, 0x48($sp)
/* 1EA74 8002E274 4400B1AF */  sw         $s1, 0x44($sp)
/* 1EA78 8002E278 4000B0AF */  sw         $s0, 0x40($sp)
/* 1EA7C 8002E27C 1000A5AF */  sw         $a1, 0x10($sp)
/* 1EA80 8002E280 1400A6AF */  sw         $a2, 0x14($sp)
/* 1EA84 8002E284 1800A7AF */  sw         $a3, 0x18($sp)
/* 1EA88 8002E288 4000F68E */  lw         $s6, 0x40($s7)
/* 1EA8C 8002E28C 80000224 */  addiu      $v0, $zero, 0x80
/* 1EA90 8002E290 C41382AF */  sw         $v0, %gp_rel(TEMPR)($gp)
/* 1EA94 8002E294 C01382AF */  sw         $v0, %gp_rel(TEMPG)($gp)
/* 1EA98 8002E298 BC1382AF */  sw         $v0, %gp_rel(TEMPB)($gp)
/* 1EA9C 8002E29C FF0F0224 */  addiu      $v0, $zero, 0xFFF
/* 1EAA0 8002E2A0 3400E2AE */  sw         $v0, 0x34($s7)
/* 1EAA4 8002E2A4 3C00E2AE */  sw         $v0, 0x3C($s7)
/* 1EAA8 8002E2A8 3408828F */  lw         $v0, %gp_rel(R)($gp)
/* 1EAAC 8002E2AC 3808838F */  lw         $v1, %gp_rel(S)($gp)
/* 1EAB0 8002E2B0 3000E0AE */  sw         $zero, 0x30($s7)
/* 1EAB4 8002E2B4 3800E0AE */  sw         $zero, 0x38($s7)
/* 1EAB8 8002E2B8 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 1EABC 8002E2BC 1E000224 */  addiu      $v0, $zero, 0x1E
/* 1EAC0 8002E2C0 2000A3AF */  sw         $v1, 0x20($sp)
/* 1EAC4 8002E2C4 0C00E2AE */  sw         $v0, 0xC($s7)
/* 1EAC8 8002E2C8 1000A38F */  lw         $v1, 0x10($sp)
/* 1EACC 8002E2CC 00000000 */  nop
/* 1EAD0 8002E2D0 2400E3AE */  sw         $v1, 0x24($s7)
/* 1EAD4 8002E2D4 1400A28F */  lw         $v0, 0x14($sp)
/* 1EAD8 8002E2D8 00000000 */  nop
/* 1EADC 8002E2DC 2800E2AE */  sw         $v0, 0x28($s7)
/* 1EAE0 8002E2E0 1800A38F */  lw         $v1, 0x18($sp)
/* 1EAE4 8002E2E4 C8000224 */  addiu      $v0, $zero, 0xC8
/* 1EAE8 8002E2E8 4A00E2A6 */  sh         $v0, 0x4A($s7)
/* 1EAEC 8002E2EC 0400E28E */  lw         $v0, 0x4($s7)
/* 1EAF0 8002E2F0 00000000 */  nop
/* 1EAF4 8002E2F4 04004014 */  bnez       $v0, .L8002E308
/* 1EAF8 8002E2F8 2C00E3AE */   sw        $v1, 0x2C($s7)
/* 1EAFC 8002E2FC 1000A0AF */  sw         $zero, 0x10($sp)
/* 1EB00 8002E300 1400A0AF */  sw         $zero, 0x14($sp)
/* 1EB04 8002E304 1800A0AF */  sw         $zero, 0x18($sp)
.L8002E308:
/* 1EB08 8002E308 0800E28E */  lw         $v0, 0x8($s7)
/* 1EB0C 8002E30C 00000000 */  nop
/* 1EB10 8002E310 A8004018 */  blez       $v0, .L8002E5B4
/* 1EB14 8002E314 21880000 */   addu      $s1, $zero, $zero
.L8002E318:
/* 1EB18 8002E318 D140010C */  jal        u32Random
/* 1EB1C 8002E31C FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1EB20 8002E320 21804000 */  addu       $s0, $v0, $zero
/* 1EB24 8002E324 D140010C */  jal        u32Random
/* 1EB28 8002E328 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1EB2C 8002E32C 21984000 */  addu       $s3, $v0, $zero
/* 1EB30 8002E330 21100000 */  addu       $v0, $zero, $zero
/* 1EB34 8002E334 FF0F0324 */  addiu      $v1, $zero, 0xFFF
/* 1EB38 8002E338 20004310 */  beq        $v0, $v1, .L8002E3BC
/* 1EB3C 8002E33C 00000000 */   nop
/* 1EB40 8002E340 1000A28F */  lw         $v0, 0x10($sp)
/* 1EB44 8002E344 1400A38F */  lw         $v1, 0x14($sp)
/* 1EB48 8002E348 01003126 */  addiu      $s1, $s1, 0x1
/* 1EB4C 8002E34C 2800B1AF */  sw         $s1, 0x28($sp)
/* 1EB50 8002E350 00F20200 */  sll        $fp, $v0, 8
/* 1EB54 8002E354 1800A28F */  lw         $v0, 0x18($sp)
/* 1EB58 8002E358 001A0300 */  sll        $v1, $v1, 8
/* 1EB5C 8002E35C 2C00A3AF */  sw         $v1, 0x2C($sp)
/* 1EB60 8002E360 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1EB64 8002E364 3400A3AF */  sw         $v1, 0x34($sp)
/* 1EB68 8002E368 7400C326 */  addiu      $v1, $s6, 0x74
/* 1EB6C 8002E36C 3800A3AF */  sw         $v1, 0x38($sp)
/* 1EB70 8002E370 00120200 */  sll        $v0, $v0, 8
/* 1EB74 8002E374 3000A2AF */  sw         $v0, 0x30($sp)
/* 1EB78 8002E378 4400C226 */  addiu      $v0, $s6, 0x44
/* 1EB7C 8002E37C 05000006 */  bltz       $s0, .L8002E394
/* 1EB80 8002E380 2400A2AF */   sw        $v0, 0x24($sp)
/* 1EB84 8002E384 FF0F0324 */  addiu      $v1, $zero, 0xFFF
/* 1EB88 8002E388 2A107000 */  slt        $v0, $v1, $s0
/* 1EB8C 8002E38C 1E004010 */  beqz       $v0, .L8002E408
/* 1EB90 8002E390 21100000 */   addu      $v0, $zero, $zero
.L8002E394:
/* 1EB94 8002E394 D140010C */  jal        u32Random
/* 1EB98 8002E398 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1EB9C 8002E39C 21804000 */  addu       $s0, $v0, $zero
/* 1EBA0 8002E3A0 FCFF0006 */  bltz       $s0, .L8002E394
/* 1EBA4 8002E3A4 FF0F0324 */   addiu     $v1, $zero, 0xFFF
/* 1EBA8 8002E3A8 2A107000 */  slt        $v0, $v1, $s0
/* 1EBAC 8002E3AC F9FF4014 */  bnez       $v0, .L8002E394
/* 1EBB0 8002E3B0 21100000 */   addu      $v0, $zero, $zero
/* 1EBB4 8002E3B4 02B90008 */  j          .L8002E408
/* 1EBB8 8002E3B8 00000000 */   nop
.L8002E3BC:
/* 1EBBC 8002E3BC 21800000 */  addu       $s0, $zero, $zero
/* 1EBC0 8002E3C0 1000A28F */  lw         $v0, 0x10($sp)
/* 1EBC4 8002E3C4 1400A38F */  lw         $v1, 0x14($sp)
/* 1EBC8 8002E3C8 01003126 */  addiu      $s1, $s1, 0x1
/* 1EBCC 8002E3CC 2800B1AF */  sw         $s1, 0x28($sp)
/* 1EBD0 8002E3D0 00F20200 */  sll        $fp, $v0, 8
/* 1EBD4 8002E3D4 1800A28F */  lw         $v0, 0x18($sp)
/* 1EBD8 8002E3D8 001A0300 */  sll        $v1, $v1, 8
/* 1EBDC 8002E3DC 2C00A3AF */  sw         $v1, 0x2C($sp)
/* 1EBE0 8002E3E0 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1EBE4 8002E3E4 3400A3AF */  sw         $v1, 0x34($sp)
/* 1EBE8 8002E3E8 7400C326 */  addiu      $v1, $s6, 0x74
/* 1EBEC 8002E3EC 3800A3AF */  sw         $v1, 0x38($sp)
/* 1EBF0 8002E3F0 00120200 */  sll        $v0, $v0, 8
/* 1EBF4 8002E3F4 3000A2AF */  sw         $v0, 0x30($sp)
/* 1EBF8 8002E3F8 4400C226 */  addiu      $v0, $s6, 0x44
/* 1EBFC 8002E3FC 2400A2AF */  sw         $v0, 0x24($sp)
/* 1EC00 8002E400 21100000 */  addu       $v0, $zero, $zero
/* 1EC04 8002E404 FF0F0324 */  addiu      $v1, $zero, 0xFFF
.L8002E408:
/* 1EC08 8002E408 0F004310 */  beq        $v0, $v1, .L8002E448
/* 1EC0C 8002E40C 00000000 */   nop
/* 1EC10 8002E410 03006006 */  bltz       $s3, .L8002E420
/* 1EC14 8002E414 2A107300 */   slt       $v0, $v1, $s3
/* 1EC18 8002E418 0C004010 */  beqz       $v0, .L8002E44C
/* 1EC1C 8002E41C 00000000 */   nop
.L8002E420:
/* 1EC20 8002E420 D140010C */  jal        u32Random
/* 1EC24 8002E424 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1EC28 8002E428 21984000 */  addu       $s3, $v0, $zero
/* 1EC2C 8002E42C FCFF6006 */  bltz       $s3, .L8002E420
/* 1EC30 8002E430 FF0F0324 */   addiu     $v1, $zero, 0xFFF
/* 1EC34 8002E434 2A107300 */  slt        $v0, $v1, $s3
/* 1EC38 8002E438 F9FF4014 */  bnez       $v0, .L8002E420
/* 1EC3C 8002E43C 00000000 */   nop
/* 1EC40 8002E440 13B90008 */  j          .L8002E44C
/* 1EC44 8002E444 00000000 */   nop
.L8002E448:
/* 1EC48 8002E448 21980000 */  addu       $s3, $zero, $zero
.L8002E44C:
/* 1EC4C 8002E44C 7BEB010C */  jal        rcos
/* 1EC50 8002E450 21200002 */   addu      $a0, $s0, $zero
/* 1EC54 8002E454 21200002 */  addu       $a0, $s0, $zero
/* 1EC58 8002E458 47EB010C */  jal        rsin
/* 1EC5C 8002E45C 21904000 */   addu      $s2, $v0, $zero
/* 1EC60 8002E460 21206002 */  addu       $a0, $s3, $zero
/* 1EC64 8002E464 7BEB010C */  jal        rcos
/* 1EC68 8002E468 21884000 */   addu      $s1, $v0, $zero
/* 1EC6C 8002E46C 21206002 */  addu       $a0, $s3, $zero
/* 1EC70 8002E470 47EB010C */  jal        rsin
/* 1EC74 8002E474 21804000 */   addu      $s0, $v0, $zero
/* 1EC78 8002E478 18003002 */  mult       $s1, $s0
/* 1EC7C 8002E47C 12880000 */  mflo       $s1
/* 1EC80 8002E480 00000000 */  nop
/* 1EC84 8002E484 00000000 */  nop
/* 1EC88 8002E488 18005002 */  mult       $s2, $s0
/* 1EC8C 8002E48C 12900000 */  mflo       $s2
/* 1EC90 8002E490 1C00A38F */  lw         $v1, 0x1C($sp)
/* 1EC94 8002E494 038B1100 */  sra        $s1, $s1, 12
/* 1EC98 8002E498 18002302 */  mult       $s1, $v1
/* 1EC9C 8002E49C 12A80000 */  mflo       $s5
/* 1ECA0 8002E4A0 21A04000 */  addu       $s4, $v0, $zero
/* 1ECA4 8002E4A4 00000000 */  nop
/* 1ECA8 8002E4A8 18008302 */  mult       $s4, $v1
/* 1ECAC 8002E4AC 12980000 */  mflo       $s3
/* 1ECB0 8002E4B0 03931200 */  sra        $s2, $s2, 12
/* 1ECB4 8002E4B4 00000000 */  nop
/* 1ECB8 8002E4B8 18004302 */  mult       $s2, $v1
/* 1ECBC 8002E4BC 12800000 */  mflo       $s0
/* 1ECC0 8002E4C0 2000A28F */  lw         $v0, 0x20($sp)
/* 1ECC4 8002E4C4 00000000 */  nop
/* 1ECC8 8002E4C8 18002202 */  mult       $s1, $v0
/* 1ECCC 8002E4CC 12880000 */  mflo       $s1
/* 1ECD0 8002E4D0 00000000 */  nop
/* 1ECD4 8002E4D4 00000000 */  nop
/* 1ECD8 8002E4D8 18008202 */  mult       $s4, $v0
/* 1ECDC 8002E4DC 12A00000 */  mflo       $s4
/* 1ECE0 8002E4E0 00000000 */  nop
/* 1ECE4 8002E4E4 00000000 */  nop
/* 1ECE8 8002E4E8 18004202 */  mult       $s2, $v0
/* 1ECEC 8002E4EC 04000424 */  addiu      $a0, $zero, 0x4
/* 1ECF0 8002E4F0 03A91500 */  sra        $s5, $s5, 4
/* 1ECF4 8002E4F4 21A8D503 */  addu       $s5, $fp, $s5
/* 1ECF8 8002E4F8 03991300 */  sra        $s3, $s3, 4
/* 1ECFC 8002E4FC 3000A38F */  lw         $v1, 0x30($sp)
/* 1ED00 8002E500 03811000 */  sra        $s0, $s0, 4
/* 1ED04 8002E504 21807000 */  addu       $s0, $v1, $s0
/* 1ED08 8002E508 03891100 */  sra        $s1, $s1, 4
/* 1ED0C 8002E50C 2C00A28F */  lw         $v0, 0x2C($sp)
/* 1ED10 8002E510 03A11400 */  sra        $s4, $s4, 4
/* 1ED14 8002E514 21985300 */  addu       $s3, $v0, $s3
/* 1ED18 8002E518 12900000 */  mflo       $s2
/* 1ED1C 8002E51C D140010C */  jal        u32Random
/* 1ED20 8002E520 03911200 */   sra       $s2, $s2, 4
/* 1ED24 8002E524 01000324 */  addiu      $v1, $zero, 0x1
/* 1ED28 8002E528 0000C3A6 */  sh         $v1, 0x0($s6)
/* 1ED2C 8002E52C 1E000324 */  addiu      $v1, $zero, 0x1E
/* 1ED30 8002E530 23106200 */  subu       $v0, $v1, $v0
/* 1ED34 8002E534 0400D5AE */  sw         $s5, 0x4($s6)
/* 1ED38 8002E538 0800D3AE */  sw         $s3, 0x8($s6)
/* 1ED3C 8002E53C 0C00D0AE */  sw         $s0, 0xC($s6)
/* 1ED40 8002E540 1000D1AE */  sw         $s1, 0x10($s6)
/* 1ED44 8002E544 1400D4AE */  sw         $s4, 0x14($s6)
/* 1ED48 8002E548 1800D2AE */  sw         $s2, 0x18($s6)
/* 1ED4C 8002E54C 0200C2A6 */  sh         $v0, 0x2($s6)
/* 1ED50 8002E550 4C00E392 */  lbu        $v1, 0x4C($s7)
/* 1ED54 8002E554 3400A58F */  lw         $a1, 0x34($sp)
/* 1ED58 8002E558 00000000 */  nop
/* 1ED5C 8002E55C 0400A3A0 */  sb         $v1, 0x4($a1)
/* 1ED60 8002E560 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1ED64 8002E564 00000000 */  nop
/* 1ED68 8002E568 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1ED6C 8002E56C 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1ED70 8002E570 00000000 */  nop
/* 1ED74 8002E574 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1ED78 8002E578 4C00E492 */  lbu        $a0, 0x4C($s7)
/* 1ED7C 8002E57C 2400A58F */  lw         $a1, 0x24($sp)
/* 1ED80 8002E580 00000000 */  nop
/* 1ED84 8002E584 0400A4A0 */  sb         $a0, 0x4($a1)
/* 1ED88 8002E588 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1ED8C 8002E58C 00000000 */  nop
/* 1ED90 8002E590 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1ED94 8002E594 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1ED98 8002E598 2800B18F */  lw         $s1, 0x28($sp)
/* 1ED9C 8002E59C 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1EDA0 8002E5A0 0800E28E */  lw         $v0, 0x8($s7)
/* 1EDA4 8002E5A4 3800B68F */  lw         $s6, 0x38($sp)
/* 1EDA8 8002E5A8 2A102202 */  slt        $v0, $s1, $v0
/* 1EDAC 8002E5AC 5AFF4014 */  bnez       $v0, .L8002E318
/* 1EDB0 8002E5B0 00000000 */   nop
.L8002E5B4:
/* 1EDB4 8002E5B4 6400BF8F */  lw         $ra, 0x64($sp)
/* 1EDB8 8002E5B8 6000BE8F */  lw         $fp, 0x60($sp)
/* 1EDBC 8002E5BC 0000E0AE */  sw         $zero, 0x0($s7)
/* 1EDC0 8002E5C0 5C00B78F */  lw         $s7, 0x5C($sp)
/* 1EDC4 8002E5C4 5800B68F */  lw         $s6, 0x58($sp)
/* 1EDC8 8002E5C8 5400B58F */  lw         $s5, 0x54($sp)
/* 1EDCC 8002E5CC 5000B48F */  lw         $s4, 0x50($sp)
/* 1EDD0 8002E5D0 4C00B38F */  lw         $s3, 0x4C($sp)
/* 1EDD4 8002E5D4 4800B28F */  lw         $s2, 0x48($sp)
/* 1EDD8 8002E5D8 4400B18F */  lw         $s1, 0x44($sp)
/* 1EDDC 8002E5DC 4000B08F */  lw         $s0, 0x40($sp)
/* 1EDE0 8002E5E0 0800E003 */  jr         $ra
/* 1EDE4 8002E5E4 6800BD27 */   addiu     $sp, $sp, 0x68
.size ParticlePickupFairyDustInit, . - ParticlePickupFairyDustInit
