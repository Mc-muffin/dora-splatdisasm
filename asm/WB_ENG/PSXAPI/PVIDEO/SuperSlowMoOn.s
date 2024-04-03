.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SuperSlowMoOn
/* 4BED4 8005B6D4 0800E003 */  jr         $ra
/* 4BED8 8005B6D8 00000000 */   nop
.size SuperSlowMoOn, . - SuperSlowMoOn
