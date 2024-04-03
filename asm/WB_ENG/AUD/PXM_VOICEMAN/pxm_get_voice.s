.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_get_voice
/* 45DA0 800555A0 21200000 */  addu       $a0, $zero, $zero
/* 45DA4 800555A4 21280000 */  addu       $a1, $zero, $zero
/* 45DA8 800555A8 0B80023C */  lui        $v0, %hi(pxm_voicestat)
/* 45DAC 800555AC A8824324 */  addiu      $v1, $v0, %lo(pxm_voicestat)
.L800555B0:
/* 45DB0 800555B0 2000628C */  lw         $v0, 0x20($v1)
/* 45DB4 800555B4 00000000 */  nop
/* 45DB8 800555B8 02004014 */  bnez       $v0, .L800555C4
/* 45DBC 800555BC 00000000 */   nop
/* 45DC0 800555C0 21286000 */  addu       $a1, $v1, $zero
.L800555C4:
/* 45DC4 800555C4 01008424 */  addiu      $a0, $a0, 0x1
/* 45DC8 800555C8 1800822C */  sltiu      $v0, $a0, 0x18
/* 45DCC 800555CC 03004010 */  beqz       $v0, .L800555DC
/* 45DD0 800555D0 28006324 */   addiu     $v1, $v1, 0x28
/* 45DD4 800555D4 F6FFA010 */  beqz       $a1, .L800555B0
/* 45DD8 800555D8 00000000 */   nop
.L800555DC:
/* 45DDC 800555DC 0800E003 */  jr         $ra
/* 45DE0 800555E0 2110A000 */   addu      $v0, $a1, $zero
.size pxm_get_voice, . - pxm_get_voice
