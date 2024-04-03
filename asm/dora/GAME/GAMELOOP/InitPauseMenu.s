.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitPauseMenu
/* 23A6C 8003326C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 23A70 80033270 1000BFAF */  sw         $ra, 0x10($sp)
/* 23A74 80033274 4C0980AF */  sw         $zero, %gp_rel(PauseMenuOption)($gp)
/* 23A78 80033278 B095000C */  jal        InitSliders
/* 23A7C 8003327C 00000000 */   nop
/* 23A80 80033280 0980033C */  lui        $v1, %hi(MusicVolume)
/* 23A84 80033284 9C49638C */  lw         $v1, %lo(MusicVolume)($v1)
/* 23A88 80033288 00000000 */  nop
/* 23A8C 8003328C 1C1483AF */  sw         $v1, %gp_rel(PauseMenuSaveMusicVolume)($gp)
/* 23A90 80033290 EBD6010C */  jal        VSync
/* 23A94 80033294 FFFF0424 */   addiu     $a0, $zero, -0x1
/* 23A98 80033298 041482AF */  sw         $v0, %gp_rel(Vsync_since_last_sound)($gp)
/* 23A9C 8003329C 0667010C */  jal        padpluggedin
/* 23AA0 800332A0 21200000 */   addu      $a0, $zero, $zero
/* 23AA4 800332A4 04004014 */  bnez       $v0, .L800332B8
/* 23AA8 800332A8 78000224 */   addiu     $v0, $zero, 0x78
/* 23AAC 800332AC 141482AF */  sw         $v0, %gp_rel(CheckForRumble)($gp)
/* 23AB0 800332B0 AFCC0008 */  j          .L800332BC
/* 23AB4 800332B4 00000000 */   nop
.L800332B8:
/* 23AB8 800332B8 141480AF */  sw         $zero, %gp_rel(CheckForRumble)($gp)
.L800332BC:
/* 23ABC 800332BC 5266010C */  jal        Sys_CanPadVibrate
/* 23AC0 800332C0 21200000 */   addu      $a0, $zero, $zero
/* 23AC4 800332C4 04004010 */  beqz       $v0, .L800332D8
/* 23AC8 800332C8 01000224 */   addiu     $v0, $zero, 0x1
/* 23ACC 800332CC D41382AF */  sw         $v0, %gp_rel(PauseRumble)($gp)
/* 23AD0 800332D0 B7CC0008 */  j          .L800332DC
/* 23AD4 800332D4 00000000 */   nop
.L800332D8:
/* 23AD8 800332D8 D41380AF */  sw         $zero, %gp_rel(PauseRumble)($gp)
.L800332DC:
/* 23ADC 800332DC 2C7B010C */  jal        PauseXA
/* 23AE0 800332E0 01000424 */   addiu     $a0, $zero, 0x1
/* 23AE4 800332E4 1000BF8F */  lw         $ra, 0x10($sp)
/* 23AE8 800332E8 00000000 */  nop
/* 23AEC 800332EC 0800E003 */  jr         $ra
/* 23AF0 800332F0 1800BD27 */   addiu     $sp, $sp, 0x18
.size InitPauseMenu, . - InitPauseMenu
