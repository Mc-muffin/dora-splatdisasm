.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CalculateInterpolation
/* 2968C 80038E8C 00018228 */  slti       $v0, $a0, 0x100
/* 29690 80038E90 03004014 */  bnez       $v0, .L80038EA0
/* 29694 80038E94 01018228 */   slti      $v0, $a0, 0x101
/* 29698 80038E98 0800E003 */  jr         $ra
/* 2969C 80038E9C 00010224 */   addiu     $v0, $zero, 0x100
.L80038EA0:
/* 296A0 80038EA0 02004014 */  bnez       $v0, .L80038EAC
/* 296A4 80038EA4 00000000 */   nop
/* 296A8 80038EA8 00010424 */  addiu      $a0, $zero, 0x100
.L80038EAC:
/* 296AC 80038EAC 0800E003 */  jr         $ra
/* 296B0 80038EB0 21108000 */   addu      $v0, $a0, $zero
.size CalculateInterpolation, . - CalculateInterpolation
