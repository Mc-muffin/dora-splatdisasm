.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel RestoreFromPauseMenu
/* 238E8 800330E8 0980043C */  lui        $a0, %hi(MusicVolume)
/* 238EC 800330EC 9C49848C */  lw         $a0, %lo(MusicVolume)($a0)
/* 238F0 800330F0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 238F4 800330F4 1000BFAF */  sw         $ra, 0x10($sp)
/* 238F8 800330F8 1F7B010C */  jal        SetXA_Volume
/* 238FC 800330FC 00000000 */   nop
/* 23900 80033100 2C7B010C */  jal        PauseXA
/* 23904 80033104 21200000 */   addu      $a0, $zero, $zero
/* 23908 80033108 1000BF8F */  lw         $ra, 0x10($sp)
/* 2390C 8003310C 00000000 */  nop
/* 23910 80033110 0800E003 */  jr         $ra
/* 23914 80033114 1800BD27 */   addiu     $sp, $sp, 0x18
.size RestoreFromPauseMenu, . - RestoreFromPauseMenu
