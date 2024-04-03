.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetFadeIn
/* 23D40 80033540 80000224 */  addiu      $v0, $zero, 0x80
/* 23D44 80033544 01000324 */  addiu      $v1, $zero, 0x1
/* 23D48 80033548 900882AF */  sw         $v0, %gp_rel(FaderTimer)($gp)
/* 23D4C 8003354C 8C0883AF */  sw         $v1, %gp_rel(FaderFlag)($gp)
/* 23D50 80033550 0800E003 */  jr         $ra
/* 23D54 80033554 00000000 */   nop
.size SetFadeIn, . - SetFadeIn
