.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_resetctrs
/* 42F68 80052768 21200000 */  addu       $a0, $zero, $zero
/* 42F6C 8005276C FF000624 */  addiu      $a2, $zero, 0xFF
/* 42F70 80052770 0A80023C */  lui        $v0, %hi(pxm_chanstat)
/* 42F74 80052774 E87F4224 */  addiu      $v0, $v0, %lo(pxm_chanstat)
/* 42F78 80052778 04004524 */  addiu      $a1, $v0, 0x4
/* 42F7C 8005277C 21184000 */  addu       $v1, $v0, $zero
.L80052780:
/* 42F80 80052780 100066A0 */  sb         $a2, 0x10($v1)
/* 42F84 80052784 120066A0 */  sb         $a2, 0x12($v1)
/* 42F88 80052788 0000A0AC */  sw         $zero, 0x0($a1)
/* 42F8C 8005278C 1C00A524 */  addiu      $a1, $a1, 0x1C
/* 42F90 80052790 130060A0 */  sb         $zero, 0x13($v1)
/* 42F94 80052794 01008424 */  addiu      $a0, $a0, 0x1
/* 42F98 80052798 1800822C */  sltiu      $v0, $a0, 0x18
/* 42F9C 8005279C F8FF4014 */  bnez       $v0, .L80052780
/* 42FA0 800527A0 1C006324 */   addiu     $v1, $v1, 0x1C
/* 42FA4 800527A4 21200000 */  addu       $a0, $zero, $zero
/* 42FA8 800527A8 0A80023C */  lui        $v0, %hi(pxm_chanstat)
/* 42FAC 800527AC E87F4224 */  addiu      $v0, $v0, %lo(pxm_chanstat)
/* 42FB0 800527B0 04004324 */  addiu      $v1, $v0, 0x4
.L800527B4:
/* 42FB4 800527B4 000060AC */  sw         $zero, 0x0($v1)
/* 42FB8 800527B8 01008424 */  addiu      $a0, $a0, 0x1
/* 42FBC 800527BC 0400822C */  sltiu      $v0, $a0, 0x4
/* 42FC0 800527C0 FCFF4014 */  bnez       $v0, .L800527B4
/* 42FC4 800527C4 1C006324 */   addiu     $v1, $v1, 0x1C
/* 42FC8 800527C8 0C1680AF */  sw         $zero, %gp_rel(pxm_Vtticks)($gp)
/* 42FCC 800527CC F41580AF */  sw         $zero, %gp_rel(pxm_tticks)($gp)
/* 42FD0 800527D0 F01580AF */  sw         $zero, %gp_rel(pxm_rticks)($gp)
/* 42FD4 800527D4 2C1680AF */  sw         $zero, %gp_rel(pxm_tmin)($gp)
/* 42FD8 800527D8 281680AF */  sw         $zero, %gp_rel(pxm_tsec)($gp)
/* 42FDC 800527DC 241680AF */  sw         $zero, %gp_rel(pxm_tjif)($gp)
/* 42FE0 800527E0 0980013C */  lui        $at, %hi(pxm_last_action_ticks)
/* 42FE4 800527E4 345220A4 */  sh         $zero, %lo(pxm_last_action_ticks)($at)
/* 42FE8 800527E8 0800E003 */  jr         $ra
/* 42FEC 800527EC 00000000 */   nop
.size pxm_resetctrs, . - pxm_resetctrs
