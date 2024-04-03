.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PaletteToVRAM
/* 483DC 80057BDC E0FDBD27 */  addiu      $sp, $sp, -0x220
/* 483E0 80057BE0 50108597 */  lhu        $a1, %gp_rel(ImageClutId)($gp)
/* 483E4 80057BE4 01000224 */  addiu      $v0, $zero, 0x1
/* 483E8 80057BE8 1802BFAF */  sw         $ra, 0x218($sp)
/* 483EC 80057BEC 1000A2A7 */  sh         $v0, 0x10($sp)
/* 483F0 80057BF0 0100A324 */  addiu      $v1, $a1, 0x1
/* 483F4 80057BF4 501083A7 */  sh         $v1, %gp_rel(ImageClutId)($gp)
/* 483F8 80057BF8 1200A5A7 */  sh         $a1, 0x12($sp)
/* 483FC 80057BFC 00008290 */  lbu        $v0, 0x0($a0)
/* 48400 80057C00 00000000 */  nop
/* 48404 80057C04 05004014 */  bnez       $v0, .L80057C1C
/* 48408 80057C08 08008424 */   addiu     $a0, $a0, 0x8
/* 4840C 80057C0C 0E74010C */  jal        Alloc16CLUT
/* 48410 80057C10 00000000 */   nop
/* 48414 80057C14 0A5F0108 */  j          .L80057C28
/* 48418 80057C18 FFFF4230 */   andi      $v0, $v0, 0xFFFF
.L80057C1C:
/* 4841C 80057C1C 9274010C */  jal        Alloc256CLUT
/* 48420 80057C20 00000000 */   nop
/* 48424 80057C24 FFFF4230 */  andi       $v0, $v0, 0xFFFF
.L80057C28:
/* 48428 80057C28 1802BF8F */  lw         $ra, 0x218($sp)
/* 4842C 80057C2C 00000000 */  nop
/* 48430 80057C30 0800E003 */  jr         $ra
/* 48434 80057C34 2002BD27 */   addiu     $sp, $sp, 0x220
.size PaletteToVRAM, . - PaletteToVRAM
