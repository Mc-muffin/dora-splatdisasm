.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ScreenOn
/* 4BB10 8005B310 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4BB14 8005B314 1000BFAF */  sw         $ra, 0x10($sp)
/* 4BB18 8005B318 10DB010C */  jal        SetDispMask
/* 4BB1C 8005B31C 01000424 */   addiu     $a0, $zero, 0x1
/* 4BB20 8005B320 1000BF8F */  lw         $ra, 0x10($sp)
/* 4BB24 8005B324 00000000 */  nop
/* 4BB28 8005B328 0800E003 */  jr         $ra
/* 4BB2C 8005B32C 1800BD27 */   addiu     $sp, $sp, 0x18
.size ScreenOn, . - ScreenOn
