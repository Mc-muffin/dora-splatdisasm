.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetFadeOut
/* 23D58 80033558 02000224 */  addiu      $v0, $zero, 0x2
/* 23D5C 8003355C 900880AF */  sw         $zero, %gp_rel(FaderTimer)($gp)
/* 23D60 80033560 8C0882AF */  sw         $v0, %gp_rel(FaderFlag)($gp)
/* 23D64 80033564 0800E003 */  jr         $ra
/* 23D68 80033568 00000000 */   nop
.size SetFadeOut, . - SetFadeOut
