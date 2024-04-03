.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SsSetTickMode
/* 45F20 80055720 0800E003 */  jr         $ra
/* 45F24 80055724 00000000 */   nop
.size SsSetTickMode, . - SsSetTickMode
