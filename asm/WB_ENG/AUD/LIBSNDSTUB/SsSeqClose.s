.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SsSeqClose
/* 45F60 80055760 0800E003 */  jr         $ra
/* 45F64 80055764 00000000 */   nop
.size SsSeqClose, . - SsSeqClose
