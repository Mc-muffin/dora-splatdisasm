.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel UITB_GetBorderStyle
/* 42E30 80052630 AC0F828F */  lw         $v0, %gp_rel(gUITB_BorderStyle)($gp)
/* 42E34 80052634 0800E003 */  jr         $ra
/* 42E38 80052638 00000000 */   nop
.size UITB_GetBorderStyle, . - UITB_GetBorderStyle
