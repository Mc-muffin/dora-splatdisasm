.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AllocateCameraTriggers
/* 312F8 80040AF8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 312FC 80040AFC 1000BFAF */  sw         $ra, 0x10($sp)
/* 31300 80040B00 340C80AF */  sw         $zero, %gp_rel(NumCameraTriggers)($gp)
/* 31304 80040B04 04008010 */  beqz       $a0, .L80040B18
/* 31308 80040B08 00000000 */   nop
/* 3130C 80040B0C 2B3F010C */  jal        new_malloc
/* 31310 80040B10 C0200400 */   sll       $a0, $a0, 3
/* 31314 80040B14 CC1482AF */  sw         $v0, %gp_rel(CameraTriggersList)($gp)
.L80040B18:
/* 31318 80040B18 1000BF8F */  lw         $ra, 0x10($sp)
/* 3131C 80040B1C 00000000 */  nop
/* 31320 80040B20 0800E003 */  jr         $ra
/* 31324 80040B24 1800BD27 */   addiu     $sp, $sp, 0x18
.size AllocateCameraTriggers, . - AllocateCameraTriggers
