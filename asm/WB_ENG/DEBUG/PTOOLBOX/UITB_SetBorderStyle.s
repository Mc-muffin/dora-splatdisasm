.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel UITB_SetBorderStyle
/* 42E24 80052624 AC0F84AF */  sw         $a0, %gp_rel(gUITB_BorderStyle)($gp)
/* 42E28 80052628 0800E003 */  jr         $ra
/* 42E2C 8005262C 00000000 */   nop
.size UITB_SetBorderStyle, . - UITB_SetBorderStyle
