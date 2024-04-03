.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SsInit
/* 45F10 80055710 0800E003 */  jr         $ra
/* 45F14 80055714 00000000 */   nop
.size SsInit, . - SsInit
