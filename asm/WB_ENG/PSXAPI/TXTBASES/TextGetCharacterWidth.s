.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TextGetCharacterWidth
/* 49654 80058E54 FF008430 */  andi       $a0, $a0, 0xFF
/* 49658 80058E58 5C10828F */  lw         $v0, %gp_rel(gTextCurrentFontIndex)($gp)
/* 4965C 80058E5C 8810858F */  lw         $a1, %gp_rel(gppTextFonts)($gp)
/* 49660 80058E60 80100200 */  sll        $v0, $v0, 2
/* 49664 80058E64 21104500 */  addu       $v0, $v0, $a1
/* 49668 80058E68 0000438C */  lw         $v1, 0x0($v0)
/* 4966C 80058E6C 80200400 */  sll        $a0, $a0, 2
/* 49670 80058E70 21186400 */  addu       $v1, $v1, $a0
/* 49674 80058E74 20006290 */  lbu        $v0, 0x20($v1)
/* 49678 80058E78 0800E003 */  jr         $ra
/* 4967C 80058E7C 00000000 */   nop
.size TextGetCharacterWidth, . - TextGetCharacterWidth
