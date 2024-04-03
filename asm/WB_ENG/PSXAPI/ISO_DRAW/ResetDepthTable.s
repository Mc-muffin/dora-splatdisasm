.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ResetDepthTable
/* 55E84 80065684 0800E003 */  jr         $ra
/* 55E88 80065688 00000000 */   nop
.size ResetDepthTable, . - ResetDepthTable
