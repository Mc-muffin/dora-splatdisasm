.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SsSetTableSize
/* 45F18 80055718 0800E003 */  jr         $ra
/* 45F1C 8005571C 00000000 */   nop
.size SsSetTableSize, . - SsSetTableSize
