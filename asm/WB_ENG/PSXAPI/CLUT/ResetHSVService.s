.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ResetHSVService
/* 4EC78 8005E478 5811838F */  lw         $v1, %gp_rel(NumHSVPaletteEntries)($gp)
/* 4EC7C 8005E47C 00000000 */  nop
/* 4EC80 8005E480 06006018 */  blez       $v1, .L8005E49C
/* 4EC84 8005E484 0C80023C */   lui       $v0, %hi(SavedPalettes)
/* 4EC88 8005E488 28E54224 */  addiu      $v0, $v0, %lo(SavedPalettes)
.L8005E48C:
/* 4EC8C 8005E48C 000040AC */  sw         $zero, 0x0($v0)
/* 4EC90 8005E490 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 4EC94 8005E494 FDFF6014 */  bnez       $v1, .L8005E48C
/* 4EC98 8005E498 0C004224 */   addiu     $v0, $v0, 0xC
.L8005E49C:
/* 4EC9C 8005E49C 0800E003 */  jr         $ra
/* 4ECA0 8005E4A0 00000000 */   nop
.size ResetHSVService, . - ResetHSVService
