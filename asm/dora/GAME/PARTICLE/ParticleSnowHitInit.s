.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleSnowHitInit
/* 1B208 8002AA08 A0FFBD27 */  addiu      $sp, $sp, -0x60
/* 1B20C 8002AA0C 5400B7AF */  sw         $s7, 0x54($sp)
/* 1B210 8002AA10 21B88000 */  addu       $s7, $a0, $zero
/* 1B214 8002AA14 5C00BFAF */  sw         $ra, 0x5C($sp)
/* 1B218 8002AA18 5800BEAF */  sw         $fp, 0x58($sp)
/* 1B21C 8002AA1C 5000B6AF */  sw         $s6, 0x50($sp)
/* 1B220 8002AA20 4C00B5AF */  sw         $s5, 0x4C($sp)
/* 1B224 8002AA24 4800B4AF */  sw         $s4, 0x48($sp)
/* 1B228 8002AA28 4400B3AF */  sw         $s3, 0x44($sp)
/* 1B22C 8002AA2C 4000B2AF */  sw         $s2, 0x40($sp)
/* 1B230 8002AA30 3C00B1AF */  sw         $s1, 0x3C($sp)
/* 1B234 8002AA34 3800B0AF */  sw         $s0, 0x38($sp)
/* 1B238 8002AA38 1000A5AF */  sw         $a1, 0x10($sp)
/* 1B23C 8002AA3C 1400A6AF */  sw         $a2, 0x14($sp)
/* 1B240 8002AA40 1800A7AF */  sw         $a3, 0x18($sp)
/* 1B244 8002AA44 4000F68E */  lw         $s6, 0x40($s7)
/* 1B248 8002AA48 F0000224 */  addiu      $v0, $zero, 0xF0
/* 1B24C 8002AA4C C41382AF */  sw         $v0, %gp_rel(TEMPR)($gp)
/* 1B250 8002AA50 C01382AF */  sw         $v0, %gp_rel(TEMPG)($gp)
/* 1B254 8002AA54 BC1382AF */  sw         $v0, %gp_rel(TEMPB)($gp)
/* 1B258 8002AA58 FF0F0224 */  addiu      $v0, $zero, 0xFFF
/* 1B25C 8002AA5C 3400E2AE */  sw         $v0, 0x34($s7)
/* 1B260 8002AA60 3C00E2AE */  sw         $v0, 0x3C($s7)
/* 1B264 8002AA64 14000224 */  addiu      $v0, $zero, 0x14
/* 1B268 8002AA68 3000E0AE */  sw         $zero, 0x30($s7)
/* 1B26C 8002AA6C 3800E0AE */  sw         $zero, 0x38($s7)
/* 1B270 8002AA70 0C00E2AE */  sw         $v0, 0xC($s7)
/* 1B274 8002AA74 1000A38F */  lw         $v1, 0x10($sp)
/* 1B278 8002AA78 00000000 */  nop
/* 1B27C 8002AA7C 2400E3AE */  sw         $v1, 0x24($s7)
/* 1B280 8002AA80 1400A28F */  lw         $v0, 0x14($sp)
/* 1B284 8002AA84 00000000 */  nop
/* 1B288 8002AA88 2800E2AE */  sw         $v0, 0x28($s7)
/* 1B28C 8002AA8C 1800A38F */  lw         $v1, 0x18($sp)
/* 1B290 8002AA90 C8000224 */  addiu      $v0, $zero, 0xC8
/* 1B294 8002AA94 4A00E2A6 */  sh         $v0, 0x4A($s7)
/* 1B298 8002AA98 0400E28E */  lw         $v0, 0x4($s7)
/* 1B29C 8002AA9C 00000000 */  nop
/* 1B2A0 8002AAA0 04004014 */  bnez       $v0, .L8002AAB4
/* 1B2A4 8002AAA4 2C00E3AE */   sw        $v1, 0x2C($s7)
/* 1B2A8 8002AAA8 1000A0AF */  sw         $zero, 0x10($sp)
/* 1B2AC 8002AAAC 1400A0AF */  sw         $zero, 0x14($sp)
/* 1B2B0 8002AAB0 1800A0AF */  sw         $zero, 0x18($sp)
.L8002AAB4:
/* 1B2B4 8002AAB4 0800E28E */  lw         $v0, 0x8($s7)
/* 1B2B8 8002AAB8 00000000 */  nop
/* 1B2BC 8002AABC A8004018 */  blez       $v0, .L8002AD60
/* 1B2C0 8002AAC0 21880000 */   addu      $s1, $zero, $zero
.L8002AAC4:
/* 1B2C4 8002AAC4 D140010C */  jal        u32Random
/* 1B2C8 8002AAC8 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1B2CC 8002AACC 21804000 */  addu       $s0, $v0, $zero
/* 1B2D0 8002AAD0 D140010C */  jal        u32Random
/* 1B2D4 8002AAD4 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1B2D8 8002AAD8 21984000 */  addu       $s3, $v0, $zero
/* 1B2DC 8002AADC 21100000 */  addu       $v0, $zero, $zero
/* 1B2E0 8002AAE0 FF0F0324 */  addiu      $v1, $zero, 0xFFF
/* 1B2E4 8002AAE4 20004310 */  beq        $v0, $v1, .L8002AB68
/* 1B2E8 8002AAE8 00000000 */   nop
/* 1B2EC 8002AAEC 1000A28F */  lw         $v0, 0x10($sp)
/* 1B2F0 8002AAF0 1400A38F */  lw         $v1, 0x14($sp)
/* 1B2F4 8002AAF4 01003126 */  addiu      $s1, $s1, 0x1
/* 1B2F8 8002AAF8 2000B1AF */  sw         $s1, 0x20($sp)
/* 1B2FC 8002AAFC 00F20200 */  sll        $fp, $v0, 8
/* 1B300 8002AB00 1800A28F */  lw         $v0, 0x18($sp)
/* 1B304 8002AB04 001A0300 */  sll        $v1, $v1, 8
/* 1B308 8002AB08 2400A3AF */  sw         $v1, 0x24($sp)
/* 1B30C 8002AB0C 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1B310 8002AB10 2C00A3AF */  sw         $v1, 0x2C($sp)
/* 1B314 8002AB14 7400C326 */  addiu      $v1, $s6, 0x74
/* 1B318 8002AB18 3000A3AF */  sw         $v1, 0x30($sp)
/* 1B31C 8002AB1C 00120200 */  sll        $v0, $v0, 8
/* 1B320 8002AB20 2800A2AF */  sw         $v0, 0x28($sp)
/* 1B324 8002AB24 4400C226 */  addiu      $v0, $s6, 0x44
/* 1B328 8002AB28 05000006 */  bltz       $s0, .L8002AB40
/* 1B32C 8002AB2C 1C00A2AF */   sw        $v0, 0x1C($sp)
/* 1B330 8002AB30 FF0F0324 */  addiu      $v1, $zero, 0xFFF
/* 1B334 8002AB34 2A107000 */  slt        $v0, $v1, $s0
/* 1B338 8002AB38 1E004010 */  beqz       $v0, .L8002ABB4
/* 1B33C 8002AB3C 21100000 */   addu      $v0, $zero, $zero
.L8002AB40:
/* 1B340 8002AB40 D140010C */  jal        u32Random
/* 1B344 8002AB44 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1B348 8002AB48 21804000 */  addu       $s0, $v0, $zero
/* 1B34C 8002AB4C FCFF0006 */  bltz       $s0, .L8002AB40
/* 1B350 8002AB50 FF0F0324 */   addiu     $v1, $zero, 0xFFF
/* 1B354 8002AB54 2A107000 */  slt        $v0, $v1, $s0
/* 1B358 8002AB58 F9FF4014 */  bnez       $v0, .L8002AB40
/* 1B35C 8002AB5C 21100000 */   addu      $v0, $zero, $zero
/* 1B360 8002AB60 EDAA0008 */  j          .L8002ABB4
/* 1B364 8002AB64 00000000 */   nop
.L8002AB68:
/* 1B368 8002AB68 21800000 */  addu       $s0, $zero, $zero
/* 1B36C 8002AB6C 1000A28F */  lw         $v0, 0x10($sp)
/* 1B370 8002AB70 1400A38F */  lw         $v1, 0x14($sp)
/* 1B374 8002AB74 01003126 */  addiu      $s1, $s1, 0x1
/* 1B378 8002AB78 2000B1AF */  sw         $s1, 0x20($sp)
/* 1B37C 8002AB7C 00F20200 */  sll        $fp, $v0, 8
/* 1B380 8002AB80 1800A28F */  lw         $v0, 0x18($sp)
/* 1B384 8002AB84 001A0300 */  sll        $v1, $v1, 8
/* 1B388 8002AB88 2400A3AF */  sw         $v1, 0x24($sp)
/* 1B38C 8002AB8C 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1B390 8002AB90 2C00A3AF */  sw         $v1, 0x2C($sp)
/* 1B394 8002AB94 7400C326 */  addiu      $v1, $s6, 0x74
/* 1B398 8002AB98 3000A3AF */  sw         $v1, 0x30($sp)
/* 1B39C 8002AB9C 00120200 */  sll        $v0, $v0, 8
/* 1B3A0 8002ABA0 2800A2AF */  sw         $v0, 0x28($sp)
/* 1B3A4 8002ABA4 4400C226 */  addiu      $v0, $s6, 0x44
/* 1B3A8 8002ABA8 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 1B3AC 8002ABAC 21100000 */  addu       $v0, $zero, $zero
/* 1B3B0 8002ABB0 FF0F0324 */  addiu      $v1, $zero, 0xFFF
.L8002ABB4:
/* 1B3B4 8002ABB4 0F004310 */  beq        $v0, $v1, .L8002ABF4
/* 1B3B8 8002ABB8 00000000 */   nop
/* 1B3BC 8002ABBC 03006006 */  bltz       $s3, .L8002ABCC
/* 1B3C0 8002ABC0 2A107300 */   slt       $v0, $v1, $s3
/* 1B3C4 8002ABC4 0C004010 */  beqz       $v0, .L8002ABF8
/* 1B3C8 8002ABC8 00000000 */   nop
.L8002ABCC:
/* 1B3CC 8002ABCC D140010C */  jal        u32Random
/* 1B3D0 8002ABD0 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1B3D4 8002ABD4 21984000 */  addu       $s3, $v0, $zero
/* 1B3D8 8002ABD8 FCFF6006 */  bltz       $s3, .L8002ABCC
/* 1B3DC 8002ABDC FF0F0324 */   addiu     $v1, $zero, 0xFFF
/* 1B3E0 8002ABE0 2A107300 */  slt        $v0, $v1, $s3
/* 1B3E4 8002ABE4 F9FF4014 */  bnez       $v0, .L8002ABCC
/* 1B3E8 8002ABE8 00000000 */   nop
/* 1B3EC 8002ABEC FEAA0008 */  j          .L8002ABF8
/* 1B3F0 8002ABF0 00000000 */   nop
.L8002ABF4:
/* 1B3F4 8002ABF4 21980000 */  addu       $s3, $zero, $zero
.L8002ABF8:
/* 1B3F8 8002ABF8 7BEB010C */  jal        rcos
/* 1B3FC 8002ABFC 21200002 */   addu      $a0, $s0, $zero
/* 1B400 8002AC00 21200002 */  addu       $a0, $s0, $zero
/* 1B404 8002AC04 47EB010C */  jal        rsin
/* 1B408 8002AC08 21904000 */   addu      $s2, $v0, $zero
/* 1B40C 8002AC0C 21206002 */  addu       $a0, $s3, $zero
/* 1B410 8002AC10 7BEB010C */  jal        rcos
/* 1B414 8002AC14 21884000 */   addu      $s1, $v0, $zero
/* 1B418 8002AC18 21206002 */  addu       $a0, $s3, $zero
/* 1B41C 8002AC1C 47EB010C */  jal        rsin
/* 1B420 8002AC20 21804000 */   addu      $s0, $v0, $zero
/* 1B424 8002AC24 18003002 */  mult       $s1, $s0
/* 1B428 8002AC28 12880000 */  mflo       $s1
/* 1B42C 8002AC2C 00000000 */  nop
/* 1B430 8002AC30 00000000 */  nop
/* 1B434 8002AC34 18005002 */  mult       $s2, $s0
/* 1B438 8002AC38 12900000 */  mflo       $s2
/* 1B43C 8002AC3C 14000324 */  addiu      $v1, $zero, 0x14
/* 1B440 8002AC40 038B1100 */  sra        $s1, $s1, 12
/* 1B444 8002AC44 18002302 */  mult       $s1, $v1
/* 1B448 8002AC48 12A80000 */  mflo       $s5
/* 1B44C 8002AC4C 21A04000 */  addu       $s4, $v0, $zero
/* 1B450 8002AC50 00000000 */  nop
/* 1B454 8002AC54 18008302 */  mult       $s4, $v1
/* 1B458 8002AC58 12980000 */  mflo       $s3
/* 1B45C 8002AC5C 03931200 */  sra        $s2, $s2, 12
/* 1B460 8002AC60 00000000 */  nop
/* 1B464 8002AC64 18004302 */  mult       $s2, $v1
/* 1B468 8002AC68 12800000 */  mflo       $s0
/* 1B46C 8002AC6C 0A000224 */  addiu      $v0, $zero, 0xA
/* 1B470 8002AC70 00000000 */  nop
/* 1B474 8002AC74 18002202 */  mult       $s1, $v0
/* 1B478 8002AC78 12880000 */  mflo       $s1
/* 1B47C 8002AC7C 00000000 */  nop
/* 1B480 8002AC80 00000000 */  nop
/* 1B484 8002AC84 18008202 */  mult       $s4, $v0
/* 1B488 8002AC88 12A00000 */  mflo       $s4
/* 1B48C 8002AC8C 00000000 */  nop
/* 1B490 8002AC90 00000000 */  nop
/* 1B494 8002AC94 18004202 */  mult       $s2, $v0
/* 1B498 8002AC98 04000424 */  addiu      $a0, $zero, 0x4
/* 1B49C 8002AC9C 03A91500 */  sra        $s5, $s5, 4
/* 1B4A0 8002ACA0 21A8D503 */  addu       $s5, $fp, $s5
/* 1B4A4 8002ACA4 03991300 */  sra        $s3, $s3, 4
/* 1B4A8 8002ACA8 2800A38F */  lw         $v1, 0x28($sp)
/* 1B4AC 8002ACAC 03811000 */  sra        $s0, $s0, 4
/* 1B4B0 8002ACB0 21807000 */  addu       $s0, $v1, $s0
/* 1B4B4 8002ACB4 03891100 */  sra        $s1, $s1, 4
/* 1B4B8 8002ACB8 2400A28F */  lw         $v0, 0x24($sp)
/* 1B4BC 8002ACBC 03A11400 */  sra        $s4, $s4, 4
/* 1B4C0 8002ACC0 21985300 */  addu       $s3, $v0, $s3
/* 1B4C4 8002ACC4 12900000 */  mflo       $s2
/* 1B4C8 8002ACC8 D140010C */  jal        u32Random
/* 1B4CC 8002ACCC 03911200 */   sra       $s2, $s2, 4
/* 1B4D0 8002ACD0 01000324 */  addiu      $v1, $zero, 0x1
/* 1B4D4 8002ACD4 0000C3A6 */  sh         $v1, 0x0($s6)
/* 1B4D8 8002ACD8 14000324 */  addiu      $v1, $zero, 0x14
/* 1B4DC 8002ACDC 23106200 */  subu       $v0, $v1, $v0
/* 1B4E0 8002ACE0 0400D5AE */  sw         $s5, 0x4($s6)
/* 1B4E4 8002ACE4 0800D3AE */  sw         $s3, 0x8($s6)
/* 1B4E8 8002ACE8 0C00D0AE */  sw         $s0, 0xC($s6)
/* 1B4EC 8002ACEC 1000D1AE */  sw         $s1, 0x10($s6)
/* 1B4F0 8002ACF0 1400D4AE */  sw         $s4, 0x14($s6)
/* 1B4F4 8002ACF4 1800D2AE */  sw         $s2, 0x18($s6)
/* 1B4F8 8002ACF8 0200C2A6 */  sh         $v0, 0x2($s6)
/* 1B4FC 8002ACFC 4C00E392 */  lbu        $v1, 0x4C($s7)
/* 1B500 8002AD00 2C00A58F */  lw         $a1, 0x2C($sp)
/* 1B504 8002AD04 00000000 */  nop
/* 1B508 8002AD08 0400A3A0 */  sb         $v1, 0x4($a1)
/* 1B50C 8002AD0C 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1B510 8002AD10 00000000 */  nop
/* 1B514 8002AD14 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1B518 8002AD18 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1B51C 8002AD1C 00000000 */  nop
/* 1B520 8002AD20 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1B524 8002AD24 4C00E492 */  lbu        $a0, 0x4C($s7)
/* 1B528 8002AD28 1C00A58F */  lw         $a1, 0x1C($sp)
/* 1B52C 8002AD2C 00000000 */  nop
/* 1B530 8002AD30 0400A4A0 */  sb         $a0, 0x4($a1)
/* 1B534 8002AD34 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1B538 8002AD38 00000000 */  nop
/* 1B53C 8002AD3C 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1B540 8002AD40 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1B544 8002AD44 2000B18F */  lw         $s1, 0x20($sp)
/* 1B548 8002AD48 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1B54C 8002AD4C 0800E28E */  lw         $v0, 0x8($s7)
/* 1B550 8002AD50 3000B68F */  lw         $s6, 0x30($sp)
/* 1B554 8002AD54 2A102202 */  slt        $v0, $s1, $v0
/* 1B558 8002AD58 5AFF4014 */  bnez       $v0, .L8002AAC4
/* 1B55C 8002AD5C 00000000 */   nop
.L8002AD60:
/* 1B560 8002AD60 5C00BF8F */  lw         $ra, 0x5C($sp)
/* 1B564 8002AD64 5800BE8F */  lw         $fp, 0x58($sp)
/* 1B568 8002AD68 0000E0AE */  sw         $zero, 0x0($s7)
/* 1B56C 8002AD6C 5400B78F */  lw         $s7, 0x54($sp)
/* 1B570 8002AD70 5000B68F */  lw         $s6, 0x50($sp)
/* 1B574 8002AD74 4C00B58F */  lw         $s5, 0x4C($sp)
/* 1B578 8002AD78 4800B48F */  lw         $s4, 0x48($sp)
/* 1B57C 8002AD7C 4400B38F */  lw         $s3, 0x44($sp)
/* 1B580 8002AD80 4000B28F */  lw         $s2, 0x40($sp)
/* 1B584 8002AD84 3C00B18F */  lw         $s1, 0x3C($sp)
/* 1B588 8002AD88 3800B08F */  lw         $s0, 0x38($sp)
/* 1B58C 8002AD8C 0800E003 */  jr         $ra
/* 1B590 8002AD90 6000BD27 */   addiu     $sp, $sp, 0x60
.size ParticleSnowHitInit, . - ParticleSnowHitInit
