.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TextInitFonts
/* 49820 80059020 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 49824 80059024 01000424 */  addiu      $a0, $zero, 0x1
/* 49828 80059028 F4010524 */  addiu      $a1, $zero, 0x1F4
/* 4982C 8005902C 1000BFAF */  sw         $ra, 0x10($sp)
/* 49830 80059030 3D60010C */  jal        TextInitializeFontSystem
/* 49834 80059034 2C010624 */   addiu     $a2, $zero, 0x12C
/* 49838 80059038 0180043C */  lui        $a0, %hi(D_800130A8)
/* 4983C 8005903C F05F010C */  jal        TextLoadFont
/* 49840 80059040 A8308424 */   addiu     $a0, $a0, %lo(D_800130A8)
/* 49844 80059044 1000BF8F */  lw         $ra, 0x10($sp)
/* 49848 80059048 00000000 */  nop
/* 4984C 8005904C 0800E003 */  jr         $ra
/* 49850 80059050 1800BD27 */   addiu     $sp, $sp, 0x18
.size TextInitFonts, . - TextInitFonts
