.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SuperSlowMoOff
/* 4BEDC 8005B6DC 0800E003 */  jr         $ra
/* 4BEE0 8005B6E0 00000000 */   nop
.size SuperSlowMoOff, . - SuperSlowMoOff
