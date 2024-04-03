.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ScreenOff
/* 4BB30 8005B330 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4BB34 8005B334 1000BFAF */  sw         $ra, 0x10($sp)
/* 4BB38 8005B338 10DB010C */  jal        SetDispMask
/* 4BB3C 8005B33C 21200000 */   addu      $a0, $zero, $zero
/* 4BB40 8005B340 1000BF8F */  lw         $ra, 0x10($sp)
/* 4BB44 8005B344 00000000 */  nop
/* 4BB48 8005B348 0800E003 */  jr         $ra
/* 4BB4C 8005B34C 1800BD27 */   addiu     $sp, $sp, 0x18
.size ScreenOff, . - ScreenOff
