.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckCellScreenClipYMin
/* 56398 80065B98 0800E003 */  jr         $ra
/* 5639C 80065B9C C2170400 */   srl       $v0, $a0, 31
.size CheckCellScreenClipYMin, . - CheckCellScreenClipYMin
