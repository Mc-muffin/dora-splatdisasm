.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel FreeBillboardInstance
/* 34D50 80044550 0A80033C */  lui        $v1, %hi(BillBoardPool)
/* 34D54 80044554 F84D6324 */  addiu      $v1, $v1, %lo(BillBoardPool)
/* 34D58 80044558 80100400 */  sll        $v0, $a0, 2
/* 34D5C 8004455C 21104400 */  addu       $v0, $v0, $a0
/* 34D60 80044560 80100200 */  sll        $v0, $v0, 2
/* 34D64 80044564 21104400 */  addu       $v0, $v0, $a0
/* 34D68 80044568 80100200 */  sll        $v0, $v0, 2
/* 34D6C 8004456C 21186200 */  addu       $v1, $v1, $v0
/* 34D70 80044570 0800E003 */  jr         $ra
/* 34D74 80044574 500060AC */   sw        $zero, 0x50($v1)
.size FreeBillboardInstance, . - FreeBillboardInstance
