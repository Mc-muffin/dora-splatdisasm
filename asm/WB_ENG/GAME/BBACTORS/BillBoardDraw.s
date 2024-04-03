.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel BillBoardDraw
/* 34CC0 800444C0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 34CC4 800444C4 21388000 */  addu       $a3, $a0, $zero
/* 34CC8 800444C8 2000BFAF */  sw         $ra, 0x20($sp)
/* 34CCC 800444CC 0000E294 */  lhu        $v0, 0x0($a3)
/* 34CD0 800444D0 0400E394 */  lhu        $v1, 0x4($a3)
/* 34CD4 800444D4 0800E494 */  lhu        $a0, 0x8($a3)
/* 34CD8 800444D8 5800E68C */  lw         $a2, 0x58($a3)
/* 34CDC 800444DC 1400A0AF */  sw         $zero, 0x14($sp)
/* 34CE0 800444E0 1800A2A7 */  sh         $v0, 0x18($sp)
/* 34CE4 800444E4 80100500 */  sll        $v0, $a1, 2
/* 34CE8 800444E8 21104500 */  addu       $v0, $v0, $a1
/* 34CEC 800444EC 80100200 */  sll        $v0, $v0, 2
/* 34CF0 800444F0 21104500 */  addu       $v0, $v0, $a1
/* 34CF4 800444F4 80100200 */  sll        $v0, $v0, 2
/* 34CF8 800444F8 1A00A3A7 */  sh         $v1, 0x1A($sp)
/* 34CFC 800444FC 0A80033C */  lui        $v1, %hi(BillBoardPool)
/* 34D00 80044500 F84D6324 */  addiu      $v1, $v1, %lo(BillBoardPool)
/* 34D04 80044504 0980053C */  lui        $a1, %hi(ot_ndx)
/* 34D08 80044508 4853A58C */  lw         $a1, %lo(ot_ndx)($a1)
/* 34D0C 8004450C 21104300 */  addu       $v0, $v0, $v1
/* 34D10 80044510 1C00A4A7 */  sh         $a0, 0x1C($sp)
/* 34D14 80044514 1000A6AF */  sw         $a2, 0x10($sp)
/* 34D18 80044518 5400E68C */  lw         $a2, 0x54($a3)
/* 34D1C 8004451C 80200500 */  sll        $a0, $a1, 2
/* 34D20 80044520 21208500 */  addu       $a0, $a0, $a1
/* 34D24 80044524 C0200400 */  sll        $a0, $a0, 3
/* 34D28 80044528 21204400 */  addu       $a0, $v0, $a0
/* 34D2C 8004452C 1800A527 */  addiu      $a1, $sp, 0x18
/* 34D30 80044530 417D010C */  jal        DrawBilboardFT4
/* 34D34 80044534 2138C000 */   addu      $a3, $a2, $zero
/* 34D38 80044538 2000BF8F */  lw         $ra, 0x20($sp)
/* 34D3C 8004453C 00000000 */  nop
/* 34D40 80044540 0800E003 */  jr         $ra
/* 34D44 80044544 2800BD27 */   addiu     $sp, $sp, 0x28
.size BillBoardDraw, . - BillBoardDraw
