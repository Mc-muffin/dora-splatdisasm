.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TextGetLetterSpacing
/* 496A4 80058EA4 5C10828F */  lw         $v0, %gp_rel(gTextCurrentFontIndex)($gp)
/* 496A8 80058EA8 8810848F */  lw         $a0, %gp_rel(gppTextFonts)($gp)
/* 496AC 80058EAC 80100200 */  sll        $v0, $v0, 2
/* 496B0 80058EB0 21104400 */  addu       $v0, $v0, $a0
/* 496B4 80058EB4 0000438C */  lw         $v1, 0x0($v0)
/* 496B8 80058EB8 00000000 */  nop
/* 496BC 80058EBC 1800628C */  lw         $v0, 0x18($v1)
/* 496C0 80058EC0 0800E003 */  jr         $ra
/* 496C4 80058EC4 00000000 */   nop
.size TextGetLetterSpacing, . - TextGetLetterSpacing
