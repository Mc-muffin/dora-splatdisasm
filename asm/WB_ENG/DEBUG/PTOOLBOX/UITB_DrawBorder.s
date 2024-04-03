.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel UITB_DrawBorder
/* 42E1C 8005261C 0800E003 */  jr         $ra
/* 42E20 80052620 00000000 */   nop
.size UITB_DrawBorder, . - UITB_DrawBorder
