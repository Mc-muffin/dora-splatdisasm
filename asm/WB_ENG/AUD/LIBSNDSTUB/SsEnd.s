.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SsEnd
/* 45F30 80055730 0800E003 */  jr         $ra
/* 45F34 80055734 00000000 */   nop
.size SsEnd, . - SsEnd
