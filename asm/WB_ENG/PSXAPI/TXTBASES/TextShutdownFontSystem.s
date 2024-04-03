.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TextShutdownFontSystem
/* 496EC 80058EEC 6010828F */  lw         $v0, %gp_rel(gTextNumFonts)($gp)
/* 496F0 80058EF0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 496F4 80058EF4 1000B0AF */  sw         $s0, 0x10($sp)
/* 496F8 80058EF8 21800000 */  addu       $s0, $zero, $zero
/* 496FC 80058EFC 0C004018 */  blez       $v0, .L80058F30
/* 49700 80058F00 1400BFAF */   sw        $ra, 0x14($sp)
.L80058F04:
/* 49704 80058F04 8810828F */  lw         $v0, %gp_rel(gppTextFonts)($gp)
/* 49708 80058F08 80181000 */  sll        $v1, $s0, 2
/* 4970C 80058F0C 21186200 */  addu       $v1, $v1, $v0
/* 49710 80058F10 0000648C */  lw         $a0, 0x0($v1)
/* 49714 80058F14 1C40010C */  jal        new_free
/* 49718 80058F18 01001026 */   addiu     $s0, $s0, 0x1
/* 4971C 80058F1C 6010838F */  lw         $v1, %gp_rel(gTextNumFonts)($gp)
/* 49720 80058F20 00000000 */  nop
/* 49724 80058F24 2A180302 */  slt        $v1, $s0, $v1
/* 49728 80058F28 F6FF6014 */  bnez       $v1, .L80058F04
/* 4972C 80058F2C 00000000 */   nop
.L80058F30:
/* 49730 80058F30 6410828F */  lw         $v0, %gp_rel(gTextMaxFonts)($gp)
/* 49734 80058F34 00000000 */  nop
/* 49738 80058F38 10004018 */  blez       $v0, .L80058F7C
/* 4973C 80058F3C 00000000 */   nop
/* 49740 80058F40 8810848F */  lw         $a0, %gp_rel(gppTextFonts)($gp)
/* 49744 80058F44 1C40010C */  jal        new_free
/* 49748 80058F48 00000000 */   nop
/* 4974C 80058F4C 7C10848F */  lw         $a0, %gp_rel(gpTextFontVRAMIndex)($gp)
/* 49750 80058F50 1C40010C */  jal        new_free
/* 49754 80058F54 00000000 */   nop
/* 49758 80058F58 8010848F */  lw         $a0, %gp_rel(gpTextFontCLUTIndex)($gp)
/* 4975C 80058F5C 1C40010C */  jal        new_free
/* 49760 80058F60 00000000 */   nop
/* 49764 80058F64 8410848F */  lw         $a0, %gp_rel(gpTextFontCLUTRow)($gp)
/* 49768 80058F68 1C40010C */  jal        new_free
/* 4976C 80058F6C 00000000 */   nop
/* 49770 80058F70 8C10848F */  lw         $a0, %gp_rel(gpTextFontTPage)($gp)
/* 49774 80058F74 1C40010C */  jal        new_free
/* 49778 80058F78 00000000 */   nop
.L80058F7C:
/* 4977C 80058F7C 6810828F */  lw         $v0, %gp_rel(gTextMaxLetters)($gp)
/* 49780 80058F80 00000000 */  nop
/* 49784 80058F84 04004018 */  blez       $v0, .L80058F98
/* 49788 80058F88 00000000 */   nop
/* 4978C 80058F8C 7810848F */  lw         $a0, %gp_rel(gpTextLetterSprites)($gp)
/* 49790 80058F90 1C40010C */  jal        new_free
/* 49794 80058F94 00000000 */   nop
.L80058F98:
/* 49798 80058F98 7010828F */  lw         $v0, %gp_rel(gTextMaxStrings)($gp)
/* 4979C 80058F9C 00000000 */  nop
/* 497A0 80058FA0 0A004018 */  blez       $v0, .L80058FCC
/* 497A4 80058FA4 00000000 */   nop
/* 497A8 80058FA8 8C10848F */  lw         $a0, %gp_rel(gpTextFontTPage)($gp)
/* 497AC 80058FAC 1C40010C */  jal        new_free
/* 497B0 80058FB0 00000000 */   nop
/* 497B4 80058FB4 9010848F */  lw         $a0, %gp_rel(gpTextStringLetterIndex)($gp)
/* 497B8 80058FB8 1C40010C */  jal        new_free
/* 497BC 80058FBC 00000000 */   nop
/* 497C0 80058FC0 9410848F */  lw         $a0, %gp_rel(gpTextStringOTZ)($gp)
/* 497C4 80058FC4 1C40010C */  jal        new_free
/* 497C8 80058FC8 00000000 */   nop
.L80058FCC:
/* 497CC 80058FCC 1400BF8F */  lw         $ra, 0x14($sp)
/* 497D0 80058FD0 1000B08F */  lw         $s0, 0x10($sp)
/* 497D4 80058FD4 641080AF */  sw         $zero, %gp_rel(gTextMaxFonts)($gp)
/* 497D8 80058FD8 601080AF */  sw         $zero, %gp_rel(gTextNumFonts)($gp)
/* 497DC 80058FDC 701080AF */  sw         $zero, %gp_rel(gTextMaxStrings)($gp)
/* 497E0 80058FE0 6C1080AF */  sw         $zero, %gp_rel(gTextNumStrings)($gp)
/* 497E4 80058FE4 881080AF */  sw         $zero, %gp_rel(gppTextFonts)($gp)
/* 497E8 80058FE8 7C1080AF */  sw         $zero, %gp_rel(gpTextFontVRAMIndex)($gp)
/* 497EC 80058FEC 801080AF */  sw         $zero, %gp_rel(gpTextFontCLUTIndex)($gp)
/* 497F0 80058FF0 841080AF */  sw         $zero, %gp_rel(gpTextFontCLUTRow)($gp)
/* 497F4 80058FF4 8C1080AF */  sw         $zero, %gp_rel(gpTextFontTPage)($gp)
/* 497F8 80058FF8 781080AF */  sw         $zero, %gp_rel(gpTextLetterSprites)($gp)
/* 497FC 80058FFC 0800E003 */  jr         $ra
/* 49800 80059000 1800BD27 */   addiu     $sp, $sp, 0x18
.size TextShutdownFontSystem, . - TextShutdownFontSystem
