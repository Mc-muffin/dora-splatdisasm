.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel RestoreCameraAggression
/* 2C10C 8003B90C 9014848F */  lw         $a0, %gp_rel(currentCamera)($gp)
/* 2C110 8003B910 00000000 */  nop
/* 2C114 8003B914 99008380 */  lb         $v1, 0x99($a0)
/* 2C118 8003B918 99008290 */  lbu        $v0, 0x99($a0)
/* 2C11C 8003B91C 07006004 */  bltz       $v1, .L8003B93C
/* 2C120 8003B920 FFFF4224 */   addiu     $v0, $v0, -0x1
/* 2C124 8003B924 40180300 */  sll        $v1, $v1, 1
/* 2C128 8003B928 21188300 */  addu       $v1, $a0, $v1
/* 2C12C 8003B92C 990082A0 */  sb         $v0, 0x99($a0)
/* 2C130 8003B930 9A006294 */  lhu        $v0, 0x9A($v1)
/* 2C134 8003B934 00000000 */  nop
/* 2C138 8003B938 020082A4 */  sh         $v0, 0x2($a0)
.L8003B93C:
/* 2C13C 8003B93C 0800E003 */  jr         $ra
/* 2C140 8003B940 00000000 */   nop
.size RestoreCameraAggression, . - RestoreCameraAggression
