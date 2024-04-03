.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel HighRezcbvfunc
/* 401E4 8004F9E4 0800E003 */  jr         $ra
/* 401E8 8004F9E8 00000000 */   nop
.size HighRezcbvfunc, . - HighRezcbvfunc
