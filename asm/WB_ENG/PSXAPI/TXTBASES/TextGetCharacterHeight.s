.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TextGetCharacterHeight
/* 49680 80058E80 5C10828F */  lw         $v0, %gp_rel(gTextCurrentFontIndex)($gp)
/* 49684 80058E84 8810848F */  lw         $a0, %gp_rel(gppTextFonts)($gp)
/* 49688 80058E88 80100200 */  sll        $v0, $v0, 2
/* 4968C 80058E8C 21104400 */  addu       $v0, $v0, $a0
/* 49690 80058E90 0000438C */  lw         $v1, 0x0($v0)
/* 49694 80058E94 00000000 */  nop
/* 49698 80058E98 0000628C */  lw         $v0, 0x0($v1)
/* 4969C 80058E9C 0800E003 */  jr         $ra
/* 496A0 80058EA0 00000000 */   nop
.size TextGetCharacterHeight, . - TextGetCharacterHeight
