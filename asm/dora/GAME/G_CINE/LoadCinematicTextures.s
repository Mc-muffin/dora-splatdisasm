.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LoadCinematicTextures
/* 23FCC 800337CC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 23FD0 800337D0 0180043C */  lui        $a0, %hi(D_80012554)
/* 23FD4 800337D4 0A80053C */  lui        $a1, %hi(BubbleSprite)
/* 23FD8 800337D8 54258424 */  addiu      $a0, $a0, %lo(D_80012554)
/* 23FDC 800337DC 48BDA524 */  addiu      $a1, $a1, %lo(BubbleSprite)
/* 23FE0 800337E0 01000624 */  addiu      $a2, $zero, 0x1
/* 23FE4 800337E4 1000BFAF */  sw         $ra, 0x10($sp)
/* 23FE8 800337E8 1503010C */  jal        LoadCinematicTexture
/* 23FEC 800337EC 04000724 */   addiu     $a3, $zero, 0x4
/* 23FF0 800337F0 1000BF8F */  lw         $ra, 0x10($sp)
/* 23FF4 800337F4 00000000 */  nop
/* 23FF8 800337F8 0800E003 */  jr         $ra
/* 23FFC 800337FC 1800BD27 */   addiu     $sp, $sp, 0x18
.size LoadCinematicTextures, . - LoadCinematicTextures
