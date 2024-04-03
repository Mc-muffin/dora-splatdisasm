.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ActivateCrateAnim
/* 120EC 800218EC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 120F0 800218F0 21188000 */  addu       $v1, $a0, $zero
/* 120F4 800218F4 1000BFAF */  sw         $ra, 0x10($sp)
/* 120F8 800218F8 2400628C */  lw         $v0, 0x24($v1)
/* 120FC 800218FC 00000000 */  nop
/* 12100 80021900 04004014 */  bnez       $v0, .L80021914
/* 12104 80021904 01000224 */   addiu     $v0, $zero, 0x1
/* 12108 80021908 0000648C */  lw         $a0, 0x0($v1)
/* 1210C 8002190C A38A010C */  jal        ToggleCellAnimation
/* 12110 80021910 240062AC */   sw        $v0, 0x24($v1)
.L80021914:
/* 12114 80021914 1000BF8F */  lw         $ra, 0x10($sp)
/* 12118 80021918 00000000 */  nop
/* 1211C 8002191C 0800E003 */  jr         $ra
/* 12120 80021920 1800BD27 */   addiu     $sp, $sp, 0x18
.size ActivateCrateAnim, . - ActivateCrateAnim
