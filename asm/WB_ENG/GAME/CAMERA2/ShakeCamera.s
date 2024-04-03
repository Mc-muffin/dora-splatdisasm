.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ShakeCamera
/* 2C330 8003BB30 880B8297 */  lhu        $v0, %gp_rel(gShake)($gp)
/* 2C334 8003BB34 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2C338 8003BB38 2E004010 */  beqz       $v0, .L8003BBF4
/* 2C33C 8003BB3C 1000BFAF */   sw        $ra, 0x10($sp)
/* 2C340 8003BB40 01004230 */  andi       $v0, $v0, 0x1
/* 2C344 8003BB44 1B004014 */  bnez       $v0, .L8003BBB4
/* 2C348 8003BB48 00000000 */   nop
/* 2C34C 8003BB4C D140010C */  jal        u32Random
/* 2C350 8003BB50 2D020424 */   addiu     $a0, $zero, 0x22D
/* 2C354 8003BB54 9014858F */  lw         $a1, %gp_rel(currentCamera)($gp)
/* 2C358 8003BB58 00000000 */  nop
/* 2C35C 8003BB5C 1400A38C */  lw         $v1, 0x14($a1)
/* 2C360 8003BB60 2D020424 */  addiu      $a0, $zero, 0x22D
/* 2C364 8003BB64 E4FF6324 */  addiu      $v1, $v1, -0x1C
/* 2C368 8003BB68 21186200 */  addu       $v1, $v1, $v0
/* 2C36C 8003BB6C D140010C */  jal        u32Random
/* 2C370 8003BB70 1400A3AC */   sw        $v1, 0x14($a1)
/* 2C374 8003BB74 9014858F */  lw         $a1, %gp_rel(currentCamera)($gp)
/* 2C378 8003BB78 00000000 */  nop
/* 2C37C 8003BB7C 1800A38C */  lw         $v1, 0x18($a1)
/* 2C380 8003BB80 05020424 */  addiu      $a0, $zero, 0x205
/* 2C384 8003BB84 E4FF6324 */  addiu      $v1, $v1, -0x1C
/* 2C388 8003BB88 21186200 */  addu       $v1, $v1, $v0
/* 2C38C 8003BB8C D140010C */  jal        u32Random
/* 2C390 8003BB90 1800A3AC */   sw        $v1, 0x18($a1)
/* 2C394 8003BB94 9014848F */  lw         $a0, %gp_rel(currentCamera)($gp)
/* 2C398 8003BB98 00000000 */  nop
/* 2C39C 8003BB9C 1C00838C */  lw         $v1, 0x1C($a0)
/* 2C3A0 8003BBA0 00000000 */  nop
/* 2C3A4 8003BBA4 F8FF6324 */  addiu      $v1, $v1, -0x8
/* 2C3A8 8003BBA8 21186200 */  addu       $v1, $v1, $v0
/* 2C3AC 8003BBAC F4EE0008 */  j          .L8003BBD0
/* 2C3B0 8003BBB0 1C0083AC */   sw        $v1, 0x1C($a0)
.L8003BBB4:
/* 2C3B4 8003BBB4 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2C3B8 8003BBB8 8414838F */  lw         $v1, %gp_rel(gShake_save_track_target_ofs_X)($gp)
/* 2C3BC 8003BBBC 8814848F */  lw         $a0, %gp_rel(gShake_save_track_target_ofs_Y)($gp)
/* 2C3C0 8003BBC0 8C14858F */  lw         $a1, %gp_rel(gShake_save_track_target_ofs_Z)($gp)
/* 2C3C4 8003BBC4 140043AC */  sw         $v1, 0x14($v0)
/* 2C3C8 8003BBC8 180044AC */  sw         $a0, 0x18($v0)
/* 2C3CC 8003BBCC 1C0045AC */  sw         $a1, 0x1C($v0)
.L8003BBD0:
/* 2C3D0 8003BBD0 880B8297 */  lhu        $v0, %gp_rel(gShake)($gp)
/* 2C3D4 8003BBD4 00000000 */  nop
/* 2C3D8 8003BBD8 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 2C3DC 8003BBDC 880B82A7 */  sh         $v0, %gp_rel(gShake)($gp)
/* 2C3E0 8003BBE0 FFFF4230 */  andi       $v0, $v0, 0xFFFF
/* 2C3E4 8003BBE4 03004014 */  bnez       $v0, .L8003BBF4
/* 2C3E8 8003BBE8 00000000 */   nop
/* 2C3EC 8003BBEC 43EE000C */  jal        RestoreCameraAggression
/* 2C3F0 8003BBF0 00000000 */   nop
.L8003BBF4:
/* 2C3F4 8003BBF4 1000BF8F */  lw         $ra, 0x10($sp)
/* 2C3F8 8003BBF8 00000000 */  nop
/* 2C3FC 8003BBFC 0800E003 */  jr         $ra
/* 2C400 8003BC00 1800BD27 */   addiu     $sp, $sp, 0x18
.size ShakeCamera, . - ShakeCamera
