.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetObjectMaxAccelerate
/* 2EF3C 8003E73C 0800E003 */  jr         $ra
/* 2EF40 8003E740 00000000 */   nop
.size SetObjectMaxAccelerate, . - SetObjectMaxAccelerate
