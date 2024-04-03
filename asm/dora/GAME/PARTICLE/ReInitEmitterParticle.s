.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ReInitEmitterParticle
/* 1A2E0 80029AE0 3408828F */  lw         $v0, %gp_rel(R)($gp)
/* 1A2E4 80029AE4 88FFBD27 */  addiu      $sp, $sp, -0x78
/* 1A2E8 80029AE8 6C00B7AF */  sw         $s7, 0x6C($sp)
/* 1A2EC 80029AEC 21B88000 */  addu       $s7, $a0, $zero
/* 1A2F0 80029AF0 7400BFAF */  sw         $ra, 0x74($sp)
/* 1A2F4 80029AF4 7000BEAF */  sw         $fp, 0x70($sp)
/* 1A2F8 80029AF8 6800B6AF */  sw         $s6, 0x68($sp)
/* 1A2FC 80029AFC 6400B5AF */  sw         $s5, 0x64($sp)
/* 1A300 80029B00 6000B4AF */  sw         $s4, 0x60($sp)
/* 1A304 80029B04 5C00B3AF */  sw         $s3, 0x5C($sp)
/* 1A308 80029B08 5800B2AF */  sw         $s2, 0x58($sp)
/* 1A30C 80029B0C 5400B1AF */  sw         $s1, 0x54($sp)
/* 1A310 80029B10 5000B0AF */  sw         $s0, 0x50($sp)
/* 1A314 80029B14 1000A5AF */  sw         $a1, 0x10($sp)
/* 1A318 80029B18 1400A6AF */  sw         $a2, 0x14($sp)
/* 1A31C 80029B1C 1800A7AF */  sw         $a3, 0x18($sp)
/* 1A320 80029B20 4000F68E */  lw         $s6, 0x40($s7)
/* 1A324 80029B24 3808838F */  lw         $v1, %gp_rel(S)($gp)
/* 1A328 80029B28 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 1A32C 80029B2C 1E000224 */  addiu      $v0, $zero, 0x1E
/* 1A330 80029B30 2000A3AF */  sw         $v1, 0x20($sp)
/* 1A334 80029B34 0C00E2AE */  sw         $v0, 0xC($s7)
/* 1A338 80029B38 1000A38F */  lw         $v1, 0x10($sp)
/* 1A33C 80029B3C 00000000 */  nop
/* 1A340 80029B40 2400E3AE */  sw         $v1, 0x24($s7)
/* 1A344 80029B44 1400A28F */  lw         $v0, 0x14($sp)
/* 1A348 80029B48 00000000 */  nop
/* 1A34C 80029B4C 2800E2AE */  sw         $v0, 0x28($s7)
/* 1A350 80029B50 1800A38F */  lw         $v1, 0x18($sp)
/* 1A354 80029B54 C8000224 */  addiu      $v0, $zero, 0xC8
/* 1A358 80029B58 4A00E2A6 */  sh         $v0, 0x4A($s7)
/* 1A35C 80029B5C 3000E28E */  lw         $v0, 0x30($s7)
/* 1A360 80029B60 2C00E3AE */  sw         $v1, 0x2C($s7)
/* 1A364 80029B64 2400A2AF */  sw         $v0, 0x24($sp)
/* 1A368 80029B68 3400E38E */  lw         $v1, 0x34($s7)
/* 1A36C 80029B6C 00000000 */  nop
/* 1A370 80029B70 2800A3AF */  sw         $v1, 0x28($sp)
/* 1A374 80029B74 3C00E38E */  lw         $v1, 0x3C($s7)
/* 1A378 80029B78 3800FE8E */  lw         $fp, 0x38($s7)
/* 1A37C 80029B7C 0400E28E */  lw         $v0, 0x4($s7)
/* 1A380 80029B80 00000000 */  nop
/* 1A384 80029B84 04004014 */  bnez       $v0, .L80029B98
/* 1A388 80029B88 2C00A3AF */   sw        $v1, 0x2C($sp)
/* 1A38C 80029B8C 1000A0AF */  sw         $zero, 0x10($sp)
/* 1A390 80029B90 1400A0AF */  sw         $zero, 0x14($sp)
/* 1A394 80029B94 1800A0AF */  sw         $zero, 0x18($sp)
.L80029B98:
/* 1A398 80029B98 0800E28E */  lw         $v0, 0x8($s7)
/* 1A39C 80029B9C 00000000 */  nop
/* 1A3A0 80029BA0 B9004018 */  blez       $v0, .L80029E88
/* 1A3A4 80029BA4 21880000 */   addu      $s1, $zero, $zero
.L80029BA8:
/* 1A3A8 80029BA8 D140010C */  jal        u32Random
/* 1A3AC 80029BAC FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1A3B0 80029BB0 21804000 */  addu       $s0, $v0, $zero
/* 1A3B4 80029BB4 D140010C */  jal        u32Random
/* 1A3B8 80029BB8 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1A3BC 80029BBC 21984000 */  addu       $s3, $v0, $zero
/* 1A3C0 80029BC0 2400A28F */  lw         $v0, 0x24($sp)
/* 1A3C4 80029BC4 2800A38F */  lw         $v1, 0x28($sp)
/* 1A3C8 80029BC8 00000000 */  nop
/* 1A3CC 80029BCC 29004310 */  beq        $v0, $v1, .L80029C74
/* 1A3D0 80029BD0 00000000 */   nop
/* 1A3D4 80029BD4 1000A28F */  lw         $v0, 0x10($sp)
/* 1A3D8 80029BD8 1400A38F */  lw         $v1, 0x14($sp)
/* 1A3DC 80029BDC 01003126 */  addiu      $s1, $s1, 0x1
/* 1A3E0 80029BE0 3800B1AF */  sw         $s1, 0x38($sp)
/* 1A3E4 80029BE4 00120200 */  sll        $v0, $v0, 8
/* 1A3E8 80029BE8 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 1A3EC 80029BEC 1800A28F */  lw         $v0, 0x18($sp)
/* 1A3F0 80029BF0 001A0300 */  sll        $v1, $v1, 8
/* 1A3F4 80029BF4 4000A3AF */  sw         $v1, 0x40($sp)
/* 1A3F8 80029BF8 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1A3FC 80029BFC 4800A3AF */  sw         $v1, 0x48($sp)
/* 1A400 80029C00 7400C326 */  addiu      $v1, $s6, 0x74
/* 1A404 80029C04 3000A3AF */  sw         $v1, 0x30($sp)
/* 1A408 80029C08 2400A38F */  lw         $v1, 0x24($sp)
/* 1A40C 80029C0C 00120200 */  sll        $v0, $v0, 8
/* 1A410 80029C10 4400A2AF */  sw         $v0, 0x44($sp)
/* 1A414 80029C14 4400C226 */  addiu      $v0, $s6, 0x44
/* 1A418 80029C18 3400A2AF */  sw         $v0, 0x34($sp)
/* 1A41C 80029C1C 2A100302 */  slt        $v0, $s0, $v1
/* 1A420 80029C20 06004014 */  bnez       $v0, .L80029C3C
/* 1A424 80029C24 00000000 */   nop
/* 1A428 80029C28 2800A38F */  lw         $v1, 0x28($sp)
/* 1A42C 80029C2C 00000000 */  nop
/* 1A430 80029C30 2A107000 */  slt        $v0, $v1, $s0
/* 1A434 80029C34 21004010 */  beqz       $v0, .L80029CBC
/* 1A438 80029C38 00000000 */   nop
.L80029C3C:
/* 1A43C 80029C3C D140010C */  jal        u32Random
/* 1A440 80029C40 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1A444 80029C44 2400A38F */  lw         $v1, 0x24($sp)
/* 1A448 80029C48 21804000 */  addu       $s0, $v0, $zero
/* 1A44C 80029C4C 2A100302 */  slt        $v0, $s0, $v1
/* 1A450 80029C50 FAFF4014 */  bnez       $v0, .L80029C3C
/* 1A454 80029C54 00000000 */   nop
/* 1A458 80029C58 2800A38F */  lw         $v1, 0x28($sp)
/* 1A45C 80029C5C 00000000 */  nop
/* 1A460 80029C60 2A107000 */  slt        $v0, $v1, $s0
/* 1A464 80029C64 F5FF4014 */  bnez       $v0, .L80029C3C
/* 1A468 80029C68 00000000 */   nop
/* 1A46C 80029C6C 2FA70008 */  j          .L80029CBC
/* 1A470 80029C70 00000000 */   nop
.L80029C74:
/* 1A474 80029C74 2400B08F */  lw         $s0, 0x24($sp)
/* 1A478 80029C78 1000A28F */  lw         $v0, 0x10($sp)
/* 1A47C 80029C7C 1400A38F */  lw         $v1, 0x14($sp)
/* 1A480 80029C80 01003126 */  addiu      $s1, $s1, 0x1
/* 1A484 80029C84 3800B1AF */  sw         $s1, 0x38($sp)
/* 1A488 80029C88 00120200 */  sll        $v0, $v0, 8
/* 1A48C 80029C8C 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 1A490 80029C90 1800A28F */  lw         $v0, 0x18($sp)
/* 1A494 80029C94 001A0300 */  sll        $v1, $v1, 8
/* 1A498 80029C98 4000A3AF */  sw         $v1, 0x40($sp)
/* 1A49C 80029C9C 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1A4A0 80029CA0 4800A3AF */  sw         $v1, 0x48($sp)
/* 1A4A4 80029CA4 7400C326 */  addiu      $v1, $s6, 0x74
/* 1A4A8 80029CA8 3000A3AF */  sw         $v1, 0x30($sp)
/* 1A4AC 80029CAC 00120200 */  sll        $v0, $v0, 8
/* 1A4B0 80029CB0 4400A2AF */  sw         $v0, 0x44($sp)
/* 1A4B4 80029CB4 4400C226 */  addiu      $v0, $s6, 0x44
/* 1A4B8 80029CB8 3400A2AF */  sw         $v0, 0x34($sp)
.L80029CBC:
/* 1A4BC 80029CBC 2C00A28F */  lw         $v0, 0x2C($sp)
/* 1A4C0 80029CC0 00000000 */  nop
/* 1A4C4 80029CC4 1500C213 */  beq        $fp, $v0, .L80029D1C
/* 1A4C8 80029CC8 2A107E02 */   slt       $v0, $s3, $fp
/* 1A4CC 80029CCC 06004014 */  bnez       $v0, .L80029CE8
/* 1A4D0 80029CD0 00000000 */   nop
/* 1A4D4 80029CD4 2C00A38F */  lw         $v1, 0x2C($sp)
/* 1A4D8 80029CD8 00000000 */  nop
/* 1A4DC 80029CDC 2A107300 */  slt        $v0, $v1, $s3
/* 1A4E0 80029CE0 0F004010 */  beqz       $v0, .L80029D20
/* 1A4E4 80029CE4 00000000 */   nop
.L80029CE8:
/* 1A4E8 80029CE8 D140010C */  jal        u32Random
/* 1A4EC 80029CEC FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1A4F0 80029CF0 21984000 */  addu       $s3, $v0, $zero
/* 1A4F4 80029CF4 2A107E02 */  slt        $v0, $s3, $fp
/* 1A4F8 80029CF8 FBFF4014 */  bnez       $v0, .L80029CE8
/* 1A4FC 80029CFC 00000000 */   nop
/* 1A500 80029D00 2C00A38F */  lw         $v1, 0x2C($sp)
/* 1A504 80029D04 00000000 */  nop
/* 1A508 80029D08 2A107300 */  slt        $v0, $v1, $s3
/* 1A50C 80029D0C F6FF4014 */  bnez       $v0, .L80029CE8
/* 1A510 80029D10 00000000 */   nop
/* 1A514 80029D14 48A70008 */  j          .L80029D20
/* 1A518 80029D18 00000000 */   nop
.L80029D1C:
/* 1A51C 80029D1C 2198C003 */  addu       $s3, $fp, $zero
.L80029D20:
/* 1A520 80029D20 7BEB010C */  jal        rcos
/* 1A524 80029D24 21200002 */   addu      $a0, $s0, $zero
/* 1A528 80029D28 21200002 */  addu       $a0, $s0, $zero
/* 1A52C 80029D2C 47EB010C */  jal        rsin
/* 1A530 80029D30 21904000 */   addu      $s2, $v0, $zero
/* 1A534 80029D34 21206002 */  addu       $a0, $s3, $zero
/* 1A538 80029D38 7BEB010C */  jal        rcos
/* 1A53C 80029D3C 21884000 */   addu      $s1, $v0, $zero
/* 1A540 80029D40 21206002 */  addu       $a0, $s3, $zero
/* 1A544 80029D44 47EB010C */  jal        rsin
/* 1A548 80029D48 21804000 */   addu      $s0, $v0, $zero
/* 1A54C 80029D4C 18003002 */  mult       $s1, $s0
/* 1A550 80029D50 12880000 */  mflo       $s1
/* 1A554 80029D54 00000000 */  nop
/* 1A558 80029D58 00000000 */  nop
/* 1A55C 80029D5C 18005002 */  mult       $s2, $s0
/* 1A560 80029D60 12900000 */  mflo       $s2
/* 1A564 80029D64 1C00A38F */  lw         $v1, 0x1C($sp)
/* 1A568 80029D68 038B1100 */  sra        $s1, $s1, 12
/* 1A56C 80029D6C 18002302 */  mult       $s1, $v1
/* 1A570 80029D70 12A80000 */  mflo       $s5
/* 1A574 80029D74 21A04000 */  addu       $s4, $v0, $zero
/* 1A578 80029D78 00000000 */  nop
/* 1A57C 80029D7C 18008302 */  mult       $s4, $v1
/* 1A580 80029D80 12980000 */  mflo       $s3
/* 1A584 80029D84 03931200 */  sra        $s2, $s2, 12
/* 1A588 80029D88 00000000 */  nop
/* 1A58C 80029D8C 18004302 */  mult       $s2, $v1
/* 1A590 80029D90 12800000 */  mflo       $s0
/* 1A594 80029D94 2000A28F */  lw         $v0, 0x20($sp)
/* 1A598 80029D98 00000000 */  nop
/* 1A59C 80029D9C 18002202 */  mult       $s1, $v0
/* 1A5A0 80029DA0 12880000 */  mflo       $s1
/* 1A5A4 80029DA4 00000000 */  nop
/* 1A5A8 80029DA8 00000000 */  nop
/* 1A5AC 80029DAC 18008202 */  mult       $s4, $v0
/* 1A5B0 80029DB0 12A00000 */  mflo       $s4
/* 1A5B4 80029DB4 04000424 */  addiu      $a0, $zero, 0x4
/* 1A5B8 80029DB8 00000000 */  nop
/* 1A5BC 80029DBC 18004202 */  mult       $s2, $v0
/* 1A5C0 80029DC0 03A91500 */  sra        $s5, $s5, 4
/* 1A5C4 80029DC4 4000A38F */  lw         $v1, 0x40($sp)
/* 1A5C8 80029DC8 03991300 */  sra        $s3, $s3, 4
/* 1A5CC 80029DCC 21987300 */  addu       $s3, $v1, $s3
/* 1A5D0 80029DD0 03811000 */  sra        $s0, $s0, 4
/* 1A5D4 80029DD4 3C00A28F */  lw         $v0, 0x3C($sp)
/* 1A5D8 80029DD8 03891100 */  sra        $s1, $s1, 4
/* 1A5DC 80029DDC 21A85500 */  addu       $s5, $v0, $s5
/* 1A5E0 80029DE0 4400A28F */  lw         $v0, 0x44($sp)
/* 1A5E4 80029DE4 03A11400 */  sra        $s4, $s4, 4
/* 1A5E8 80029DE8 21805000 */  addu       $s0, $v0, $s0
/* 1A5EC 80029DEC 12900000 */  mflo       $s2
/* 1A5F0 80029DF0 D140010C */  jal        u32Random
/* 1A5F4 80029DF4 03911200 */   sra       $s2, $s2, 4
/* 1A5F8 80029DF8 01000324 */  addiu      $v1, $zero, 0x1
/* 1A5FC 80029DFC 0000C3A6 */  sh         $v1, 0x0($s6)
/* 1A600 80029E00 1E000324 */  addiu      $v1, $zero, 0x1E
/* 1A604 80029E04 23106200 */  subu       $v0, $v1, $v0
/* 1A608 80029E08 0400D5AE */  sw         $s5, 0x4($s6)
/* 1A60C 80029E0C 0800D3AE */  sw         $s3, 0x8($s6)
/* 1A610 80029E10 0C00D0AE */  sw         $s0, 0xC($s6)
/* 1A614 80029E14 1000D1AE */  sw         $s1, 0x10($s6)
/* 1A618 80029E18 1400D4AE */  sw         $s4, 0x14($s6)
/* 1A61C 80029E1C 1800D2AE */  sw         $s2, 0x18($s6)
/* 1A620 80029E20 0200C2A6 */  sh         $v0, 0x2($s6)
/* 1A624 80029E24 4C00E392 */  lbu        $v1, 0x4C($s7)
/* 1A628 80029E28 4800A58F */  lw         $a1, 0x48($sp)
/* 1A62C 80029E2C 00000000 */  nop
/* 1A630 80029E30 0400A3A0 */  sb         $v1, 0x4($a1)
/* 1A634 80029E34 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1A638 80029E38 00000000 */  nop
/* 1A63C 80029E3C 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1A640 80029E40 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1A644 80029E44 00000000 */  nop
/* 1A648 80029E48 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1A64C 80029E4C 4C00E492 */  lbu        $a0, 0x4C($s7)
/* 1A650 80029E50 3400A58F */  lw         $a1, 0x34($sp)
/* 1A654 80029E54 00000000 */  nop
/* 1A658 80029E58 0400A4A0 */  sb         $a0, 0x4($a1)
/* 1A65C 80029E5C 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1A660 80029E60 00000000 */  nop
/* 1A664 80029E64 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1A668 80029E68 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1A66C 80029E6C 3800B18F */  lw         $s1, 0x38($sp)
/* 1A670 80029E70 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1A674 80029E74 0800E28E */  lw         $v0, 0x8($s7)
/* 1A678 80029E78 3000B68F */  lw         $s6, 0x30($sp)
/* 1A67C 80029E7C 2A102202 */  slt        $v0, $s1, $v0
/* 1A680 80029E80 49FF4014 */  bnez       $v0, .L80029BA8
/* 1A684 80029E84 00000000 */   nop
.L80029E88:
/* 1A688 80029E88 7400BF8F */  lw         $ra, 0x74($sp)
/* 1A68C 80029E8C 7000BE8F */  lw         $fp, 0x70($sp)
/* 1A690 80029E90 01000224 */  addiu      $v0, $zero, 0x1
/* 1A694 80029E94 0000E2AE */  sw         $v0, 0x0($s7)
/* 1A698 80029E98 6C00B78F */  lw         $s7, 0x6C($sp)
/* 1A69C 80029E9C 6800B68F */  lw         $s6, 0x68($sp)
/* 1A6A0 80029EA0 6400B58F */  lw         $s5, 0x64($sp)
/* 1A6A4 80029EA4 6000B48F */  lw         $s4, 0x60($sp)
/* 1A6A8 80029EA8 5C00B38F */  lw         $s3, 0x5C($sp)
/* 1A6AC 80029EAC 5800B28F */  lw         $s2, 0x58($sp)
/* 1A6B0 80029EB0 5400B18F */  lw         $s1, 0x54($sp)
/* 1A6B4 80029EB4 5000B08F */  lw         $s0, 0x50($sp)
/* 1A6B8 80029EB8 0800E003 */  jr         $ra
/* 1A6BC 80029EBC 7800BD27 */   addiu     $sp, $sp, 0x78
.size ReInitEmitterParticle, . - ReInitEmitterParticle
