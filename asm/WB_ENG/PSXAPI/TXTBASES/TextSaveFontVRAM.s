.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TextSaveFontVRAM
/* 49854 80059054 6010828F */  lw         $v0, %gp_rel(gTextNumFonts)($gp)
/* 49858 80059058 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4985C 8005905C 1000B0AF */  sw         $s0, 0x10($sp)
/* 49860 80059060 21800000 */  addu       $s0, $zero, $zero
/* 49864 80059064 0C004018 */  blez       $v0, .L80059098
/* 49868 80059068 1400BFAF */   sw        $ra, 0x14($sp)
.L8005906C:
/* 4986C 8005906C 7C10828F */  lw         $v0, %gp_rel(gpTextFontVRAMIndex)($gp)
/* 49870 80059070 80181000 */  sll        $v1, $s0, 2
/* 49874 80059074 21186200 */  addu       $v1, $v1, $v0
/* 49878 80059078 00006484 */  lh         $a0, 0x0($v1)
/* 4987C 8005907C F572010C */  jal        KeepAllocVRAM
/* 49880 80059080 01001026 */   addiu     $s0, $s0, 0x1
/* 49884 80059084 6010828F */  lw         $v0, %gp_rel(gTextNumFonts)($gp)
/* 49888 80059088 00000000 */  nop
/* 4988C 8005908C 2A100202 */  slt        $v0, $s0, $v0
/* 49890 80059090 F6FF4014 */  bnez       $v0, .L8005906C
/* 49894 80059094 00000000 */   nop
.L80059098:
/* 49898 80059098 1400BF8F */  lw         $ra, 0x14($sp)
/* 4989C 8005909C 1000B08F */  lw         $s0, 0x10($sp)
/* 498A0 800590A0 0800E003 */  jr         $ra
/* 498A4 800590A4 1800BD27 */   addiu     $sp, $sp, 0x18
.size TextSaveFontVRAM, . - TextSaveFontVRAM
