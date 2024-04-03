.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SpawnGetClosest
/* 2FB08 8003F308 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 2FB0C 8003F30C 0A80023C */  lui        $v0, %hi(SpawnServiceList)
/* 2FB10 8003F310 2000B0AF */  sw         $s0, 0x20($sp)
/* 2FB14 8003F314 B8C05024 */  addiu      $s0, $v0, %lo(SpawnServiceList)
/* 2FB18 8003F318 2800B2AF */  sw         $s2, 0x28($sp)
/* 2FB1C 8003F31C 0100123C */  lui        $s2, (0x186A0 >> 16)
/* 2FB20 8003F320 0980023C */  lui        $v0, %hi(NumSpawnedActors)
/* 2FB24 8003F324 044F428C */  lw         $v0, %lo(NumSpawnedActors)($v0)
/* 2FB28 8003F328 A0865236 */  ori        $s2, $s2, (0x186A0 & 0xFFFF)
/* 2FB2C 8003F32C 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 2FB30 8003F330 21980000 */  addu       $s3, $zero, $zero
/* 2FB34 8003F334 3000B4AF */  sw         $s4, 0x30($sp)
/* 2FB38 8003F338 21A08000 */  addu       $s4, $a0, $zero
/* 2FB3C 8003F33C 3400B5AF */  sw         $s5, 0x34($sp)
/* 2FB40 8003F340 21A8A000 */  addu       $s5, $a1, $zero
/* 2FB44 8003F344 3800BFAF */  sw         $ra, 0x38($sp)
/* 2FB48 8003F348 1C004018 */  blez       $v0, .L8003F3BC
/* 2FB4C 8003F34C 2400B1AF */   sw        $s1, 0x24($sp)
/* 2FB50 8003F350 21884000 */  addu       $s1, $v0, $zero
.L8003F354:
/* 2FB54 8003F354 16009012 */  beq        $s4, $s0, .L8003F3B0
/* 2FB58 8003F358 00000000 */   nop
/* 2FB5C 8003F35C 4400028E */  lw         $v0, 0x44($s0)
/* 2FB60 8003F360 00000000 */  nop
/* 2FB64 8003F364 1000438C */  lw         $v1, 0x10($v0)
/* 2FB68 8003F368 00000000 */  nop
/* 2FB6C 8003F36C 10007514 */  bne        $v1, $s5, .L8003F3B0
/* 2FB70 8003F370 00000000 */   nop
/* 2FB74 8003F374 0000048E */  lw         $a0, 0x0($s0)
/* 2FB78 8003F378 0000828E */  lw         $v0, 0x0($s4)
/* 2FB7C 8003F37C 0800058E */  lw         $a1, 0x8($s0)
/* 2FB80 8003F380 0800838E */  lw         $v1, 0x8($s4)
/* 2FB84 8003F384 23208200 */  subu       $a0, $a0, $v0
/* 2FB88 8003F388 2328A300 */  subu       $a1, $a1, $v1
/* 2FB8C 8003F38C 1000A4AF */  sw         $a0, 0x10($sp)
/* 2FB90 8003F390 FEE9000C */  jal        DistApprox_2d
/* 2FB94 8003F394 1800A5AF */   sw        $a1, 0x18($sp)
/* 2FB98 8003F398 21184000 */  addu       $v1, $v0, $zero
/* 2FB9C 8003F39C 2A107200 */  slt        $v0, $v1, $s2
/* 2FBA0 8003F3A0 03004010 */  beqz       $v0, .L8003F3B0
/* 2FBA4 8003F3A4 00000000 */   nop
/* 2FBA8 8003F3A8 21980002 */  addu       $s3, $s0, $zero
/* 2FBAC 8003F3AC 21906000 */  addu       $s2, $v1, $zero
.L8003F3B0:
/* 2FBB0 8003F3B0 FFFF3126 */  addiu      $s1, $s1, -0x1
/* 2FBB4 8003F3B4 E7FF2016 */  bnez       $s1, .L8003F354
/* 2FBB8 8003F3B8 88011026 */   addiu     $s0, $s0, 0x188
.L8003F3BC:
/* 2FBBC 8003F3BC 21106002 */  addu       $v0, $s3, $zero
/* 2FBC0 8003F3C0 3800BF8F */  lw         $ra, 0x38($sp)
/* 2FBC4 8003F3C4 3400B58F */  lw         $s5, 0x34($sp)
/* 2FBC8 8003F3C8 3000B48F */  lw         $s4, 0x30($sp)
/* 2FBCC 8003F3CC 2C00B38F */  lw         $s3, 0x2C($sp)
/* 2FBD0 8003F3D0 2800B28F */  lw         $s2, 0x28($sp)
/* 2FBD4 8003F3D4 2400B18F */  lw         $s1, 0x24($sp)
/* 2FBD8 8003F3D8 2000B08F */  lw         $s0, 0x20($sp)
/* 2FBDC 8003F3DC 0800E003 */  jr         $ra
/* 2FBE0 8003F3E0 4000BD27 */   addiu     $sp, $sp, 0x40
.size SpawnGetClosest, . - SpawnGetClosest
