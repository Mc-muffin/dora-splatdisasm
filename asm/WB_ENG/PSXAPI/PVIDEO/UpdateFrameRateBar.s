.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel UpdateFrameRateBar
/* 4BECC 8005B6CC 0800E003 */  jr         $ra
/* 4BED0 8005B6D0 00000000 */   nop
.size UpdateFrameRateBar, . - UpdateFrameRateBar
