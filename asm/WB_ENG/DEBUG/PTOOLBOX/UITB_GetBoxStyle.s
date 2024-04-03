.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel UITB_GetBoxStyle
/* 42E48 80052648 B00F828F */  lw         $v0, %gp_rel(gUITB_BoxStyle)($gp)
/* 42E4C 8005264C 0800E003 */  jr         $ra
/* 42E50 80052650 00000000 */   nop
.size UITB_GetBoxStyle, . - UITB_GetBoxStyle
