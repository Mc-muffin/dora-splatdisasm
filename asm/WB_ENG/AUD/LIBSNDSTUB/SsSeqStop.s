.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SsSeqStop
/* 45F50 80055750 0800E003 */  jr         $ra
/* 45F54 80055754 00000000 */   nop
.size SsSeqStop, . - SsSeqStop
