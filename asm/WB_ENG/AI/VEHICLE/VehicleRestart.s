.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel VehicleRestart
/* 384E0 80047CE0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 384E4 80047CE4 1400B1AF */  sw         $s1, 0x14($sp)
/* 384E8 80047CE8 21888000 */  addu       $s1, $a0, $zero
/* 384EC 80047CEC 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 384F0 80047CF0 1800B2AF */  sw         $s2, 0x18($sp)
/* 384F4 80047CF4 1000B0AF */  sw         $s0, 0x10($sp)
/* 384F8 80047CF8 2801308E */  lw         $s0, 0x128($s1)
/* 384FC 80047CFC 00000000 */  nop
/* 38500 80047D00 000000AE */  sw         $zero, 0x0($s0)
/* 38504 80047D04 0C0020AE */  sw         $zero, 0xC($s1)
/* 38508 80047D08 080000AE */  sw         $zero, 0x8($s0)
/* 3850C 80047D0C 0C0000AE */  sw         $zero, 0xC($s0)
/* 38510 80047D10 040000AE */  sw         $zero, 0x4($s0)
/* 38514 80047D14 5C0020AE */  sw         $zero, 0x5C($s1)
/* 38518 80047D18 2800028E */  lw         $v0, 0x28($s0)
/* 3851C 80047D1C 00000000 */  nop
/* 38520 80047D20 2800438C */  lw         $v1, 0x28($v0)
/* 38524 80047D24 00000000 */  nop
/* 38528 80047D28 05006010 */  beqz       $v1, .L80047D40
/* 3852C 80047D2C 01000224 */   addiu     $v0, $zero, 0x1
/* 38530 80047D30 05006214 */  bne        $v1, $v0, .L80047D48
/* 38534 80047D34 00040224 */   addiu     $v0, $zero, 0x400
/* 38538 80047D38 521F0108 */  j          .L80047D48
/* 3853C 80047D3C 540022AE */   sw        $v0, 0x54($s1)
.L80047D40:
/* 38540 80047D40 000C0224 */  addiu      $v0, $zero, 0xC00
/* 38544 80047D44 540022AE */  sw         $v0, 0x54($s1)
.L80047D48:
/* 38548 80047D48 4400228E */  lw         $v0, 0x44($s1)
/* 3854C 80047D4C 6C003226 */  addiu      $s2, $s1, 0x6C
/* 38550 80047D50 0C0020AE */  sw         $zero, 0xC($s1)
/* 38554 80047D54 0000458C */  lw         $a1, 0x0($v0)
/* 38558 80047D58 0400468C */  lw         $a2, 0x4($v0)
/* 3855C 80047D5C 0800478C */  lw         $a3, 0x8($v0)
/* 38560 80047D60 77FB000C */  jal        MotionPhysics_SetPosition
/* 38564 80047D64 21204002 */   addu      $a0, $s2, $zero
/* 38568 80047D68 2000058E */  lw         $a1, 0x20($s0)
/* 3856C 80047D6C 00000000 */  nop
/* 38570 80047D70 1200A010 */  beqz       $a1, .L80047DBC
/* 38574 80047D74 00000000 */   nop
/* 38578 80047D78 1000068E */  lw         $a2, 0x10($s0)
/* 3857C 80047D7C 1800078E */  lw         $a3, 0x18($s0)
/* 38580 80047D80 9C13010C */  jal        InitPath
/* 38584 80047D84 21202002 */   addu      $a0, $s1, $zero
/* 38588 80047D88 3C01228E */  lw         $v0, 0x13C($s1)
/* 3858C 80047D8C 01001024 */  addiu      $s0, $zero, 0x1
/* 38590 80047D90 04005010 */  beq        $v0, $s0, .L80047DA4
/* 38594 80047D94 21202002 */   addu      $a0, $s1, $zero
/* 38598 80047D98 01000524 */  addiu      $a1, $zero, 0x1
/* 3859C 80047D9C DCE2000C */  jal        ForceAnim
/* 385A0 80047DA0 2C012626 */   addiu     $a2, $s1, 0x12C
.L80047DA4:
/* 385A4 80047DA4 0000258E */  lw         $a1, 0x0($s1)
/* 385A8 80047DA8 0400268E */  lw         $a2, 0x4($s1)
/* 385AC 80047DAC 0800278E */  lw         $a3, 0x8($s1)
/* 385B0 80047DB0 21204002 */  addu       $a0, $s2, $zero
/* 385B4 80047DB4 77FB000C */  jal        MotionPhysics_SetPosition
/* 385B8 80047DB8 440130AE */   sw        $s0, 0x144($s1)
.L80047DBC:
/* 385BC 80047DBC 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 385C0 80047DC0 1800B28F */  lw         $s2, 0x18($sp)
/* 385C4 80047DC4 1400B18F */  lw         $s1, 0x14($sp)
/* 385C8 80047DC8 1000B08F */  lw         $s0, 0x10($sp)
/* 385CC 80047DCC 0800E003 */  jr         $ra
/* 385D0 80047DD0 2000BD27 */   addiu     $sp, $sp, 0x20
.size VehicleRestart, . - VehicleRestart
