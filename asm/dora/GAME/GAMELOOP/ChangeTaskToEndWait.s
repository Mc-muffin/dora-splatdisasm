.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ChangeTaskToEndWait
/* 23E58 80033658 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 23E5C 8003365C 06000224 */  addiu      $v0, $zero, 0x6
/* 23E60 80033660 1000BFAF */  sw         $ra, 0x10($sp)
/* 23E64 80033664 CC1382AF */  sw         $v0, %gp_rel(gInstructionalScreenState)($gp)
/* 23E68 80033668 B13A010C */  jal        PolyPoolAddr
/* 23E6C 8003366C 00000000 */   nop
/* 23E70 80033670 21200000 */  addu       $a0, $zero, $zero
/* 23E74 80033674 21284000 */  addu       $a1, $v0, $zero
/* 23E78 80033678 A06E010C */  jal        LoadGraphicIntoFrameBuffer
/* 23E7C 8003367C 21300000 */   addu      $a2, $zero, $zero
/* 23E80 80033680 1000BF8F */  lw         $ra, 0x10($sp)
/* 23E84 80033684 00000000 */  nop
/* 23E88 80033688 0800E003 */  jr         $ra
/* 23E8C 8003368C 1800BD27 */   addiu     $sp, $sp, 0x18
.size ChangeTaskToEndWait, . - ChangeTaskToEndWait
