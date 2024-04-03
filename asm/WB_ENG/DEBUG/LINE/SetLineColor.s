.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetLineColor
/* 52F24 80062724 0800E003 */  jr         $ra
/* 52F28 80062728 00000000 */   nop
.size SetLineColor, . - SetLineColor
