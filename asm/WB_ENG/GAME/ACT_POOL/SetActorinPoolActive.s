.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetActorinPoolActive
/* 27E78 80037678 0800E003 */  jr         $ra
/* 27E7C 8003767C 00000000 */   nop
.size SetActorinPoolActive, . - SetActorinPoolActive
