.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel WaterWheelInit
/* 37724 80046F24 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 37728 80046F28 1000BFAF */  sw         $ra, 0x10($sp)
/* 3772C 80046F2C DA25010C */  jal        GenericActorInit
/* 37730 80046F30 00000000 */   nop
/* 37734 80046F34 1000BF8F */  lw         $ra, 0x10($sp)
/* 37738 80046F38 00000000 */  nop
/* 3773C 80046F3C 0800E003 */  jr         $ra
/* 37740 80046F40 1800BD27 */   addiu     $sp, $sp, 0x18
.size WaterWheelInit, . - WaterWheelInit
