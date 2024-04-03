.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckMovieRequest
/* 3FA7C 8004F27C 1C0F828F */  lw         $v0, %gp_rel(requestMovieFlag)($gp)
/* 3FA80 8004F280 70FFBD27 */  addiu      $sp, $sp, -0x90
/* 3FA84 8004F284 8C00BFAF */  sw         $ra, 0x8C($sp)
/* 3FA88 8004F288 8800B4AF */  sw         $s4, 0x88($sp)
/* 3FA8C 8004F28C 8400B3AF */  sw         $s3, 0x84($sp)
/* 3FA90 8004F290 8000B2AF */  sw         $s2, 0x80($sp)
/* 3FA94 8004F294 7C00B1AF */  sw         $s1, 0x7C($sp)
/* 3FA98 8004F298 03004014 */  bnez       $v0, .L8004F2A8
/* 3FA9C 8004F29C 7800B0AF */   sw        $s0, 0x78($sp)
/* 3FAA0 8004F2A0 233D0108 */  j          .L8004F48C
/* 3FAA4 8004F2A4 21100000 */   addu      $v0, $zero, $zero
.L8004F2A8:
/* 3FAA8 8004F2A8 CF7B010C */  jal        StopXA_Music
/* 3FAAC 8004F2AC 01001424 */   addiu     $s4, $zero, 0x1
/* 3FAB0 8004F2B0 893A010C */  jal        ResetCelMem
/* 3FAB4 8004F2B4 00000000 */   nop
/* 3FAB8 8004F2B8 200F938F */  lw         $s3, %gp_rel(requestMovieIndex)($gp)
/* 3FABC 8004F2BC 1C0F80AF */  sw         $zero, %gp_rel(requestMovieFlag)($gp)
/* 3FAC0 8004F2C0 0980013C */  lui        $at, %hi(FreezeGame)
/* 3FAC4 8004F2C4 B44A34AC */  sw         $s4, %lo(FreezeGame)($at)
/* 3FAC8 8004F2C8 656D010C */  jal        GraphicsSetAutoClear
/* 3FACC 8004F2CC 21200000 */   addu      $a0, $zero, $zero
/* 3FAD0 8004F2D0 2C0F828F */  lw         $v0, %gp_rel(Ring_Buff)($gp)
/* 3FAD4 8004F2D4 240F94AF */  sw         $s4, %gp_rel(MovieOnFlag)($gp)
/* 3FAD8 8004F2D8 0980013C */  lui        $at, %hi(Pad0)
/* 3FADC 8004F2DC 2C5920A4 */  sh         $zero, %lo(Pad0)($at)
/* 3FAE0 8004F2E0 67004010 */  beqz       $v0, .L8004F480
/* 3FAE4 8004F2E4 21200000 */   addu      $a0, $zero, $zero
/* 3FAE8 8004F2E8 FF00053C */  lui        $a1, (0xFFFFFF >> 16)
/* 3FAEC 8004F2EC 0F05020C */  jal        SpuSetKey
/* 3FAF0 8004F2F0 FFFFA534 */   ori       $a1, $a1, (0xFFFFFF & 0xFFFF)
/* 3FAF4 8004F2F4 AF02020C */  jal        SpuQuit
/* 3FAF8 8004F2F8 FF3F1024 */   addiu     $s0, $zero, 0x3FFF
/* 3FAFC 8004F2FC 73FF010C */  jal        SpuInit
/* 3FB00 8004F300 C0981300 */   sll       $s3, $s3, 3
/* 3FB04 8004F304 73FF010C */  jal        SpuInit
/* 3FB08 8004F308 0A80113C */   lui       $s1, %hi(MovieCdl)
/* 3FB0C 8004F30C 04000424 */  addiu      $a0, $zero, 0x4
/* 3FB10 8004F310 0A80053C */  lui        $a1, %hi(mov_spu_malloc_rec)
/* 3FB14 8004F314 D302020C */  jal        SpuInitMalloc
/* 3FB18 8004F318 1075A524 */   addiu     $a1, $a1, %lo(mov_spu_malloc_rec)
/* 3FB1C 8004F31C 5000A427 */  addiu      $a0, $sp, 0x50
/* 3FB20 8004F320 03000224 */  addiu      $v0, $zero, 0x3
/* 3FB24 8004F324 5000A2AF */  sw         $v0, 0x50($sp)
/* 3FB28 8004F328 5400B0A7 */  sh         $s0, 0x54($sp)
/* 3FB2C 8004F32C 2708020C */  jal        SpuSetCommonAttr
/* 3FB30 8004F330 5600B0A7 */   sh        $s0, 0x56($sp)
/* 3FB34 8004F334 AF05020C */  jal        SpuSetTransferMode
/* 3FB38 8004F338 21200000 */   addu      $a0, $zero, $zero
/* 3FB3C 8004F33C 1000A427 */  addiu      $a0, $sp, 0x10
/* 3FB40 8004F340 7F000224 */  addiu      $v0, $zero, 0x7F
/* 3FB44 8004F344 440F82A3 */  sb         $v0, %gp_rel(movie_volume)($gp)
/* 3FB48 8004F348 C3020224 */  addiu      $v0, $zero, 0x2C3
/* 3FB4C 8004F34C 1000A2AF */  sw         $v0, 0x10($sp)
/* 3FB50 8004F350 FF3F0224 */  addiu      $v0, $zero, 0x3FFF
/* 3FB54 8004F354 1400B0A7 */  sh         $s0, 0x14($sp)
/* 3FB58 8004F358 1600B0A7 */  sh         $s0, 0x16($sp)
/* 3FB5C 8004F35C 2800B4AF */  sw         $s4, 0x28($sp)
/* 3FB60 8004F360 2200A2A7 */  sh         $v0, 0x22($sp)
/* 3FB64 8004F364 2708020C */  jal        SpuSetCommonAttr
/* 3FB68 8004F368 2000A2A7 */   sh        $v0, 0x20($sp)
/* 3FB6C 8004F36C 0880103C */  lui        $s0, %hi(MovieTable)
/* 3FB70 8004F370 24681026 */  addiu      $s0, $s0, %lo(MovieTable)
/* 3FB74 8004F374 21107002 */  addu       $v0, $s3, $s0
/* 3FB78 8004F378 D8743126 */  addiu      $s1, $s1, %lo(MovieCdl)
/* 3FB7C 8004F37C 0000458C */  lw         $a1, 0x0($v0)
/* 3FB80 8004F380 0957010C */  jal        CDFile_CdSearchFile
/* 3FB84 8004F384 21202002 */   addu      $a0, $s1, $zero
/* 3FB88 8004F388 21204000 */  addu       $a0, $v0, $zero
/* 3FB8C 8004F38C 21282002 */  addu       $a1, $s1, $zero
/* 3FB90 8004F390 0A80123C */  lui        $s2, %hi(TheMovie)
/* 3FB94 8004F394 21801302 */  addu       $s0, $s0, $s3
/* 3FB98 8004F398 F07442AE */  sw         $v0, %lo(TheMovie)($s2)
/* 3FB9C 8004F39C 0400028E */  lw         $v0, 0x4($s0)
/* 3FBA0 8004F3A0 F0745026 */  addiu      $s0, $s2, %lo(TheMovie)
/* 3FBA4 8004F3A4 3756010C */  jal        _ByteToPos
/* 3FBA8 8004F3A8 080002AE */   sw        $v0, 0x8($s0)
/* 3FBAC 8004F3AC B7C8010C */  jal        CdPosToInt
/* 3FBB0 8004F3B0 21202002 */   addu      $a0, $s1, $zero
/* 3FBB4 8004F3B4 1E000324 */  addiu      $v1, $zero, 0x1E
/* 3FBB8 8004F3B8 F07442AE */  sw         $v0, %lo(TheMovie)($s2)
/* 3FBBC 8004F3BC 0C0003AE */  sw         $v1, 0xC($s0)
/* 3FBC0 8004F3C0 40000324 */  addiu      $v1, $zero, 0x40
/* 3FBC4 8004F3C4 040000AE */  sw         $zero, 0x4($s0)
/* 3FBC8 8004F3C8 140000AE */  sw         $zero, 0x14($s0)
/* 3FBCC 8004F3CC 180003AE */  sw         $v1, 0x18($s0)
/* 3FBD0 8004F3D0 1C0014AE */  sw         $s4, 0x1C($s0)
/* 3FBD4 8004F3D4 280F94AF */  sw         $s4, %gp_rel(MovieSpeed)($gp)
/* 3FBD8 8004F3D8 03004010 */  beqz       $v0, .L8004F3E8
/* 3FBDC 8004F3DC 21200002 */   addu      $a0, $s0, $zero
/* 3FBE0 8004F3E0 B43A010C */  jal        InitMovie
/* 3FBE4 8004F3E4 21280000 */   addu      $a1, $zero, $zero
.L8004F3E8:
/* 3FBE8 8004F3E8 656D010C */  jal        GraphicsSetAutoClear
/* 3FBEC 8004F3EC 21200000 */   addu      $a0, $zero, $zero
/* 3FBF0 8004F3F0 01001124 */  addiu      $s1, $zero, 0x1
/* 3FBF4 8004F3F4 033D0108 */  j          .L8004F40C
/* 3FBF8 8004F3F8 21900002 */   addu      $s2, $s0, $zero
.L8004F3FC:
/* 3FBFC 8004F3FC 8F64010C */  jal        readControllers
/* 3FC00 8004F400 00000000 */   nop
/* 3FC04 8004F404 7C3B010C */  jal        MovieHandler
/* 3FC08 8004F408 00000000 */   nop
.L8004F40C:
/* 3FC0C 8004F40C 640F838F */  lw         $v1, %gp_rel(MovieNoSkip)($gp)
/* 3FC10 8004F410 00000000 */  nop
/* 3FC14 8004F414 0F007110 */  beq        $v1, $s1, .L8004F454
/* 3FC18 8004F418 00000000 */   nop
/* 3FC1C 8004F41C 0980023C */  lui        $v0, %hi(Pad0)
/* 3FC20 8004F420 2C594294 */  lhu        $v0, %lo(Pad0)($v0)
/* 3FC24 8004F424 00000000 */  nop
/* 3FC28 8004F428 08104230 */  andi       $v0, $v0, 0x1008
/* 3FC2C 8004F42C 03004014 */  bnez       $v0, .L8004F43C
/* 3FC30 8004F430 00000000 */   nop
/* 3FC34 8004F434 07006010 */  beqz       $v1, .L8004F454
/* 3FC38 8004F438 00000000 */   nop
.L8004F43C:
/* 3FC3C 8004F43C 9815828F */  lw         $v0, %gp_rel(CurrentMovieFrame)($gp)
/* 3FC40 8004F440 0C00438E */  lw         $v1, 0xC($s2)
/* 3FC44 8004F444 240F848F */  lw         $a0, %gp_rel(MovieOnFlag)($gp)
/* 3FC48 8004F448 2A104300 */  slt        $v0, $v0, $v1
/* 3FC4C 8004F44C 05004010 */  beqz       $v0, .L8004F464
/* 3FC50 8004F450 00000000 */   nop
.L8004F454:
/* 3FC54 8004F454 240F848F */  lw         $a0, %gp_rel(MovieOnFlag)($gp)
/* 3FC58 8004F458 00000000 */  nop
/* 3FC5C 8004F45C E7FF9110 */  beq        $a0, $s1, .L8004F3FC
/* 3FC60 8004F460 00000000 */   nop
.L8004F464:
/* 3FC64 8004F464 03008010 */  beqz       $a0, .L8004F474
/* 3FC68 8004F468 00000000 */   nop
/* 3FC6C 8004F46C 533E010C */  jal        prepareExit
/* 3FC70 8004F470 00000000 */   nop
.L8004F474:
/* 3FC74 8004F474 240F80AF */  sw         $zero, %gp_rel(MovieOnFlag)($gp)
/* 3FC78 8004F478 0980013C */  lui        $at, %hi(FreezeGame)
/* 3FC7C 8004F47C B44A20AC */  sw         $zero, %lo(FreezeGame)($at)
.L8004F480:
/* 3FC80 8004F480 656D010C */  jal        GraphicsSetAutoClear
/* 3FC84 8004F484 21200000 */   addu      $a0, $zero, $zero
/* 3FC88 8004F488 01000224 */  addiu      $v0, $zero, 0x1
.L8004F48C:
/* 3FC8C 8004F48C 8C00BF8F */  lw         $ra, 0x8C($sp)
/* 3FC90 8004F490 8800B48F */  lw         $s4, 0x88($sp)
/* 3FC94 8004F494 8400B38F */  lw         $s3, 0x84($sp)
/* 3FC98 8004F498 8000B28F */  lw         $s2, 0x80($sp)
/* 3FC9C 8004F49C 7C00B18F */  lw         $s1, 0x7C($sp)
/* 3FCA0 8004F4A0 7800B08F */  lw         $s0, 0x78($sp)
/* 3FCA4 8004F4A4 0800E003 */  jr         $ra
/* 3FCA8 8004F4A8 9000BD27 */   addiu     $sp, $sp, 0x90
.size CheckMovieRequest, . - CheckMovieRequest
