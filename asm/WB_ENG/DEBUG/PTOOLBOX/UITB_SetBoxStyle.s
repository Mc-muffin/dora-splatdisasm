.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel UITB_SetBoxStyle
/* 42E3C 8005263C B00F84AF */  sw         $a0, %gp_rel(gUITB_BoxStyle)($gp)
/* 42E40 80052640 0800E003 */  jr         $ra
/* 42E44 80052644 00000000 */   nop
.size UITB_SetBoxStyle, . - UITB_SetBoxStyle
