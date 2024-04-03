.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SsSeqOpen
/* 45F40 80055740 0800E003 */  jr         $ra
/* 45F44 80055744 00000000 */   nop
.size SsSeqOpen, . - SsSeqOpen
