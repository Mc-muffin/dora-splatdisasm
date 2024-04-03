.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawPathData
/* 52F2C 8006272C 0800E003 */  jr         $ra
/* 52F30 80062730 00000000 */   nop
.size DrawPathData, . - DrawPathData
