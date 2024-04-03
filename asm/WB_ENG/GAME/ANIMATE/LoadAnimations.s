.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LoadAnimations
/* 29148 80038948 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2914C 8003894C 1000BFAF */  sw         $ra, 0x10($sp)
/* 29150 80038950 A735010C */  jal        LoadMemFile
/* 29154 80038954 00000000 */   nop
/* 29158 80038958 1000BF8F */  lw         $ra, 0x10($sp)
/* 2915C 8003895C 00000000 */  nop
/* 29160 80038960 0800E003 */  jr         $ra
/* 29164 80038964 1800BD27 */   addiu     $sp, $sp, 0x18
.size LoadAnimations, . - LoadAnimations
