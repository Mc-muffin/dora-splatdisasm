.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleConfettiReInit
/* 20CA0 800304A0 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 20CA4 800304A4 1000B0AF */  sw         $s0, 0x10($sp)
/* 20CA8 800304A8 2180C000 */  addu       $s0, $a2, $zero
/* 20CAC 800304AC 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 20CB0 800304B0 21988000 */  addu       $s3, $a0, $zero
/* 20CB4 800304B4 10000424 */  addiu      $a0, $zero, 0x10
/* 20CB8 800304B8 1400B1AF */  sw         $s1, 0x14($sp)
/* 20CBC 800304BC 4000B124 */  addiu      $s1, $a1, 0x40
/* 20CC0 800304C0 2400B5AF */  sw         $s5, 0x24($sp)
/* 20CC4 800304C4 4000F524 */  addiu      $s5, $a3, 0x40
/* 20CC8 800304C8 3400BFAF */  sw         $ra, 0x34($sp)
/* 20CCC 800304CC 3000BEAF */  sw         $fp, 0x30($sp)
/* 20CD0 800304D0 2C00B7AF */  sw         $s7, 0x2C($sp)
/* 20CD4 800304D4 2800B6AF */  sw         $s6, 0x28($sp)
/* 20CD8 800304D8 2000B4AF */  sw         $s4, 0x20($sp)
/* 20CDC 800304DC D140010C */  jal        u32Random
/* 20CE0 800304E0 1800B2AF */   sw        $s2, 0x18($sp)
/* 20CE4 800304E4 80FE0326 */  addiu      $v1, $s0, -0x180
/* 20CE8 800304E8 23806200 */  subu       $s0, $v1, $v0
/* 20CEC 800304EC 21A00000 */  addu       $s4, $zero, $zero
/* 20CF0 800304F0 80000224 */  addiu      $v0, $zero, 0x80
/* 20CF4 800304F4 4000728E */  lw         $s2, 0x40($s3)
/* 20CF8 800304F8 0800638E */  lw         $v1, 0x8($s3)
/* 20CFC 800304FC 39001624 */  addiu      $s6, $zero, 0x39
/* 20D00 80030500 C41382AF */  sw         $v0, %gp_rel(TEMPR)($gp)
/* 20D04 80030504 C01382AF */  sw         $v0, %gp_rel(TEMPG)($gp)
/* 20D08 80030508 BC1382AF */  sw         $v0, %gp_rel(TEMPB)($gp)
/* 20D0C 8003050C 0C0076AE */  sw         $s6, 0xC($s3)
/* 20D10 80030510 240071AE */  sw         $s1, 0x24($s3)
/* 20D14 80030514 280070AE */  sw         $s0, 0x28($s3)
/* 20D18 80030518 2E006018 */  blez       $v1, .L800305D4
/* 20D1C 8003051C 2C0075AE */   sw        $s5, 0x2C($s3)
/* 20D20 80030520 00F21100 */  sll        $fp, $s1, 8
/* 20D24 80030524 00BA1000 */  sll        $s7, $s0, 8
/* 20D28 80030528 00AA1500 */  sll        $s5, $s5, 8
.L8003052C:
/* 20D2C 8003052C D140010C */  jal        u32Random
/* 20D30 80030530 C0000424 */   addiu     $a0, $zero, 0xC0
/* 20D34 80030534 C0000424 */  addiu      $a0, $zero, 0xC0
/* 20D38 80030538 008A0200 */  sll        $s1, $v0, 8
/* 20D3C 8003053C 2188D103 */  addu       $s1, $fp, $s1
/* 20D40 80030540 D140010C */  jal        u32Random
/* 20D44 80030544 00A03126 */   addiu     $s1, $s1, -0x6000
/* 20D48 80030548 1C004626 */  addiu      $a2, $s2, 0x1C
/* 20D4C 8003054C 4C006492 */  lbu        $a0, 0x4C($s3)
/* 20D50 80030550 01009426 */  addiu      $s4, $s4, 0x1
/* 20D54 80030554 0400C4A0 */  sb         $a0, 0x4($a2)
/* 20D58 80030558 4D006392 */  lbu        $v1, 0x4D($s3)
/* 20D5C 8003055C 00820200 */  sll        $s0, $v0, 8
/* 20D60 80030560 0500C3A0 */  sb         $v1, 0x5($a2)
/* 20D64 80030564 4E006492 */  lbu        $a0, 0x4E($s3)
/* 20D68 80030568 2180B002 */  addu       $s0, $s5, $s0
/* 20D6C 8003056C 0600C4A0 */  sb         $a0, 0x6($a2)
/* 20D70 80030570 4C006392 */  lbu        $v1, 0x4C($s3)
/* 20D74 80030574 44004626 */  addiu      $a2, $s2, 0x44
/* 20D78 80030578 0400C3A0 */  sb         $v1, 0x4($a2)
/* 20D7C 8003057C 4D006592 */  lbu        $a1, 0x4D($s3)
/* 20D80 80030580 00A01026 */  addiu      $s0, $s0, -0x6000
/* 20D84 80030584 0500C5A0 */  sb         $a1, 0x5($a2)
/* 20D88 80030588 4E006392 */  lbu        $v1, 0x4E($s3)
/* 20D8C 8003058C 03000424 */  addiu      $a0, $zero, 0x3
/* 20D90 80030590 D140010C */  jal        u32Random
/* 20D94 80030594 0600C3A0 */   sb        $v1, 0x6($a2)
/* 20D98 80030598 01000324 */  addiu      $v1, $zero, 0x1
/* 20D9C 8003059C 2310C202 */  subu       $v0, $s6, $v0
/* 20DA0 800305A0 000043A6 */  sh         $v1, 0x0($s2)
/* 20DA4 800305A4 040051AE */  sw         $s1, 0x4($s2)
/* 20DA8 800305A8 080057AE */  sw         $s7, 0x8($s2)
/* 20DAC 800305AC 0C0050AE */  sw         $s0, 0xC($s2)
/* 20DB0 800305B0 100040AE */  sw         $zero, 0x10($s2)
/* 20DB4 800305B4 140040AE */  sw         $zero, 0x14($s2)
/* 20DB8 800305B8 180040AE */  sw         $zero, 0x18($s2)
/* 20DBC 800305BC 020042A6 */  sh         $v0, 0x2($s2)
/* 20DC0 800305C0 0800628E */  lw         $v0, 0x8($s3)
/* 20DC4 800305C4 00000000 */  nop
/* 20DC8 800305C8 2A108202 */  slt        $v0, $s4, $v0
/* 20DCC 800305CC D7FF4014 */  bnez       $v0, .L8003052C
/* 20DD0 800305D0 74005226 */   addiu     $s2, $s2, 0x74
.L800305D4:
/* 20DD4 800305D4 D140010C */  jal        u32Random
/* 20DD8 800305D8 08000424 */   addiu     $a0, $zero, 0x8
/* 20DDC 800305DC 3400BF8F */  lw         $ra, 0x34($sp)
/* 20DE0 800305E0 3000BE8F */  lw         $fp, 0x30($sp)
/* 20DE4 800305E4 2C00B78F */  lw         $s7, 0x2C($sp)
/* 20DE8 800305E8 2800B68F */  lw         $s6, 0x28($sp)
/* 20DEC 800305EC 2400B58F */  lw         $s5, 0x24($sp)
/* 20DF0 800305F0 2000B48F */  lw         $s4, 0x20($sp)
/* 20DF4 800305F4 F0004224 */  addiu      $v0, $v0, 0xF0
/* 20DF8 800305F8 4A0062A6 */  sh         $v0, 0x4A($s3)
/* 20DFC 800305FC 01000224 */  addiu      $v0, $zero, 0x1
/* 20E00 80030600 000062AE */  sw         $v0, 0x0($s3)
/* 20E04 80030604 1C00B38F */  lw         $s3, 0x1C($sp)
/* 20E08 80030608 1800B28F */  lw         $s2, 0x18($sp)
/* 20E0C 8003060C 1400B18F */  lw         $s1, 0x14($sp)
/* 20E10 80030610 1000B08F */  lw         $s0, 0x10($sp)
/* 20E14 80030614 0800E003 */  jr         $ra
/* 20E18 80030618 3800BD27 */   addiu     $sp, $sp, 0x38
.size ParticleConfettiReInit, . - ParticleConfettiReInit
