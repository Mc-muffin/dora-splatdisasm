.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel EndLevel
/* 10EA8 800206A8 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 10EAC 800206AC 0980023C */  lui        $v0, %hi(ETActor)
/* 10EB0 800206B0 2800B2AF */  sw         $s2, 0x28($sp)
/* 10EB4 800206B4 B05A5224 */  addiu      $s2, $v0, %lo(ETActor)
/* 10EB8 800206B8 21204002 */  addu       $a0, $s2, $zero
/* 10EBC 800206BC 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 10EC0 800206C0 2400B1AF */  sw         $s1, 0x24($sp)
/* 10EC4 800206C4 65E2000C */  jal        AnimateActor
/* 10EC8 800206C8 2000B0AF */   sw        $s0, 0x20($sp)
/* 10ECC 800206CC 6413908F */  lw         $s0, %gp_rel(gEndLevelState)($gp)
/* 10ED0 800206D0 01001124 */  addiu      $s1, $zero, 0x1
/* 10ED4 800206D4 0E001112 */  beq        $s0, $s1, .L80020710
/* 10ED8 800206D8 21204002 */   addu      $a0, $s2, $zero
/* 10EDC 800206DC 05000012 */  beqz       $s0, .L800206F4
/* 10EE0 800206E0 02000224 */   addiu     $v0, $zero, 0x2
/* 10EE4 800206E4 19000212 */  beq        $s0, $v0, .L8002074C
/* 10EE8 800206E8 2C015026 */   addiu     $s0, $s2, 0x12C
/* 10EEC 800206EC DB810008 */  j          .L8002076C
/* 10EF0 800206F0 00000000 */   nop
.L800206F4:
/* 10EF4 800206F4 1E000424 */  addiu      $a0, $zero, 0x1E
/* 10EF8 800206F8 21280000 */  addu       $a1, $zero, $zero
/* 10EFC 800206FC 6F4A010C */  jal        pxm_sendevent
/* 10F00 80020700 21300000 */   addu      $a2, $zero, $zero
/* 10F04 80020704 641391AF */  sw         $s1, %gp_rel(gEndLevelState)($gp)
/* 10F08 80020708 DB810008 */  j          .L8002076C
/* 10F0C 8002070C 2C015026 */   addiu     $s0, $s2, 0x12C
.L80020710:
/* 10F10 80020710 28E3000C */  jal        GetSeqNumFrames
/* 10F14 80020714 18000524 */   addiu     $a1, $zero, 0x18
/* 10F18 80020718 21204002 */  addu       $a0, $s2, $zero
/* 10F1C 8002071C 18000524 */  addiu      $a1, $zero, 0x18
/* 10F20 80020720 21300000 */  addu       $a2, $zero, $zero
/* 10F24 80020724 02001124 */  addiu      $s1, $zero, 0x2
/* 10F28 80020728 1000B0AF */  sw         $s0, 0x10($sp)
/* 10F2C 8002072C 2C015026 */  addiu      $s0, $s2, 0x12C
/* 10F30 80020730 21384000 */  addu       $a3, $v0, $zero
/* 10F34 80020734 1400B1AF */  sw         $s1, 0x14($sp)
/* 10F38 80020738 72E2000C */  jal        RequestAnim
/* 10F3C 8002073C 1800B0AF */   sw        $s0, 0x18($sp)
/* 10F40 80020740 641391AF */  sw         $s1, %gp_rel(gEndLevelState)($gp)
/* 10F44 80020744 DB810008 */  j          .L8002076C
/* 10F48 80020748 00000000 */   nop
.L8002074C:
/* 10F4C 8002074C 5401428E */  lw         $v0, 0x154($s2)
/* 10F50 80020750 00000000 */  nop
/* 10F54 80020754 05004104 */  bgez       $v0, .L8002076C
/* 10F58 80020758 00000000 */   nop
/* 10F5C 8002075C 2895000C */  jal        NewsPaperLevelComplete
/* 10F60 80020760 00000000 */   nop
/* 10F64 80020764 BDCC000C */  jal        SetBeamUPSequence
/* 10F68 80020768 00000000 */   nop
.L8002076C:
/* 10F6C 8002076C A1E8000C */  jal        CameraMan
/* 10F70 80020770 00000000 */   nop
/* 10F74 80020774 16EB000C */  jal        UpdateCamera
/* 10F78 80020778 00000000 */   nop
/* 10F7C 8002077C 4AE9000C */  jal        UpdateCameraMatrix
/* 10F80 80020780 00000000 */   nop
/* 10F84 80020784 9490010C */  jal        DrawLevel
/* 10F88 80020788 00000000 */   nop
/* 10F8C 8002078C 3609010C */  jal        ServiceSpawnListBrains
/* 10F90 80020790 00000000 */   nop
/* 10F94 80020794 2DBF000C */  jal        ParticleBrainService
/* 10F98 80020798 00000000 */   nop
/* 10F9C 8002079C 21204002 */  addu       $a0, $s2, $zero
/* 10FA0 800207A0 10DE000C */  jal        CheckNextAnim
/* 10FA4 800207A4 21280002 */   addu      $a1, $s0, $zero
/* 10FA8 800207A8 21204002 */  addu       $a0, $s2, $zero
/* 10FAC 800207AC 9B87010C */  jal        UpdateMotionPhysicsToActor
/* 10FB0 800207B0 6C008524 */   addiu     $a1, $a0, 0x6C
/* 10FB4 800207B4 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 10FB8 800207B8 2800B28F */  lw         $s2, 0x28($sp)
/* 10FBC 800207BC 2400B18F */  lw         $s1, 0x24($sp)
/* 10FC0 800207C0 2000B08F */  lw         $s0, 0x20($sp)
/* 10FC4 800207C4 01000224 */  addiu      $v0, $zero, 0x1
/* 10FC8 800207C8 0800E003 */  jr         $ra
/* 10FCC 800207CC 3000BD27 */   addiu     $sp, $sp, 0x30
.size EndLevel, . - EndLevel
