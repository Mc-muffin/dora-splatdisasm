.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ResetBoxes
/* 42E54 80052654 A40F80AF */  sw         $zero, %gp_rel(BoxOffset)($gp)
/* 42E58 80052658 A80F80AF */  sw         $zero, %gp_rel(BorderOffset)($gp)
/* 42E5C 8005265C 0800E003 */  jr         $ra
/* 42E60 80052660 00000000 */   nop
.size ResetBoxes, . - ResetBoxes
