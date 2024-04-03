.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TextSetCurrentFont
/* 49540 80058D40 5C1084AF */  sw         $a0, %gp_rel(gTextCurrentFontIndex)($gp)
/* 49544 80058D44 0800E003 */  jr         $ra
/* 49548 80058D48 01000224 */   addiu     $v0, $zero, 0x1
.size TextSetCurrentFont, . - TextSetCurrentFont
