.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SsVabOpenHead
/* 45EF0 800556F0 0800E003 */  jr         $ra
/* 45EF4 800556F4 00000000 */   nop
.size SsVabOpenHead, . - SsVabOpenHead
