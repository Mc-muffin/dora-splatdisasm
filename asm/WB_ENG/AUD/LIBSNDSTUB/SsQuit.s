.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SsQuit
/* 45F38 80055738 0800E003 */  jr         $ra
/* 45F3C 8005573C 00000000 */   nop
.size SsQuit, . - SsQuit
