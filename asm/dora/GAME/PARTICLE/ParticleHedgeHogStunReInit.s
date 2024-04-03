.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleHedgeHogStunReInit
/* 1AA5C 8002A25C 3408828F */  lw         $v0, %gp_rel(R)($gp)
/* 1AA60 8002A260 88FFBD27 */  addiu      $sp, $sp, -0x78
/* 1AA64 8002A264 6C00B7AF */  sw         $s7, 0x6C($sp)
/* 1AA68 8002A268 21B88000 */  addu       $s7, $a0, $zero
/* 1AA6C 8002A26C 7400BFAF */  sw         $ra, 0x74($sp)
/* 1AA70 8002A270 7000BEAF */  sw         $fp, 0x70($sp)
/* 1AA74 8002A274 6800B6AF */  sw         $s6, 0x68($sp)
/* 1AA78 8002A278 6400B5AF */  sw         $s5, 0x64($sp)
/* 1AA7C 8002A27C 6000B4AF */  sw         $s4, 0x60($sp)
/* 1AA80 8002A280 5C00B3AF */  sw         $s3, 0x5C($sp)
/* 1AA84 8002A284 5800B2AF */  sw         $s2, 0x58($sp)
/* 1AA88 8002A288 5400B1AF */  sw         $s1, 0x54($sp)
/* 1AA8C 8002A28C 5000B0AF */  sw         $s0, 0x50($sp)
/* 1AA90 8002A290 1000A5AF */  sw         $a1, 0x10($sp)
/* 1AA94 8002A294 1400A6AF */  sw         $a2, 0x14($sp)
/* 1AA98 8002A298 1800A7AF */  sw         $a3, 0x18($sp)
/* 1AA9C 8002A29C 4000F68E */  lw         $s6, 0x40($s7)
/* 1AAA0 8002A2A0 3808838F */  lw         $v1, %gp_rel(S)($gp)
/* 1AAA4 8002A2A4 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 1AAA8 8002A2A8 1E000224 */  addiu      $v0, $zero, 0x1E
/* 1AAAC 8002A2AC 2000A3AF */  sw         $v1, 0x20($sp)
/* 1AAB0 8002A2B0 0C00E2AE */  sw         $v0, 0xC($s7)
/* 1AAB4 8002A2B4 1000A38F */  lw         $v1, 0x10($sp)
/* 1AAB8 8002A2B8 00000000 */  nop
/* 1AABC 8002A2BC 2400E3AE */  sw         $v1, 0x24($s7)
/* 1AAC0 8002A2C0 1400A28F */  lw         $v0, 0x14($sp)
/* 1AAC4 8002A2C4 00000000 */  nop
/* 1AAC8 8002A2C8 2800E2AE */  sw         $v0, 0x28($s7)
/* 1AACC 8002A2CC 1800A38F */  lw         $v1, 0x18($sp)
/* 1AAD0 8002A2D0 C8000224 */  addiu      $v0, $zero, 0xC8
/* 1AAD4 8002A2D4 4A00E2A6 */  sh         $v0, 0x4A($s7)
/* 1AAD8 8002A2D8 3000E28E */  lw         $v0, 0x30($s7)
/* 1AADC 8002A2DC 2C00E3AE */  sw         $v1, 0x2C($s7)
/* 1AAE0 8002A2E0 2400A2AF */  sw         $v0, 0x24($sp)
/* 1AAE4 8002A2E4 3400E38E */  lw         $v1, 0x34($s7)
/* 1AAE8 8002A2E8 00000000 */  nop
/* 1AAEC 8002A2EC 2800A3AF */  sw         $v1, 0x28($sp)
/* 1AAF0 8002A2F0 3C00E38E */  lw         $v1, 0x3C($s7)
/* 1AAF4 8002A2F4 3800FE8E */  lw         $fp, 0x38($s7)
/* 1AAF8 8002A2F8 0400E28E */  lw         $v0, 0x4($s7)
/* 1AAFC 8002A2FC 00000000 */  nop
/* 1AB00 8002A300 04004014 */  bnez       $v0, .L8002A314
/* 1AB04 8002A304 2C00A3AF */   sw        $v1, 0x2C($sp)
/* 1AB08 8002A308 1000A0AF */  sw         $zero, 0x10($sp)
/* 1AB0C 8002A30C 1400A0AF */  sw         $zero, 0x14($sp)
/* 1AB10 8002A310 1800A0AF */  sw         $zero, 0x18($sp)
.L8002A314:
/* 1AB14 8002A314 0800E28E */  lw         $v0, 0x8($s7)
/* 1AB18 8002A318 00000000 */  nop
/* 1AB1C 8002A31C B9004018 */  blez       $v0, .L8002A604
/* 1AB20 8002A320 21880000 */   addu      $s1, $zero, $zero
.L8002A324:
/* 1AB24 8002A324 D140010C */  jal        u32Random
/* 1AB28 8002A328 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1AB2C 8002A32C 21804000 */  addu       $s0, $v0, $zero
/* 1AB30 8002A330 D140010C */  jal        u32Random
/* 1AB34 8002A334 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1AB38 8002A338 21984000 */  addu       $s3, $v0, $zero
/* 1AB3C 8002A33C 2400A28F */  lw         $v0, 0x24($sp)
/* 1AB40 8002A340 2800A38F */  lw         $v1, 0x28($sp)
/* 1AB44 8002A344 00000000 */  nop
/* 1AB48 8002A348 29004310 */  beq        $v0, $v1, .L8002A3F0
/* 1AB4C 8002A34C 00000000 */   nop
/* 1AB50 8002A350 1000A28F */  lw         $v0, 0x10($sp)
/* 1AB54 8002A354 1400A38F */  lw         $v1, 0x14($sp)
/* 1AB58 8002A358 01003126 */  addiu      $s1, $s1, 0x1
/* 1AB5C 8002A35C 3800B1AF */  sw         $s1, 0x38($sp)
/* 1AB60 8002A360 00120200 */  sll        $v0, $v0, 8
/* 1AB64 8002A364 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 1AB68 8002A368 1800A28F */  lw         $v0, 0x18($sp)
/* 1AB6C 8002A36C 001A0300 */  sll        $v1, $v1, 8
/* 1AB70 8002A370 4000A3AF */  sw         $v1, 0x40($sp)
/* 1AB74 8002A374 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1AB78 8002A378 4800A3AF */  sw         $v1, 0x48($sp)
/* 1AB7C 8002A37C 7400C326 */  addiu      $v1, $s6, 0x74
/* 1AB80 8002A380 3000A3AF */  sw         $v1, 0x30($sp)
/* 1AB84 8002A384 2400A38F */  lw         $v1, 0x24($sp)
/* 1AB88 8002A388 00120200 */  sll        $v0, $v0, 8
/* 1AB8C 8002A38C 4400A2AF */  sw         $v0, 0x44($sp)
/* 1AB90 8002A390 4400C226 */  addiu      $v0, $s6, 0x44
/* 1AB94 8002A394 3400A2AF */  sw         $v0, 0x34($sp)
/* 1AB98 8002A398 2A100302 */  slt        $v0, $s0, $v1
/* 1AB9C 8002A39C 06004014 */  bnez       $v0, .L8002A3B8
/* 1ABA0 8002A3A0 00000000 */   nop
/* 1ABA4 8002A3A4 2800A38F */  lw         $v1, 0x28($sp)
/* 1ABA8 8002A3A8 00000000 */  nop
/* 1ABAC 8002A3AC 2A107000 */  slt        $v0, $v1, $s0
/* 1ABB0 8002A3B0 21004010 */  beqz       $v0, .L8002A438
/* 1ABB4 8002A3B4 00000000 */   nop
.L8002A3B8:
/* 1ABB8 8002A3B8 D140010C */  jal        u32Random
/* 1ABBC 8002A3BC FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1ABC0 8002A3C0 2400A38F */  lw         $v1, 0x24($sp)
/* 1ABC4 8002A3C4 21804000 */  addu       $s0, $v0, $zero
/* 1ABC8 8002A3C8 2A100302 */  slt        $v0, $s0, $v1
/* 1ABCC 8002A3CC FAFF4014 */  bnez       $v0, .L8002A3B8
/* 1ABD0 8002A3D0 00000000 */   nop
/* 1ABD4 8002A3D4 2800A38F */  lw         $v1, 0x28($sp)
/* 1ABD8 8002A3D8 00000000 */  nop
/* 1ABDC 8002A3DC 2A107000 */  slt        $v0, $v1, $s0
/* 1ABE0 8002A3E0 F5FF4014 */  bnez       $v0, .L8002A3B8
/* 1ABE4 8002A3E4 00000000 */   nop
/* 1ABE8 8002A3E8 0EA90008 */  j          .L8002A438
/* 1ABEC 8002A3EC 00000000 */   nop
.L8002A3F0:
/* 1ABF0 8002A3F0 2400B08F */  lw         $s0, 0x24($sp)
/* 1ABF4 8002A3F4 1000A28F */  lw         $v0, 0x10($sp)
/* 1ABF8 8002A3F8 1400A38F */  lw         $v1, 0x14($sp)
/* 1ABFC 8002A3FC 01003126 */  addiu      $s1, $s1, 0x1
/* 1AC00 8002A400 3800B1AF */  sw         $s1, 0x38($sp)
/* 1AC04 8002A404 00120200 */  sll        $v0, $v0, 8
/* 1AC08 8002A408 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 1AC0C 8002A40C 1800A28F */  lw         $v0, 0x18($sp)
/* 1AC10 8002A410 001A0300 */  sll        $v1, $v1, 8
/* 1AC14 8002A414 4000A3AF */  sw         $v1, 0x40($sp)
/* 1AC18 8002A418 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1AC1C 8002A41C 4800A3AF */  sw         $v1, 0x48($sp)
/* 1AC20 8002A420 7400C326 */  addiu      $v1, $s6, 0x74
/* 1AC24 8002A424 3000A3AF */  sw         $v1, 0x30($sp)
/* 1AC28 8002A428 00120200 */  sll        $v0, $v0, 8
/* 1AC2C 8002A42C 4400A2AF */  sw         $v0, 0x44($sp)
/* 1AC30 8002A430 4400C226 */  addiu      $v0, $s6, 0x44
/* 1AC34 8002A434 3400A2AF */  sw         $v0, 0x34($sp)
.L8002A438:
/* 1AC38 8002A438 2C00A28F */  lw         $v0, 0x2C($sp)
/* 1AC3C 8002A43C 00000000 */  nop
/* 1AC40 8002A440 1500C213 */  beq        $fp, $v0, .L8002A498
/* 1AC44 8002A444 2A107E02 */   slt       $v0, $s3, $fp
/* 1AC48 8002A448 06004014 */  bnez       $v0, .L8002A464
/* 1AC4C 8002A44C 00000000 */   nop
/* 1AC50 8002A450 2C00A38F */  lw         $v1, 0x2C($sp)
/* 1AC54 8002A454 00000000 */  nop
/* 1AC58 8002A458 2A107300 */  slt        $v0, $v1, $s3
/* 1AC5C 8002A45C 0F004010 */  beqz       $v0, .L8002A49C
/* 1AC60 8002A460 00000000 */   nop
.L8002A464:
/* 1AC64 8002A464 D140010C */  jal        u32Random
/* 1AC68 8002A468 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1AC6C 8002A46C 21984000 */  addu       $s3, $v0, $zero
/* 1AC70 8002A470 2A107E02 */  slt        $v0, $s3, $fp
/* 1AC74 8002A474 FBFF4014 */  bnez       $v0, .L8002A464
/* 1AC78 8002A478 00000000 */   nop
/* 1AC7C 8002A47C 2C00A38F */  lw         $v1, 0x2C($sp)
/* 1AC80 8002A480 00000000 */  nop
/* 1AC84 8002A484 2A107300 */  slt        $v0, $v1, $s3
/* 1AC88 8002A488 F6FF4014 */  bnez       $v0, .L8002A464
/* 1AC8C 8002A48C 00000000 */   nop
/* 1AC90 8002A490 27A90008 */  j          .L8002A49C
/* 1AC94 8002A494 00000000 */   nop
.L8002A498:
/* 1AC98 8002A498 2198C003 */  addu       $s3, $fp, $zero
.L8002A49C:
/* 1AC9C 8002A49C 7BEB010C */  jal        rcos
/* 1ACA0 8002A4A0 21200002 */   addu      $a0, $s0, $zero
/* 1ACA4 8002A4A4 21200002 */  addu       $a0, $s0, $zero
/* 1ACA8 8002A4A8 47EB010C */  jal        rsin
/* 1ACAC 8002A4AC 21904000 */   addu      $s2, $v0, $zero
/* 1ACB0 8002A4B0 21206002 */  addu       $a0, $s3, $zero
/* 1ACB4 8002A4B4 7BEB010C */  jal        rcos
/* 1ACB8 8002A4B8 21884000 */   addu      $s1, $v0, $zero
/* 1ACBC 8002A4BC 21206002 */  addu       $a0, $s3, $zero
/* 1ACC0 8002A4C0 47EB010C */  jal        rsin
/* 1ACC4 8002A4C4 21804000 */   addu      $s0, $v0, $zero
/* 1ACC8 8002A4C8 18003002 */  mult       $s1, $s0
/* 1ACCC 8002A4CC 12880000 */  mflo       $s1
/* 1ACD0 8002A4D0 00000000 */  nop
/* 1ACD4 8002A4D4 00000000 */  nop
/* 1ACD8 8002A4D8 18005002 */  mult       $s2, $s0
/* 1ACDC 8002A4DC 12900000 */  mflo       $s2
/* 1ACE0 8002A4E0 1C00A38F */  lw         $v1, 0x1C($sp)
/* 1ACE4 8002A4E4 038B1100 */  sra        $s1, $s1, 12
/* 1ACE8 8002A4E8 18002302 */  mult       $s1, $v1
/* 1ACEC 8002A4EC 12A80000 */  mflo       $s5
/* 1ACF0 8002A4F0 21A04000 */  addu       $s4, $v0, $zero
/* 1ACF4 8002A4F4 00000000 */  nop
/* 1ACF8 8002A4F8 18008302 */  mult       $s4, $v1
/* 1ACFC 8002A4FC 12980000 */  mflo       $s3
/* 1AD00 8002A500 03931200 */  sra        $s2, $s2, 12
/* 1AD04 8002A504 00000000 */  nop
/* 1AD08 8002A508 18004302 */  mult       $s2, $v1
/* 1AD0C 8002A50C 12800000 */  mflo       $s0
/* 1AD10 8002A510 2000A28F */  lw         $v0, 0x20($sp)
/* 1AD14 8002A514 00000000 */  nop
/* 1AD18 8002A518 18002202 */  mult       $s1, $v0
/* 1AD1C 8002A51C 12880000 */  mflo       $s1
/* 1AD20 8002A520 00000000 */  nop
/* 1AD24 8002A524 00000000 */  nop
/* 1AD28 8002A528 18008202 */  mult       $s4, $v0
/* 1AD2C 8002A52C 12A00000 */  mflo       $s4
/* 1AD30 8002A530 04000424 */  addiu      $a0, $zero, 0x4
/* 1AD34 8002A534 00000000 */  nop
/* 1AD38 8002A538 18004202 */  mult       $s2, $v0
/* 1AD3C 8002A53C 03A91500 */  sra        $s5, $s5, 4
/* 1AD40 8002A540 4000A38F */  lw         $v1, 0x40($sp)
/* 1AD44 8002A544 03991300 */  sra        $s3, $s3, 4
/* 1AD48 8002A548 21987300 */  addu       $s3, $v1, $s3
/* 1AD4C 8002A54C 03811000 */  sra        $s0, $s0, 4
/* 1AD50 8002A550 3C00A28F */  lw         $v0, 0x3C($sp)
/* 1AD54 8002A554 03891100 */  sra        $s1, $s1, 4
/* 1AD58 8002A558 21A85500 */  addu       $s5, $v0, $s5
/* 1AD5C 8002A55C 4400A28F */  lw         $v0, 0x44($sp)
/* 1AD60 8002A560 03A11400 */  sra        $s4, $s4, 4
/* 1AD64 8002A564 21805000 */  addu       $s0, $v0, $s0
/* 1AD68 8002A568 12900000 */  mflo       $s2
/* 1AD6C 8002A56C D140010C */  jal        u32Random
/* 1AD70 8002A570 03911200 */   sra       $s2, $s2, 4
/* 1AD74 8002A574 01000324 */  addiu      $v1, $zero, 0x1
/* 1AD78 8002A578 0000C3A6 */  sh         $v1, 0x0($s6)
/* 1AD7C 8002A57C 1E000324 */  addiu      $v1, $zero, 0x1E
/* 1AD80 8002A580 23106200 */  subu       $v0, $v1, $v0
/* 1AD84 8002A584 0400D5AE */  sw         $s5, 0x4($s6)
/* 1AD88 8002A588 0800D3AE */  sw         $s3, 0x8($s6)
/* 1AD8C 8002A58C 0C00D0AE */  sw         $s0, 0xC($s6)
/* 1AD90 8002A590 1000D1AE */  sw         $s1, 0x10($s6)
/* 1AD94 8002A594 1400D4AE */  sw         $s4, 0x14($s6)
/* 1AD98 8002A598 1800D2AE */  sw         $s2, 0x18($s6)
/* 1AD9C 8002A59C 0200C2A6 */  sh         $v0, 0x2($s6)
/* 1ADA0 8002A5A0 4C00E392 */  lbu        $v1, 0x4C($s7)
/* 1ADA4 8002A5A4 4800A58F */  lw         $a1, 0x48($sp)
/* 1ADA8 8002A5A8 00000000 */  nop
/* 1ADAC 8002A5AC 0400A3A0 */  sb         $v1, 0x4($a1)
/* 1ADB0 8002A5B0 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1ADB4 8002A5B4 00000000 */  nop
/* 1ADB8 8002A5B8 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1ADBC 8002A5BC 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1ADC0 8002A5C0 00000000 */  nop
/* 1ADC4 8002A5C4 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1ADC8 8002A5C8 4C00E492 */  lbu        $a0, 0x4C($s7)
/* 1ADCC 8002A5CC 3400A58F */  lw         $a1, 0x34($sp)
/* 1ADD0 8002A5D0 00000000 */  nop
/* 1ADD4 8002A5D4 0400A4A0 */  sb         $a0, 0x4($a1)
/* 1ADD8 8002A5D8 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1ADDC 8002A5DC 00000000 */  nop
/* 1ADE0 8002A5E0 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1ADE4 8002A5E4 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1ADE8 8002A5E8 3800B18F */  lw         $s1, 0x38($sp)
/* 1ADEC 8002A5EC 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1ADF0 8002A5F0 0800E28E */  lw         $v0, 0x8($s7)
/* 1ADF4 8002A5F4 3000B68F */  lw         $s6, 0x30($sp)
/* 1ADF8 8002A5F8 2A102202 */  slt        $v0, $s1, $v0
/* 1ADFC 8002A5FC 49FF4014 */  bnez       $v0, .L8002A324
/* 1AE00 8002A600 00000000 */   nop
.L8002A604:
/* 1AE04 8002A604 7400BF8F */  lw         $ra, 0x74($sp)
/* 1AE08 8002A608 7000BE8F */  lw         $fp, 0x70($sp)
/* 1AE0C 8002A60C 01000224 */  addiu      $v0, $zero, 0x1
/* 1AE10 8002A610 0000E2AE */  sw         $v0, 0x0($s7)
/* 1AE14 8002A614 6C00B78F */  lw         $s7, 0x6C($sp)
/* 1AE18 8002A618 6800B68F */  lw         $s6, 0x68($sp)
/* 1AE1C 8002A61C 6400B58F */  lw         $s5, 0x64($sp)
/* 1AE20 8002A620 6000B48F */  lw         $s4, 0x60($sp)
/* 1AE24 8002A624 5C00B38F */  lw         $s3, 0x5C($sp)
/* 1AE28 8002A628 5800B28F */  lw         $s2, 0x58($sp)
/* 1AE2C 8002A62C 5400B18F */  lw         $s1, 0x54($sp)
/* 1AE30 8002A630 5000B08F */  lw         $s0, 0x50($sp)
/* 1AE34 8002A634 0800E003 */  jr         $ra
/* 1AE38 8002A638 7800BD27 */   addiu     $sp, $sp, 0x78
.size ParticleHedgeHogStunReInit, . - ParticleHedgeHogStunReInit
