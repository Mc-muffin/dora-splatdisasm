.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckBGGraphicReady
/* 32A1C 8004221C 700C828F */  lw         $v0, %gp_rel(BGImageFLagReady)($gp)
/* 32A20 80042220 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 32A24 80042224 26004010 */  beqz       $v0, .L800422C0
/* 32A28 80042228 1000BFAF */   sw        $ra, 0x10($sp)
/* 32A2C 8004222C CC6C010C */  jal        ScreenOff
/* 32A30 80042230 00000000 */   nop
/* 32A34 80042234 B13A010C */  jal        PolyPoolAddr
/* 32A38 80042238 00000000 */   nop
/* 32A3C 8004223C 21200000 */  addu       $a0, $zero, $zero
/* 32A40 80042240 21284000 */  addu       $a1, $v0, $zero
/* 32A44 80042244 EE6B010C */  jal        LoadGraphicIntoFrameBufferX
/* 32A48 80042248 21300000 */   addu      $a2, $zero, $zero
/* 32A4C 8004224C D414848F */  lw         $a0, %gp_rel(CurrentCinematic)($gp)
/* 32A50 80042250 440C828F */  lw         $v0, %gp_rel(Cinematic_ParaOffset)($gp)
/* 32A54 80042254 01000324 */  addiu      $v1, $zero, 0x1
/* 32A58 80042258 380C83AF */  sw         $v1, %gp_rel(CineFileLoaded)($gp)
/* 32A5C 8004225C 1000858C */  lw         $a1, 0x10($a0)
/* 32A60 80042260 01004324 */  addiu      $v1, $v0, 0x1
/* 32A64 80042264 440C83AF */  sw         $v1, %gp_rel(Cinematic_ParaOffset)($gp)
/* 32A68 80042268 0500A010 */  beqz       $a1, .L80042280
/* 32A6C 8004226C 00000000 */   nop
/* 32A70 80042270 0000828C */  lw         $v0, 0x0($a0)
/* 32A74 80042274 00000000 */  nop
/* 32A78 80042278 04004014 */  bnez       $v0, .L8004228C
/* 32A7C 8004227C 2110A300 */   addu      $v0, $a1, $v1
.L80042280:
/* 32A80 80042280 400C80AF */  sw         $zero, %gp_rel(Cinematic_OverylayIndex)($gp)
/* 32A84 80042284 A7080108 */  j          .L8004229C
/* 32A88 80042288 02000324 */   addiu     $v1, $zero, 0x2
.L8004228C:
/* 32A8C 8004228C 00004390 */  lbu        $v1, 0x0($v0)
/* 32A90 80042290 00000000 */  nop
/* 32A94 80042294 400C83AF */  sw         $v1, %gp_rel(Cinematic_OverylayIndex)($gp)
/* 32A98 80042298 02000324 */  addiu      $v1, $zero, 0x2
.L8004229C:
/* 32A9C 8004229C 01000224 */  addiu      $v0, $zero, 0x1
/* 32AA0 800422A0 500C80AF */  sw         $zero, %gp_rel(CinematicDisplayButton)($gp)
/* 32AA4 800422A4 5C0C83AF */  sw         $v1, %gp_rel(CinematicDisplayUpdateCount)($gp)
/* 32AA8 800422A8 0980013C */  lui        $at, %hi(DrawScreenGrabFlag)
/* 32AAC 800422AC 3C4922AC */  sw         $v0, %lo(DrawScreenGrabFlag)($at)
/* 32AB0 800422B0 6C0C82AF */  sw         $v0, %gp_rel(RequestSnapShot)($gp)
/* 32AB4 800422B4 600C82AF */  sw         $v0, %gp_rel(ScreenGrabFadeIn)($gp)
/* 32AB8 800422B8 680C80AF */  sw         $zero, %gp_rel(ScreenGrabFadeVal)($gp)
/* 32ABC 800422BC 700C80AF */  sw         $zero, %gp_rel(BGImageFLagReady)($gp)
.L800422C0:
/* 32AC0 800422C0 1000BF8F */  lw         $ra, 0x10($sp)
/* 32AC4 800422C4 00000000 */  nop
/* 32AC8 800422C8 0800E003 */  jr         $ra
/* 32ACC 800422CC 1800BD27 */   addiu     $sp, $sp, 0x18
.size CheckBGGraphicReady, . - CheckBGGraphicReady
