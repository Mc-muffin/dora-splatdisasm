.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MoveInBBoxInit
/* 35D10 80045510 F814828F */  lw         $v0, %gp_rel(g_totalnumbounding)($gp)
/* 35D14 80045514 00000000 */  nop
/* 35D18 80045518 0D004018 */  blez       $v0, .L80045550
/* 35D1C 8004551C 21280000 */   addu      $a1, $zero, $zero
/* 35D20 80045520 21304000 */  addu       $a2, $v0, $zero
/* 35D24 80045524 F414838F */  lw         $v1, %gp_rel(boundingboxes)($gp)
.L80045528:
/* 35D28 80045528 00000000 */  nop
/* 35D2C 8004552C 0000628C */  lw         $v0, 0x0($v1)
/* 35D30 80045530 00000000 */  nop
/* 35D34 80045534 03004414 */  bne        $v0, $a0, .L80045544
/* 35D38 80045538 0100A524 */   addiu     $a1, $a1, 0x1
/* 35D3C 8004553C 0800E003 */  jr         $ra
/* 35D40 80045540 21106000 */   addu      $v0, $v1, $zero
.L80045544:
/* 35D44 80045544 2A10A600 */  slt        $v0, $a1, $a2
/* 35D48 80045548 F7FF4014 */  bnez       $v0, .L80045528
/* 35D4C 8004554C 3C006324 */   addiu     $v1, $v1, 0x3C
.L80045550:
/* 35D50 80045550 0800E003 */  jr         $ra
/* 35D54 80045554 21100000 */   addu      $v0, $zero, $zero
.size MoveInBBoxInit, . - MoveInBBoxInit
