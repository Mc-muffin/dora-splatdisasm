.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SsSeqPlay
/* 45F48 80055748 0800E003 */  jr         $ra
/* 45F4C 8005574C 00000000 */   nop
.size SsSeqPlay, . - SsSeqPlay
