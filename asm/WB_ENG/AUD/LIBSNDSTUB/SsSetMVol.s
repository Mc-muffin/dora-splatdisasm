.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SsSetMVol
/* 45F68 80055768 0800E003 */  jr         $ra
/* 45F6C 8005576C 00000000 */   nop
.size SsSetMVol, . - SsSetMVol
