.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel cdplay
/* 4F7E8 8005EFE8 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 4F7EC 8005EFEC 2400B1AF */  sw         $s1, 0x24($sp)
/* 4F7F0 8005EFF0 FF009130 */  andi       $s1, $a0, 0xFF
/* 4F7F4 8005EFF4 0D000424 */  addiu      $a0, $zero, 0xD
/* 4F7F8 8005EFF8 1800A527 */  addiu      $a1, $sp, 0x18
/* 4F7FC 8005EFFC 0C80063C */  lui        $a2, %hi(gCdStatus)
/* 4F800 8005F000 80E8C624 */  addiu      $a2, $a2, %lo(gCdStatus)
/* 4F804 8005F004 4017838F */  lw         $v1, %gp_rel(theXAFile)($gp)
/* 4F808 8005F008 01000224 */  addiu      $v0, $zero, 0x1
/* 4F80C 8005F00C 2800BFAF */  sw         $ra, 0x28($sp)
/* 4F810 8005F010 2000B0AF */  sw         $s0, 0x20($sp)
/* 4F814 8005F014 1800A2A3 */  sb         $v0, 0x18($sp)
/* 4F818 8005F018 04006790 */  lbu        $a3, 0x4($v1)
/* 4F81C 8005F01C 01001024 */  addiu      $s0, $zero, 0x1
/* 4F820 8005F020 781190AF */  sw         $s0, %gp_rel(gCDCallback_status)($gp)
/* 4F824 8005F024 C3D2010C */  jal        CdControl
/* 4F828 8005F028 1900A7A3 */   sb        $a3, 0x19($sp)
/* 4F82C 8005F02C 4017838F */  lw         $v1, %gp_rel(theXAFile)($gp)
/* 4F830 8005F030 00000000 */  nop
/* 4F834 8005F034 1000648C */  lw         $a0, 0x10($v1)
/* 4F838 8005F038 4BD2010C */  jal        CdIntToPos
/* 4F83C 8005F03C 1000A527 */   addiu     $a1, $sp, 0x10
/* 4F840 8005F040 21202002 */  addu       $a0, $s1, $zero
/* 4F844 8005F044 1000A527 */  addiu      $a1, $sp, 0x10
/* 4F848 8005F048 C3D2010C */  jal        CdControl
/* 4F84C 8005F04C 21300000 */   addu      $a2, $zero, $zero
/* 4F850 8005F050 21184000 */  addu       $v1, $v0, $zero
/* 4F854 8005F054 02007014 */  bne        $v1, $s0, .L8005F060
/* 4F858 8005F058 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 4F85C 8005F05C 21100000 */  addu       $v0, $zero, $zero
.L8005F060:
/* 4F860 8005F060 2800BF8F */  lw         $ra, 0x28($sp)
/* 4F864 8005F064 2400B18F */  lw         $s1, 0x24($sp)
/* 4F868 8005F068 2000B08F */  lw         $s0, 0x20($sp)
/* 4F86C 8005F06C 0800E003 */  jr         $ra
/* 4F870 8005F070 3000BD27 */   addiu     $sp, $sp, 0x30
.size cdplay, . - cdplay
