.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SsSeqSetVol
/* 45F58 80055758 0800E003 */  jr         $ra
/* 45F5C 8005575C 00000000 */   nop
.size SsSeqSetVol, . - SsSeqSetVol
