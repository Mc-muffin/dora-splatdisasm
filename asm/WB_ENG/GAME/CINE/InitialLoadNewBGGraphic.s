.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitialLoadNewBGGraphic
/* 32C08 80042408 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 32C0C 8004240C 1400BFAF */  sw         $ra, 0x14($sp)
/* 32C10 80042410 1000B0AF */  sw         $s0, 0x10($sp)
/* 32C14 80042414 0C00828C */  lw         $v0, 0xC($a0)
/* 32C18 80042418 80280500 */  sll        $a1, $a1, 2
/* 32C1C 8004241C 2128A200 */  addu       $a1, $a1, $v0
/* 32C20 80042420 0000B08C */  lw         $s0, 0x0($a1)
/* 32C24 80042424 B13A010C */  jal        PolyPoolAddr
/* 32C28 80042428 00000000 */   nop
/* 32C2C 8004242C 21284000 */  addu       $a1, $v0, $zero
/* 32C30 80042430 495C010C */  jal        LoadFile
/* 32C34 80042434 21200002 */   addu      $a0, $s0, $zero
/* 32C38 80042438 B13A010C */  jal        PolyPoolAddr
/* 32C3C 8004243C 00000000 */   nop
/* 32C40 80042440 21200000 */  addu       $a0, $zero, $zero
/* 32C44 80042444 21284000 */  addu       $a1, $v0, $zero
/* 32C48 80042448 9F07010C */  jal        LoadCineGraphicIntoFrameBuffer
/* 32C4C 8004244C 21300000 */   addu      $a2, $zero, $zero
/* 32C50 80042450 D414828F */  lw         $v0, %gp_rel(CurrentCinematic)($gp)
/* 32C54 80042454 00000000 */  nop
/* 32C58 80042458 1000438C */  lw         $v1, 0x10($v0)
/* 32C5C 8004245C 440C848F */  lw         $a0, %gp_rel(Cinematic_ParaOffset)($gp)
/* 32C60 80042460 05006010 */  beqz       $v1, .L80042478
/* 32C64 80042464 00000000 */   nop
/* 32C68 80042468 0000428C */  lw         $v0, 0x0($v0)
/* 32C6C 8004246C 00000000 */  nop
/* 32C70 80042470 04004014 */  bnez       $v0, .L80042484
/* 32C74 80042474 21106400 */   addu      $v0, $v1, $a0
.L80042478:
/* 32C78 80042478 400C80AF */  sw         $zero, %gp_rel(Cinematic_OverylayIndex)($gp)
/* 32C7C 8004247C 25090108 */  j          .L80042494
/* 32C80 80042480 01001024 */   addiu     $s0, $zero, 0x1
.L80042484:
/* 32C84 80042484 00004390 */  lbu        $v1, 0x0($v0)
/* 32C88 80042488 00000000 */  nop
/* 32C8C 8004248C 400C83AF */  sw         $v1, %gp_rel(Cinematic_OverylayIndex)($gp)
/* 32C90 80042490 01001024 */  addiu      $s0, $zero, 0x1
.L80042494:
/* 32C94 80042494 02000224 */  addiu      $v0, $zero, 0x2
/* 32C98 80042498 380C90AF */  sw         $s0, %gp_rel(CineFileLoaded)($gp)
/* 32C9C 8004249C 500C80AF */  sw         $zero, %gp_rel(CinematicDisplayButton)($gp)
/* 32CA0 800424A0 5C0C82AF */  sw         $v0, %gp_rel(CinematicDisplayUpdateCount)($gp)
/* 32CA4 800424A4 CC6C010C */  jal        ScreenOff
/* 32CA8 800424A8 00000000 */   nop
/* 32CAC 800424AC 1400BF8F */  lw         $ra, 0x14($sp)
/* 32CB0 800424B0 0980013C */  lui        $at, %hi(DrawScreenGrabFlag)
/* 32CB4 800424B4 3C4930AC */  sw         $s0, %lo(DrawScreenGrabFlag)($at)
/* 32CB8 800424B8 0980013C */  lui        $at, %hi(SnapShot)
/* 32CBC 800424BC 7C5330AC */  sw         $s0, %lo(SnapShot)($at)
/* 32CC0 800424C0 600C90AF */  sw         $s0, %gp_rel(ScreenGrabFadeIn)($gp)
/* 32CC4 800424C4 1000B08F */  lw         $s0, 0x10($sp)
/* 32CC8 800424C8 680C80AF */  sw         $zero, %gp_rel(ScreenGrabFadeVal)($gp)
/* 32CCC 800424CC 700C80AF */  sw         $zero, %gp_rel(BGImageFLagReady)($gp)
/* 32CD0 800424D0 0800E003 */  jr         $ra
/* 32CD4 800424D4 1800BD27 */   addiu     $sp, $sp, 0x18
.size InitialLoadNewBGGraphic, . - InitialLoadNewBGGraphic
