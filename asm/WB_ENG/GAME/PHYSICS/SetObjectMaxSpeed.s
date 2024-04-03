.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetObjectMaxSpeed
/* 2EF34 8003E734 0800E003 */  jr         $ra
/* 2EF38 8003E738 00000000 */   nop
.size SetObjectMaxSpeed, . - SetObjectMaxSpeed
