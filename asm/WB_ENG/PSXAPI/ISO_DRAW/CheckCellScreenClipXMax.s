.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckCellScreenClipXMax
/* 563C4 80065BC4 00240400 */  sll        $a0, $a0, 16
/* 563C8 80065BC8 4001023C */  lui        $v0, (0x1400000 >> 16)
/* 563CC 80065BCC 0800E003 */  jr         $ra
/* 563D0 80065BD0 2A104400 */   slt       $v0, $v0, $a0
.size CheckCellScreenClipXMax, . - CheckCellScreenClipXMax
