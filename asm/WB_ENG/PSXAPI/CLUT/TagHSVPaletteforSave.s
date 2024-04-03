.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TagHSVPaletteforSave
/* 4ECD0 8005E4D0 5811868F */  lw         $a2, %gp_rel(NumHSVPaletteEntries)($gp)
/* 4ECD4 8005E4D4 00000000 */  nop
/* 4ECD8 8005E4D8 4000C228 */  slti       $v0, $a2, 0x40
/* 4ECDC 8005E4DC 03004014 */  bnez       $v0, .L8005E4EC
/* 4ECE0 8005E4E0 0C80033C */   lui       $v1, %hi(SavedPalettes)
/* 4ECE4 8005E4E4 0800E003 */  jr         $ra
/* 4ECE8 8005E4E8 FFFF0224 */   addiu     $v0, $zero, -0x1
.L8005E4EC:
/* 4ECEC 8005E4EC 28E56324 */  addiu      $v1, $v1, %lo(SavedPalettes)
/* 4ECF0 8005E4F0 40200600 */  sll        $a0, $a2, 1
/* 4ECF4 8005E4F4 21208600 */  addu       $a0, $a0, $a2
/* 4ECF8 8005E4F8 80200400 */  sll        $a0, $a0, 2
/* 4ECFC 8005E4FC 21186400 */  addu       $v1, $v1, $a0
/* 4ED00 8005E500 0100C424 */  addiu      $a0, $a2, 0x1
/* 4ED04 8005E504 040065AC */  sw         $a1, 0x4($v1)
/* 4ED08 8005E508 581184AF */  sw         $a0, %gp_rel(NumHSVPaletteEntries)($gp)
/* 4ED0C 8005E50C 0800E003 */  jr         $ra
/* 4ED10 8005E510 2110C000 */   addu      $v0, $a2, $zero
.size TagHSVPaletteforSave, . - TagHSVPaletteforSave
