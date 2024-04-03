.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ChangeTaskToWait
/* 23DE0 800335E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 23DE4 800335E4 03000224 */  addiu      $v0, $zero, 0x3
/* 23DE8 800335E8 1000BFAF */  sw         $ra, 0x10($sp)
/* 23DEC 800335EC CC1382AF */  sw         $v0, %gp_rel(gInstructionalScreenState)($gp)
/* 23DF0 800335F0 B13A010C */  jal        PolyPoolAddr
/* 23DF4 800335F4 00000000 */   nop
/* 23DF8 800335F8 21200000 */  addu       $a0, $zero, $zero
/* 23DFC 800335FC 21284000 */  addu       $a1, $v0, $zero
/* 23E00 80033600 A06E010C */  jal        LoadGraphicIntoFrameBuffer
/* 23E04 80033604 21300000 */   addu      $a2, $zero, $zero
/* 23E08 80033608 1000BF8F */  lw         $ra, 0x10($sp)
/* 23E0C 8003360C 00000000 */  nop
/* 23E10 80033610 0800E003 */  jr         $ra
/* 23E14 80033614 1800BD27 */   addiu     $sp, $sp, 0x18
.size ChangeTaskToWait, . - ChangeTaskToWait
