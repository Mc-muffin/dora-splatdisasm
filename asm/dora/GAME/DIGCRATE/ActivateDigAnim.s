.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ActivateDigAnim
/* 120C8 800218C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 120CC 800218CC 1000BFAF */  sw         $ra, 0x10($sp)
/* 120D0 800218D0 0000848C */  lw         $a0, 0x0($a0)
/* 120D4 800218D4 A38A010C */  jal        ToggleCellAnimation
/* 120D8 800218D8 00000000 */   nop
/* 120DC 800218DC 1000BF8F */  lw         $ra, 0x10($sp)
/* 120E0 800218E0 00000000 */  nop
/* 120E4 800218E4 0800E003 */  jr         $ra
/* 120E8 800218E8 1800BD27 */   addiu     $sp, $sp, 0x18
.size ActivateDigAnim, . - ActivateDigAnim
