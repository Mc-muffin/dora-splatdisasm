.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SsUtAllKeyOff
/* 45FC4 800557C4 0800E003 */  jr         $ra
/* 45FC8 800557C8 00000000 */   nop
.size SsUtAllKeyOff, . - SsUtAllKeyOff
