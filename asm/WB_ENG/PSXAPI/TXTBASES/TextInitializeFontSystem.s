.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TextInitializeFontSystem
/* 488F4 800580F4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 488F8 800580F8 1800B2AF */  sw         $s2, 0x18($sp)
/* 488FC 800580FC 21908000 */  addu       $s2, $a0, $zero
/* 48900 80058100 1000B0AF */  sw         $s0, 0x10($sp)
/* 48904 80058104 80801200 */  sll        $s0, $s2, 2
/* 48908 80058108 21200002 */  addu       $a0, $s0, $zero
/* 4890C 8005810C 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 48910 80058110 2198A000 */  addu       $s3, $a1, $zero
/* 48914 80058114 1400B1AF */  sw         $s1, 0x14($sp)
/* 48918 80058118 2000BFAF */  sw         $ra, 0x20($sp)
/* 4891C 8005811C 2B3F010C */  jal        new_malloc
/* 48920 80058120 2188C000 */   addu      $s1, $a2, $zero
/* 48924 80058124 881082AF */  sw         $v0, %gp_rel(gppTextFonts)($gp)
/* 48928 80058128 2B3F010C */  jal        new_malloc
/* 4892C 8005812C 21200002 */   addu      $a0, $s0, $zero
/* 48930 80058130 7C1082AF */  sw         $v0, %gp_rel(gpTextFontVRAMIndex)($gp)
/* 48934 80058134 2B3F010C */  jal        new_malloc
/* 48938 80058138 21200002 */   addu      $a0, $s0, $zero
/* 4893C 8005813C 801082AF */  sw         $v0, %gp_rel(gpTextFontCLUTIndex)($gp)
/* 48940 80058140 2B3F010C */  jal        new_malloc
/* 48944 80058144 21200002 */   addu      $a0, $s0, $zero
/* 48948 80058148 841082AF */  sw         $v0, %gp_rel(gpTextFontCLUTRow)($gp)
/* 4894C 8005814C 2B3F010C */  jal        new_malloc
/* 48950 80058150 00211100 */   sll       $a0, $s1, 4
/* 48954 80058154 80201300 */  sll        $a0, $s3, 2
/* 48958 80058158 21209300 */  addu       $a0, $a0, $s3
/* 4895C 8005815C 8C1082AF */  sw         $v0, %gp_rel(gpTextFontTPage)($gp)
/* 48960 80058160 2B3F010C */  jal        new_malloc
/* 48964 80058164 C0200400 */   sll       $a0, $a0, 3
/* 48968 80058168 80801100 */  sll        $s0, $s1, 2
/* 4896C 8005816C 781082AF */  sw         $v0, %gp_rel(gpTextLetterSprites)($gp)
/* 48970 80058170 2B3F010C */  jal        new_malloc
/* 48974 80058174 21200002 */   addu      $a0, $s0, $zero
/* 48978 80058178 901082AF */  sw         $v0, %gp_rel(gpTextStringLetterIndex)($gp)
/* 4897C 8005817C 2B3F010C */  jal        new_malloc
/* 48980 80058180 21200002 */   addu      $a0, $s0, $zero
/* 48984 80058184 0980043C */  lui        $a0, %hi(gTextCurrentTextColor)
/* 48988 80058188 8C828324 */  addiu      $v1, $a0, %lo(gTextCurrentTextColor)
/* 4898C 8005818C 941082AF */  sw         $v0, %gp_rel(gpTextStringOTZ)($gp)
/* 48990 80058190 80000224 */  addiu      $v0, $zero, 0x80
/* 48994 80058194 641092AF */  sw         $s2, %gp_rel(gTextMaxFonts)($gp)
/* 48998 80058198 681093AF */  sw         $s3, %gp_rel(gTextMaxLetters)($gp)
/* 4899C 8005819C 701091AF */  sw         $s1, %gp_rel(gTextMaxStrings)($gp)
/* 489A0 800581A0 601080AF */  sw         $zero, %gp_rel(gTextNumFonts)($gp)
/* 489A4 800581A4 741080AF */  sw         $zero, %gp_rel(gTextCurrentLetter)($gp)
/* 489A8 800581A8 080062AC */  sw         $v0, 0x8($v1)
/* 489AC 800581AC 040062AC */  sw         $v0, 0x4($v1)
/* 489B0 800581B0 FFFF0324 */  addiu      $v1, $zero, -0x1
/* 489B4 800581B4 8C8282AC */  sw         $v0, %lo(gTextCurrentTextColor)($a0)
/* 489B8 800581B8 5C1083AF */  sw         $v1, %gp_rel(gTextCurrentFontIndex)($gp)
/* 489BC 800581BC 0D00601A */  blez       $s3, .L800581F4
/* 489C0 800581C0 14001224 */   addiu     $s2, $zero, 0x14
/* 489C4 800581C4 21880000 */  addu       $s1, $zero, $zero
/* 489C8 800581C8 21806002 */  addu       $s0, $s3, $zero
.L800581CC:
/* 489CC 800581CC 7810848F */  lw         $a0, %gp_rel(gpTextLetterSprites)($gp)
/* 489D0 800581D0 FFFF1026 */  addiu      $s0, $s0, -0x1
/* 489D4 800581D4 13E7010C */  jal        SetSprt
/* 489D8 800581D8 21209100 */   addu      $a0, $a0, $s1
/* 489DC 800581DC 7810848F */  lw         $a0, %gp_rel(gpTextLetterSprites)($gp)
/* 489E0 800581E0 28003126 */  addiu      $s1, $s1, 0x28
/* 489E4 800581E4 13E7010C */  jal        SetSprt
/* 489E8 800581E8 21209200 */   addu      $a0, $a0, $s2
/* 489EC 800581EC F7FF0016 */  bnez       $s0, .L800581CC
/* 489F0 800581F0 28005226 */   addiu     $s2, $s2, 0x28
.L800581F4:
/* 489F4 800581F4 2000BF8F */  lw         $ra, 0x20($sp)
/* 489F8 800581F8 1C00B38F */  lw         $s3, 0x1C($sp)
/* 489FC 800581FC 1800B28F */  lw         $s2, 0x18($sp)
/* 48A00 80058200 1400B18F */  lw         $s1, 0x14($sp)
/* 48A04 80058204 1000B08F */  lw         $s0, 0x10($sp)
/* 48A08 80058208 0800E003 */  jr         $ra
/* 48A0C 8005820C 2800BD27 */   addiu     $sp, $sp, 0x28
.size TextInitializeFontSystem, . - TextInitializeFontSystem
