.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckCellScreenClipXMin
/* 563B4 80065BB4 00140400 */  sll        $v0, $a0, 16
/* 563B8 80065BB8 03140200 */  sra        $v0, $v0, 16
/* 563BC 80065BBC 0800E003 */  jr         $ra
/* 563C0 80065BC0 E0FF4228 */   slti      $v0, $v0, -0x20
.size CheckCellScreenClipXMin, . - CheckCellScreenClipXMin
