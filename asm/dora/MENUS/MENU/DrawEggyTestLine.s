.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawEggyTestLine
/* 19148 80028948 0800E003 */  jr         $ra
/* 1914C 8002894C 00000000 */   nop
.size DrawEggyTestLine, . - DrawEggyTestLine
