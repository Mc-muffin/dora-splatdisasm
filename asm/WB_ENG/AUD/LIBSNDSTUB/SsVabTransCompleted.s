.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SsVabTransCompleted
/* 45F00 80055700 0800E003 */  jr         $ra
/* 45F04 80055704 00000000 */   nop
.size SsVabTransCompleted, . - SsVabTransCompleted
