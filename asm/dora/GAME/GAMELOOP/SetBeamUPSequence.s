.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetBeamUPSequence
/* 23AF4 800332F4 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 23AF8 800332F8 2000B0AF */  sw         $s0, 0x20($sp)
/* 23AFC 800332FC 0980103C */  lui        $s0, %hi(ETActor)
/* 23B00 80033300 B05A1026 */  addiu      $s0, $s0, %lo(ETActor)
/* 23B04 80033304 2800BFAF */  sw         $ra, 0x28($sp)
/* 23B08 80033308 F866010C */  jal        ClearJoyPad
/* 23B0C 8003330C 2400B1AF */   sw        $s1, 0x24($sp)
/* 23B10 80033310 21200002 */  addu       $a0, $s0, $zero
/* 23B14 80033314 E408838F */  lw         $v1, %gp_rel(BEAMUPMAX)($gp)
/* 23B18 80033318 6C000226 */  addiu      $v0, $s0, 0x6C
/* 23B1C 8003331C 0980013C */  lui        $at, %hi(gETEndLevel)
/* 23B20 80033320 D44220AC */  sw         $zero, %lo(gETEndLevel)($at)
/* 23B24 80033324 300040AC */  sw         $zero, 0x30($v0)
/* 23B28 80033328 340040AC */  sw         $zero, 0x34($v0)
/* 23B2C 8003332C 380040AC */  sw         $zero, 0x38($v0)
/* 23B30 80033330 08000224 */  addiu      $v0, $zero, 0x8
/* 23B34 80033334 440100AE */  sw         $zero, 0x144($s0)
/* 23B38 80033338 201482AF */  sw         $v0, %gp_rel(gGameState)($gp)
/* 23B3C 8003333C F00883AF */  sw         $v1, %gp_rel(BeamTimer)($gp)
/* 23B40 80033340 28E3000C */  jal        GetSeqNumFrames
/* 23B44 80033344 16000524 */   addiu     $a1, $zero, 0x16
/* 23B48 80033348 21200002 */  addu       $a0, $s0, $zero
/* 23B4C 8003334C 16000524 */  addiu      $a1, $zero, 0x16
/* 23B50 80033350 01000324 */  addiu      $v1, $zero, 0x1
/* 23B54 80033354 02001124 */  addiu      $s1, $zero, 0x2
/* 23B58 80033358 2C011026 */  addiu      $s0, $s0, 0x12C
/* 23B5C 8003335C 21300000 */  addu       $a2, $zero, $zero
/* 23B60 80033360 21384000 */  addu       $a3, $v0, $zero
/* 23B64 80033364 1000A3AF */  sw         $v1, 0x10($sp)
/* 23B68 80033368 1400B1AF */  sw         $s1, 0x14($sp)
/* 23B6C 8003336C 72E2000C */  jal        RequestAnim
/* 23B70 80033370 1800B0AF */   sw        $s0, 0x18($sp)
/* 23B74 80033374 2800BF8F */  lw         $ra, 0x28($sp)
/* 23B78 80033378 8C0891AF */  sw         $s1, %gp_rel(FaderFlag)($gp)
/* 23B7C 8003337C 2400B18F */  lw         $s1, 0x24($sp)
/* 23B80 80033380 2000B08F */  lw         $s0, 0x20($sp)
/* 23B84 80033384 900880AF */  sw         $zero, %gp_rel(FaderTimer)($gp)
/* 23B88 80033388 0800E003 */  jr         $ra
/* 23B8C 8003338C 3000BD27 */   addiu     $sp, $sp, 0x30
.size SetBeamUPSequence, . - SetBeamUPSequence
