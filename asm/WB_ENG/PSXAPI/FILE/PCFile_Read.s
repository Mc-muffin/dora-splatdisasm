.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PCFile_Read
/* 47CFC 800574FC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 47D00 80057500 0980023C */  lui        $v0, %hi(gCDCallback)
/* 47D04 80057504 1000B0AF */  sw         $s0, 0x10($sp)
/* 47D08 80057508 5C825024 */  addiu      $s0, $v0, %lo(gCDCallback)
/* 47D0C 8005750C 1400B1AF */  sw         $s1, 0x14($sp)
/* 47D10 80057510 2188C000 */  addu       $s1, $a2, $zero
/* 47D14 80057514 1800B2AF */  sw         $s2, 0x18($sp)
/* 47D18 80057518 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 47D1C 8005751C 1000048E */  lw         $a0, 0x10($s0)
/* 47D20 80057520 A6C1010C */  jal        PCread
/* 47D24 80057524 2190E000 */   addu      $s2, $a3, $zero
/* 47D28 80057528 0400038E */  lw         $v1, 0x4($s0)
/* 47D2C 8005752C 00000000 */  nop
/* 47D30 80057530 23187100 */  subu       $v1, $v1, $s1
/* 47D34 80057534 040003AE */  sw         $v1, 0x4($s0)
/* 47D38 80057538 03004012 */  beqz       $s2, .L80057548
/* 47D3C 8005753C 21204000 */   addu      $a0, $v0, $zero
/* 47D40 80057540 09F84002 */  jalr       $s2
/* 47D44 80057544 21282002 */   addu      $a1, $s1, $zero
.L80057548:
/* 47D48 80057548 0400028E */  lw         $v0, 0x4($s0)
/* 47D4C 8005754C 00000000 */  nop
/* 47D50 80057550 05004014 */  bnez       $v0, .L80057568
/* 47D54 80057554 21102002 */   addu      $v0, $s1, $zero
/* 47D58 80057558 1000048E */  lw         $a0, 0x10($s0)
/* 47D5C 8005755C 8EC1010C */  jal        PCclose
/* 47D60 80057560 00000000 */   nop
/* 47D64 80057564 FFFF0224 */  addiu      $v0, $zero, -0x1
.L80057568:
/* 47D68 80057568 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 47D6C 8005756C 1800B28F */  lw         $s2, 0x18($sp)
/* 47D70 80057570 1400B18F */  lw         $s1, 0x14($sp)
/* 47D74 80057574 1000B08F */  lw         $s0, 0x10($sp)
/* 47D78 80057578 0800E003 */  jr         $ra
/* 47D7C 8005757C 2000BD27 */   addiu     $sp, $sp, 0x20
.size PCFile_Read, . - PCFile_Read
