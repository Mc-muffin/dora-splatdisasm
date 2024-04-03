.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CameraInit
/* 2AF74 8003A774 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2AF78 8003A778 0180043C */  lui        $a0, %hi(D_80012B1C)
/* 2AF7C 8003A77C 1C2B8424 */  addiu      $a0, $a0, %lo(D_80012B1C)
/* 2AF80 8003A780 1000B0AF */  sw         $s0, 0x10($sp)
/* 2AF84 8003A784 0A80103C */  lui        $s0, %hi(SCGGameCam)
/* 2AF88 8003A788 B8B11026 */  addiu      $s0, $s0, %lo(SCGGameCam)
/* 2AF8C 8003A78C 1400BFAF */  sw         $ra, 0x14($sp)
/* 2AF90 8003A790 495C010C */  jal        LoadFile
/* 2AF94 8003A794 21280002 */   addu      $a1, $s0, $zero
/* 2AF98 8003A798 29000224 */  addiu      $v0, $zero, 0x29
/* 2AF9C 8003A79C 32071026 */  addiu      $s0, $s0, 0x732
.L8003A7A0:
/* 2AFA0 8003A7A0 000000A2 */  sb         $zero, 0x0($s0)
/* 2AFA4 8003A7A4 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 2AFA8 8003A7A8 FDFF4104 */  bgez       $v0, .L8003A7A0
/* 2AFAC 8003A7AC D4FF1026 */   addiu     $s0, $s0, -0x2C
/* 2AFB0 8003A7B0 4C0A80AF */  sw         $zero, %gp_rel(CurrentCameraEnum)($gp)
/* 2AFB4 8003A7B4 69ED000C */  jal        SetTrackingMode
/* 2AFB8 8003A7B8 21200000 */   addu      $a0, $zero, $zero
/* 2AFBC 8003A7BC 1400BF8F */  lw         $ra, 0x14($sp)
/* 2AFC0 8003A7C0 1000B08F */  lw         $s0, 0x10($sp)
/* 2AFC4 8003A7C4 5C0A80AF */  sw         $zero, %gp_rel(ActivePauseCamera)($gp)
/* 2AFC8 8003A7C8 5A0A80A7 */  sh         $zero, %gp_rel(fp_offset)($gp)
/* 2AFCC 8003A7CC 0800E003 */  jr         $ra
/* 2AFD0 8003A7D0 1800BD27 */   addiu     $sp, $sp, 0x18
.size CameraInit, . - CameraInit
