.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel StopEnvMotionCollision
/* B484 8001AC84 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* B488 8001AC88 4800A38F */  lw         $v1, 0x48($sp)
/* B48C 8001AC8C 1C00B3AF */  sw         $s3, 0x1C($sp)
/* B490 8001AC90 6C009324 */  addiu      $s3, $a0, 0x6C
/* B494 8001AC94 2800B6AF */  sw         $s6, 0x28($sp)
/* B498 8001AC98 21B0A000 */  addu       $s6, $a1, $zero
/* B49C 8001AC9C 2C00B7AF */  sw         $s7, 0x2C($sp)
/* B4A0 8001ACA0 21B8E000 */  addu       $s7, $a3, $zero
/* B4A4 8001ACA4 3000BFAF */  sw         $ra, 0x30($sp)
/* B4A8 8001ACA8 2400B5AF */  sw         $s5, 0x24($sp)
/* B4AC 8001ACAC 2000B4AF */  sw         $s4, 0x20($sp)
/* B4B0 8001ACB0 1800B2AF */  sw         $s2, 0x18($sp)
/* B4B4 8001ACB4 1400B1AF */  sw         $s1, 0x14($sp)
/* B4B8 8001ACB8 1000B0AF */  sw         $s0, 0x10($sp)
/* B4BC 8001ACBC 5000828C */  lw         $v0, 0x50($a0)
/* B4C0 8001ACC0 0400748E */  lw         $s4, 0x4($s3)
/* B4C4 8001ACC4 0C00758E */  lw         $s5, 0xC($s3)
/* B4C8 8001ACC8 21904300 */  addu       $s2, $v0, $v1
/* B4CC 8001ACCC 23889602 */  subu       $s1, $s4, $s6
/* B4D0 8001ACD0 21202002 */  addu       $a0, $s1, $zero
/* B4D4 8001ACD4 2380B702 */  subu       $s0, $s5, $s7
/* B4D8 8001ACD8 11EA000C */  jal        DistApprox_2d_actual
/* B4DC 8001ACDC 21280002 */   addu      $a1, $s0, $zero
/* B4E0 8001ACE0 05004004 */  bltz       $v0, .L8001ACF8
/* B4E4 8001ACE4 21202002 */   addu      $a0, $s1, $zero
/* B4E8 8001ACE8 11EA000C */  jal        DistApprox_2d_actual
/* B4EC 8001ACEC 21280002 */   addu      $a1, $s0, $zero
/* B4F0 8001ACF0 426B0008 */  j          .L8001AD08
/* B4F4 8001ACF4 2A105200 */   slt       $v0, $v0, $s2
.L8001ACF8:
/* B4F8 8001ACF8 11EA000C */  jal        DistApprox_2d_actual
/* B4FC 8001ACFC 21280002 */   addu      $a1, $s0, $zero
/* B500 8001AD00 23100200 */  negu       $v0, $v0
/* B504 8001AD04 2A105200 */  slt        $v0, $v0, $s2
.L8001AD08:
/* B508 8001AD08 03004014 */  bnez       $v0, .L8001AD18
/* B50C 8001AD0C 2320F502 */   subu      $a0, $s7, $s5
/* B510 8001AD10 616B0008 */  j          .L8001AD84
/* B514 8001AD14 21100000 */   addu      $v0, $zero, $zero
.L8001AD18:
/* B518 8001AD18 63EF010C */  jal        ratan2
/* B51C 8001AD1C 2328D402 */   subu      $a1, $s6, $s4
/* B520 8001AD20 00085024 */  addiu      $s0, $v0, 0x800
/* B524 8001AD24 FF0F1032 */  andi       $s0, $s0, 0xFFF
/* B528 8001AD28 47EB010C */  jal        rsin
/* B52C 8001AD2C 21200002 */   addu      $a0, $s0, $zero
/* B530 8001AD30 21200002 */  addu       $a0, $s0, $zero
/* B534 8001AD34 7BEB010C */  jal        rcos
/* B538 8001AD38 21884000 */   addu      $s1, $v0, $zero
/* B53C 8001AD3C 01005226 */  addiu      $s2, $s2, 0x1
/* B540 8001AD40 18004202 */  mult       $s2, $v0
/* B544 8001AD44 12180000 */  mflo       $v1
/* B548 8001AD48 00000000 */  nop
/* B54C 8001AD4C 00000000 */  nop
/* B550 8001AD50 18005102 */  mult       $s2, $s1
/* B554 8001AD54 01000224 */  addiu      $v0, $zero, 0x1
/* B558 8001AD58 040074AE */  sw         $s4, 0x4($s3)
/* B55C 8001AD5C 0C0075AE */  sw         $s5, 0xC($s3)
/* B560 8001AD60 031B0300 */  sra        $v1, $v1, 12
/* B564 8001AD64 2118C302 */  addu       $v1, $s6, $v1
/* B568 8001AD68 23187400 */  subu       $v1, $v1, $s4
/* B56C 8001AD6C 200063AE */  sw         $v1, 0x20($s3)
/* B570 8001AD70 12880000 */  mflo       $s1
/* B574 8001AD74 038B1100 */  sra        $s1, $s1, 12
/* B578 8001AD78 2188F102 */  addu       $s1, $s7, $s1
/* B57C 8001AD7C 23883502 */  subu       $s1, $s1, $s5
/* B580 8001AD80 280071AE */  sw         $s1, 0x28($s3)
.L8001AD84:
/* B584 8001AD84 3000BF8F */  lw         $ra, 0x30($sp)
/* B588 8001AD88 2C00B78F */  lw         $s7, 0x2C($sp)
/* B58C 8001AD8C 2800B68F */  lw         $s6, 0x28($sp)
/* B590 8001AD90 2400B58F */  lw         $s5, 0x24($sp)
/* B594 8001AD94 2000B48F */  lw         $s4, 0x20($sp)
/* B598 8001AD98 1C00B38F */  lw         $s3, 0x1C($sp)
/* B59C 8001AD9C 1800B28F */  lw         $s2, 0x18($sp)
/* B5A0 8001ADA0 1400B18F */  lw         $s1, 0x14($sp)
/* B5A4 8001ADA4 1000B08F */  lw         $s0, 0x10($sp)
/* B5A8 8001ADA8 0800E003 */  jr         $ra
/* B5AC 8001ADAC 3800BD27 */   addiu     $sp, $sp, 0x38
.size StopEnvMotionCollision, . - StopEnvMotionCollision
