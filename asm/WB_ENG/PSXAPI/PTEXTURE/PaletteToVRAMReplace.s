.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PaletteToVRAMReplace
/* 48628 80057E28 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4862C 80057E2C 1000BFAF */  sw         $ra, 0x10($sp)
/* 48630 80057E30 9978010C */  jal        Replace256CLUT
/* 48634 80057E34 08008424 */   addiu     $a0, $a0, 0x8
/* 48638 80057E38 00140200 */  sll        $v0, $v0, 16
/* 4863C 80057E3C 1000BF8F */  lw         $ra, 0x10($sp)
/* 48640 80057E40 03140200 */  sra        $v0, $v0, 16
/* 48644 80057E44 0800E003 */  jr         $ra
/* 48648 80057E48 1800BD27 */   addiu     $sp, $sp, 0x18
.size PaletteToVRAMReplace, . - PaletteToVRAMReplace
