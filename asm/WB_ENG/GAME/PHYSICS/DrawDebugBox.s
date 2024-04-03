.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawDebugBox
/* 2F2B8 8003EAB8 0800E003 */  jr         $ra
/* 2F2BC 8003EABC 00000000 */   nop
.size DrawDebugBox, . - DrawDebugBox
