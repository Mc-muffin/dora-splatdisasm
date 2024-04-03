.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CLAMP
/* 4A434 80059C34 FF008430 */  andi       $a0, $a0, 0xFF
/* 4A438 80059C38 FF00A530 */  andi       $a1, $a1, 0xFF
/* 4A43C 80059C3C 2B108500 */  sltu       $v0, $a0, $a1
/* 4A440 80059C40 03004010 */  beqz       $v0, .L80059C50
/* 4A444 80059C44 FF00C330 */   andi      $v1, $a2, 0xFF
/* 4A448 80059C48 0800E003 */  jr         $ra
/* 4A44C 80059C4C 2110A000 */   addu      $v0, $a1, $zero
.L80059C50:
/* 4A450 80059C50 21106000 */  addu       $v0, $v1, $zero
/* 4A454 80059C54 2B186400 */  sltu       $v1, $v1, $a0
/* 4A458 80059C58 02006014 */  bnez       $v1, .L80059C64
/* 4A45C 80059C5C 00000000 */   nop
/* 4A460 80059C60 21108000 */  addu       $v0, $a0, $zero
.L80059C64:
/* 4A464 80059C64 0800E003 */  jr         $ra
/* 4A468 80059C68 00000000 */   nop
.size CLAMP, . - CLAMP
