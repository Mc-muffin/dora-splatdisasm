.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LoadBillBoardTextures
/* 34D48 80044548 0800E003 */  jr         $ra
/* 34D4C 8004454C 00000000 */   nop
.size LoadBillBoardTextures, . - LoadBillBoardTextures
