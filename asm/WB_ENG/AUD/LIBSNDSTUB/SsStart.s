.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SsStart
/* 45F28 80055728 0800E003 */  jr         $ra
/* 45F2C 8005572C 00000000 */   nop
.size SsStart, . - SsStart
