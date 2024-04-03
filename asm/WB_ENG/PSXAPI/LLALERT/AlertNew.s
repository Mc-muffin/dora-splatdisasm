.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AlertNew
/* 48700 80057F00 0800E003 */  jr         $ra
/* 48704 80057F04 00000000 */   nop
.size AlertNew, . - AlertNew
