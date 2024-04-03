.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckCellScreenClipYMax
/* 563A0 80065BA0 FFFF023C */  lui        $v0, (0xFFFF0000 >> 16)
/* 563A4 80065BA4 24208200 */  and        $a0, $a0, $v0
/* 563A8 80065BA8 F000023C */  lui        $v0, (0xF00000 >> 16)
/* 563AC 80065BAC 0800E003 */  jr         $ra
/* 563B0 80065BB0 2A104400 */   slt       $v0, $v0, $a0
.size CheckCellScreenClipYMax, . - CheckCellScreenClipYMax
