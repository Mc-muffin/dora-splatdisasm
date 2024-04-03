.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TextGetLineSpacing
/* 496C8 80058EC8 5C10828F */  lw         $v0, %gp_rel(gTextCurrentFontIndex)($gp)
/* 496CC 80058ECC 8810848F */  lw         $a0, %gp_rel(gppTextFonts)($gp)
/* 496D0 80058ED0 80100200 */  sll        $v0, $v0, 2
/* 496D4 80058ED4 21104400 */  addu       $v0, $v0, $a0
/* 496D8 80058ED8 0000438C */  lw         $v1, 0x0($v0)
/* 496DC 80058EDC 00000000 */  nop
/* 496E0 80058EE0 1C00628C */  lw         $v0, 0x1C($v1)
/* 496E4 80058EE4 0800E003 */  jr         $ra
/* 496E8 80058EE8 00000000 */   nop
.size TextGetLineSpacing, . - TextGetLineSpacing
