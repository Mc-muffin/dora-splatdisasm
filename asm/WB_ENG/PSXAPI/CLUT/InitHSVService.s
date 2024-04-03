.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitHSVService
/* 4ECA4 8005E4A4 0C80023C */  lui        $v0, %hi(SavedPalettes)
/* 4ECA8 8005E4A8 28E54224 */  addiu      $v0, $v0, %lo(SavedPalettes)
/* 4ECAC 8005E4AC 3F000324 */  addiu      $v1, $zero, 0x3F
.L8005E4B0:
/* 4ECB0 8005E4B0 000040AC */  sw         $zero, 0x0($v0)
/* 4ECB4 8005E4B4 080040AC */  sw         $zero, 0x8($v0)
/* 4ECB8 8005E4B8 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 4ECBC 8005E4BC FCFF6104 */  bgez       $v1, .L8005E4B0
/* 4ECC0 8005E4C0 0C004224 */   addiu     $v0, $v0, 0xC
/* 4ECC4 8005E4C4 581180AF */  sw         $zero, %gp_rel(NumHSVPaletteEntries)($gp)
/* 4ECC8 8005E4C8 0800E003 */  jr         $ra
/* 4ECCC 8005E4CC 00000000 */   nop
.size InitHSVService, . - InitHSVService
