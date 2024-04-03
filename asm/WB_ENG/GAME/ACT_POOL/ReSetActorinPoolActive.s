.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ReSetActorinPoolActive
/* 27E70 80037670 0800E003 */  jr         $ra
/* 27E74 80037674 00000000 */   nop
.size ReSetActorinPoolActive, . - ReSetActorinPoolActive
