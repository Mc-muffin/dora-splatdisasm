.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GenericDoIdle
/* 3AC14 8004A414 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3AC18 8004A418 1400B1AF */  sw         $s1, 0x14($sp)
/* 3AC1C 8004A41C 21888000 */  addu       $s1, $a0, $zero
/* 3AC20 8004A420 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 3AC24 8004A424 1800B2AF */  sw         $s2, 0x18($sp)
/* 3AC28 8004A428 1000B0AF */  sw         $s0, 0x10($sp)
/* 3AC2C 8004A42C 2401328E */  lw         $s2, 0x124($s1)
/* 3AC30 8004A430 8401238E */  lw         $v1, 0x184($s1)
/* 3AC34 8004A434 3400508E */  lw         $s0, 0x34($s2)
/* 3AC38 8004A438 440120AE */  sw         $zero, 0x144($s1)
/* 3AC3C 8004A43C 2400628C */  lw         $v0, 0x24($v1)
/* 3AC40 8004A440 00000000 */  nop
/* 3AC44 8004A444 20004010 */  beqz       $v0, .L8004A4C8
/* 3AC48 8004A448 00000000 */   nop
/* 3AC4C 8004A44C 11000012 */  beqz       $s0, .L8004A494
/* 3AC50 8004A450 FFFF1026 */   addiu     $s0, $s0, -0x1
/* 3AC54 8004A454 2C000016 */  bnez       $s0, .L8004A508
/* 3AC58 8004A458 00000000 */   nop
/* 3AC5C 8004A45C 3C01238E */  lw         $v1, 0x13C($s1)
/* 3AC60 8004A460 08000224 */  addiu      $v0, $zero, 0x8
/* 3AC64 8004A464 04006210 */  beq        $v1, $v0, .L8004A478
/* 3AC68 8004A468 08000524 */   addiu     $a1, $zero, 0x8
/* 3AC6C 8004A46C 04000624 */  addiu      $a2, $zero, 0x4
/* 3AC70 8004A470 8FE2000C */  jal        SetAnimWithInterp
/* 3AC74 8004A474 2C018724 */   addiu     $a3, $a0, 0x12C
.L8004A478:
/* 3AC78 8004A478 D140010C */  jal        u32Random
/* 3AC7C 8004A47C 0A000424 */   addiu     $a0, $zero, 0xA
/* 3AC80 8004A480 05004224 */  addiu      $v0, $v0, 0x5
/* 3AC84 8004A484 00190200 */  sll        $v1, $v0, 4
/* 3AC88 8004A488 23186200 */  subu       $v1, $v1, $v0
/* 3AC8C 8004A48C 42290108 */  j          .L8004A508
/* 3AC90 8004A490 40800300 */   sll       $s0, $v1, 1
.L8004A494:
/* 3AC94 8004A494 D140010C */  jal        u32Random
/* 3AC98 8004A498 0A000424 */   addiu     $a0, $zero, 0xA
/* 3AC9C 8004A49C 05004224 */  addiu      $v0, $v0, 0x5
/* 3ACA0 8004A4A0 00190200 */  sll        $v1, $v0, 4
/* 3ACA4 8004A4A4 23186200 */  subu       $v1, $v1, $v0
/* 3ACA8 8004A4A8 40800300 */  sll        $s0, $v1, 1
/* 3ACAC 8004A4AC 21202002 */  addu       $a0, $s1, $zero
/* 3ACB0 8004A4B0 21280000 */  addu       $a1, $zero, $zero
/* 3ACB4 8004A4B4 04000624 */  addiu      $a2, $zero, 0x4
/* 3ACB8 8004A4B8 8FE2000C */  jal        SetAnimWithInterp
/* 3ACBC 8004A4BC 2C018724 */   addiu     $a3, $a0, 0x12C
/* 3ACC0 8004A4C0 42290108 */  j          .L8004A508
/* 3ACC4 8004A4C4 00000000 */   nop
.L8004A4C8:
/* 3ACC8 8004A4C8 5401228E */  lw         $v0, 0x154($s1)
/* 3ACCC 8004A4CC 00000000 */  nop
/* 3ACD0 8004A4D0 02004230 */  andi       $v0, $v0, 0x2
/* 3ACD4 8004A4D4 0C004014 */  bnez       $v0, .L8004A508
/* 3ACD8 8004A4D8 00000000 */   nop
/* 3ACDC 8004A4DC 3C01238E */  lw         $v1, 0x13C($s1)
/* 3ACE0 8004A4E0 00000000 */  nop
/* 3ACE4 8004A4E4 08006010 */  beqz       $v1, .L8004A508
/* 3ACE8 8004A4E8 00000000 */   nop
/* 3ACEC 8004A4EC 10000224 */  addiu      $v0, $zero, 0x10
/* 3ACF0 8004A4F0 05006210 */  beq        $v1, $v0, .L8004A508
/* 3ACF4 8004A4F4 21202002 */   addu      $a0, $s1, $zero
/* 3ACF8 8004A4F8 21280000 */  addu       $a1, $zero, $zero
/* 3ACFC 8004A4FC 04000624 */  addiu      $a2, $zero, 0x4
/* 3AD00 8004A500 8FE2000C */  jal        SetAnimWithInterp
/* 3AD04 8004A504 2C018724 */   addiu     $a3, $a0, 0x12C
.L8004A508:
/* 3AD08 8004A508 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 3AD0C 8004A50C 340050AE */  sw         $s0, 0x34($s2)
/* 3AD10 8004A510 1800B28F */  lw         $s2, 0x18($sp)
/* 3AD14 8004A514 1400B18F */  lw         $s1, 0x14($sp)
/* 3AD18 8004A518 1000B08F */  lw         $s0, 0x10($sp)
/* 3AD1C 8004A51C 0800E003 */  jr         $ra
/* 3AD20 8004A520 2000BD27 */   addiu     $sp, $sp, 0x20
.size GenericDoIdle, . - GenericDoIdle
