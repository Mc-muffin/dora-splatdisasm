.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SsVabTransBody
/* 45EF8 800556F8 0800E003 */  jr         $ra
/* 45EFC 800556FC 00000000 */   nop
.size SsVabTransBody, . - SsVabTransBody
