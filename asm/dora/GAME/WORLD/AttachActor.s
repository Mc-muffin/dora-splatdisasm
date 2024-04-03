.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AttachActor
/* 14BF4 800243F4 21000224 */  addiu      $v0, $zero, 0x21
/* 14BF8 800243F8 03008214 */  bne        $a0, $v0, .L80024408
/* 14BFC 800243FC 22000224 */   addiu     $v0, $zero, 0x22
/* 14C00 80024400 0800E003 */  jr         $ra
/* 14C04 80024404 01000224 */   addiu     $v0, $zero, 0x1
.L80024408:
/* 14C08 80024408 05008210 */  beq        $a0, $v0, .L80024420
/* 14C0C 8002440C 23000324 */   addiu     $v1, $zero, 0x23
/* 14C10 80024410 04008310 */  beq        $a0, $v1, .L80024424
/* 14C14 80024414 03000224 */   addiu     $v0, $zero, 0x3
/* 14C18 80024418 0800E003 */  jr         $ra
/* 14C1C 8002441C 21100000 */   addu      $v0, $zero, $zero
.L80024420:
/* 14C20 80024420 02000224 */  addiu      $v0, $zero, 0x2
.L80024424:
/* 14C24 80024424 0800E003 */  jr         $ra
/* 14C28 80024428 00000000 */   nop
.size AttachActor, . - AttachActor
