.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SsVabClose
/* 45F08 80055708 0800E003 */  jr         $ra
/* 45F0C 8005570C 00000000 */   nop
.size SsVabClose, . - SsVabClose
