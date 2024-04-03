.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitFrameRateBar
/* 4BEC4 8005B6C4 0800E003 */  jr         $ra
/* 4BEC8 8005B6C8 00000000 */   nop
.size InitFrameRateBar, . - InitFrameRateBar
