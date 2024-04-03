.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LookUpSpringBoard
/* 11F68 80021768 8013828F */  lw         $v0, %gp_rel(g_totalspringboard)($gp)
/* 11F6C 8002176C 00000000 */  nop
/* 11F70 80021770 14004018 */  blez       $v0, .L800217C4
/* 11F74 80021774 21300000 */   addu      $a2, $zero, $zero
/* 11F78 80021778 21404000 */  addu       $t0, $v0, $zero
/* 11F7C 8002177C 0000878C */  lw         $a3, 0x0($a0)
/* 11F80 80021780 8413858F */  lw         $a1, %gp_rel(WorldSpringBoardPtr)($gp)
.L80021784:
/* 11F84 80021784 00000000 */  nop
/* 11F88 80021788 1000A28C */  lw         $v0, 0x10($a1)
/* 11F8C 8002178C 00000000 */  nop
/* 11F90 80021790 08004714 */  bne        $v0, $a3, .L800217B4
/* 11F94 80021794 00000000 */   nop
/* 11F98 80021798 1800A38C */  lw         $v1, 0x18($a1)
/* 11F9C 8002179C 0800828C */  lw         $v0, 0x8($a0)
/* 11FA0 800217A0 00000000 */  nop
/* 11FA4 800217A4 04006214 */  bne        $v1, $v0, .L800217B8
/* 11FA8 800217A8 0100C624 */   addiu     $a2, $a2, 0x1
/* 11FAC 800217AC 0800E003 */  jr         $ra
/* 11FB0 800217B0 2110A000 */   addu      $v0, $a1, $zero
.L800217B4:
/* 11FB4 800217B4 0100C624 */  addiu      $a2, $a2, 0x1
.L800217B8:
/* 11FB8 800217B8 2A10C800 */  slt        $v0, $a2, $t0
/* 11FBC 800217BC F1FF4014 */  bnez       $v0, .L80021784
/* 11FC0 800217C0 2800A524 */   addiu     $a1, $a1, 0x28
.L800217C4:
/* 11FC4 800217C4 0800E003 */  jr         $ra
/* 11FC8 800217C8 21100000 */   addu      $v0, $zero, $zero
.size LookUpSpringBoard, . - LookUpSpringBoard
