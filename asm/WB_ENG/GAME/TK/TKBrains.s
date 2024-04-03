.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TKBrains
/* 347EC 80043FEC 0800E003 */  jr         $ra
/* 347F0 80043FF0 00000000 */   nop
.size TKBrains, . - TKBrains
