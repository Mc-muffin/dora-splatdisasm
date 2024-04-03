.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel UpdateCamera
/* 2B458 8003AC58 880B8297 */  lhu        $v0, %gp_rel(gShake)($gp)
/* 2B45C 8003AC5C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2B460 8003AC60 2E004010 */  beqz       $v0, .L8003AD1C
/* 2B464 8003AC64 1000BFAF */   sw        $ra, 0x10($sp)
/* 2B468 8003AC68 01004230 */  andi       $v0, $v0, 0x1
/* 2B46C 8003AC6C 1B004014 */  bnez       $v0, .L8003ACDC
/* 2B470 8003AC70 00000000 */   nop
/* 2B474 8003AC74 D140010C */  jal        u32Random
/* 2B478 8003AC78 2D020424 */   addiu     $a0, $zero, 0x22D
/* 2B47C 8003AC7C 9014858F */  lw         $a1, %gp_rel(currentCamera)($gp)
/* 2B480 8003AC80 00000000 */  nop
/* 2B484 8003AC84 1400A38C */  lw         $v1, 0x14($a1)
/* 2B488 8003AC88 2D020424 */  addiu      $a0, $zero, 0x22D
/* 2B48C 8003AC8C E4FF6324 */  addiu      $v1, $v1, -0x1C
/* 2B490 8003AC90 21186200 */  addu       $v1, $v1, $v0
/* 2B494 8003AC94 D140010C */  jal        u32Random
/* 2B498 8003AC98 1400A3AC */   sw        $v1, 0x14($a1)
/* 2B49C 8003AC9C 9014858F */  lw         $a1, %gp_rel(currentCamera)($gp)
/* 2B4A0 8003ACA0 00000000 */  nop
/* 2B4A4 8003ACA4 1800A38C */  lw         $v1, 0x18($a1)
/* 2B4A8 8003ACA8 05020424 */  addiu      $a0, $zero, 0x205
/* 2B4AC 8003ACAC E4FF6324 */  addiu      $v1, $v1, -0x1C
/* 2B4B0 8003ACB0 21186200 */  addu       $v1, $v1, $v0
/* 2B4B4 8003ACB4 D140010C */  jal        u32Random
/* 2B4B8 8003ACB8 1800A3AC */   sw        $v1, 0x18($a1)
/* 2B4BC 8003ACBC 9014848F */  lw         $a0, %gp_rel(currentCamera)($gp)
/* 2B4C0 8003ACC0 00000000 */  nop
/* 2B4C4 8003ACC4 1C00838C */  lw         $v1, 0x1C($a0)
/* 2B4C8 8003ACC8 00000000 */  nop
/* 2B4CC 8003ACCC F8FF6324 */  addiu      $v1, $v1, -0x8
/* 2B4D0 8003ACD0 21186200 */  addu       $v1, $v1, $v0
/* 2B4D4 8003ACD4 3EEB0008 */  j          .L8003ACF8
/* 2B4D8 8003ACD8 1C0083AC */   sw        $v1, 0x1C($a0)
.L8003ACDC:
/* 2B4DC 8003ACDC 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2B4E0 8003ACE0 8414838F */  lw         $v1, %gp_rel(gShake_save_track_target_ofs_X)($gp)
/* 2B4E4 8003ACE4 8814848F */  lw         $a0, %gp_rel(gShake_save_track_target_ofs_Y)($gp)
/* 2B4E8 8003ACE8 8C14858F */  lw         $a1, %gp_rel(gShake_save_track_target_ofs_Z)($gp)
/* 2B4EC 8003ACEC 140043AC */  sw         $v1, 0x14($v0)
/* 2B4F0 8003ACF0 180044AC */  sw         $a0, 0x18($v0)
/* 2B4F4 8003ACF4 1C0045AC */  sw         $a1, 0x1C($v0)
.L8003ACF8:
/* 2B4F8 8003ACF8 880B8297 */  lhu        $v0, %gp_rel(gShake)($gp)
/* 2B4FC 8003ACFC 00000000 */  nop
/* 2B500 8003AD00 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 2B504 8003AD04 880B82A7 */  sh         $v0, %gp_rel(gShake)($gp)
/* 2B508 8003AD08 FFFF4230 */  andi       $v0, $v0, 0xFFFF
/* 2B50C 8003AD0C 03004014 */  bnez       $v0, .L8003AD1C
/* 2B510 8003AD10 00000000 */   nop
/* 2B514 8003AD14 43EE000C */  jal        RestoreCameraAggression
/* 2B518 8003AD18 00000000 */   nop
.L8003AD1C:
/* 2B51C 8003AD1C 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2B520 8003AD20 00000000 */  nop
/* 2B524 8003AD24 00004390 */  lbu        $v1, 0x0($v0)
/* 2B528 8003AD28 00000000 */  nop
/* 2B52C 8003AD2C 0B006010 */  beqz       $v1, .L8003AD5C
/* 2B530 8003AD30 01000224 */   addiu     $v0, $zero, 0x1
/* 2B534 8003AD34 09006214 */  bne        $v1, $v0, .L8003AD5C
/* 2B538 8003AD38 00000000 */   nop
/* 2B53C 8003AD3C ECEB000C */  jal        LocaleTracking
/* 2B540 8003AD40 00000000 */   nop
/* 2B544 8003AD44 5BEB000C */  jal        PursuitMode
/* 2B548 8003AD48 00000000 */   nop
/* 2B54C 8003AD4C 89EE000C */  jal        UpdateCameraStatus
/* 2B550 8003AD50 00000000 */   nop
/* 2B554 8003AD54 99EB000C */  jal        ConvertToPlatform
/* 2B558 8003AD58 00000000 */   nop
.L8003AD5C:
/* 2B55C 8003AD5C 1000BF8F */  lw         $ra, 0x10($sp)
/* 2B560 8003AD60 00000000 */  nop
/* 2B564 8003AD64 0800E003 */  jr         $ra
/* 2B568 8003AD68 1800BD27 */   addiu     $sp, $sp, 0x18
.size UpdateCamera, . - UpdateCamera
