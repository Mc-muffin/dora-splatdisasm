.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitMovie
/* 3F2D0 8004EAD0 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 3F2D4 8004EAD4 2400B3AF */  sw         $s3, 0x24($sp)
/* 3F2D8 8004EAD8 01001324 */  addiu      $s3, $zero, 0x1
/* 3F2DC 8004EADC 0A80023C */  lui        $v0, %hi(dec)
/* 3F2E0 8004EAE0 1800B0AF */  sw         $s0, 0x18($sp)
/* 3F2E4 8004EAE4 606B5024 */  addiu      $s0, $v0, %lo(dec)
/* 3F2E8 8004EAE8 21188000 */  addu       $v1, $a0, $zero
/* 3F2EC 8004EAEC 3000BFAF */  sw         $ra, 0x30($sp)
/* 3F2F0 8004EAF0 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 3F2F4 8004EAF4 2800B4AF */  sw         $s4, 0x28($sp)
/* 3F2F8 8004EAF8 2000B2AF */  sw         $s2, 0x20($sp)
/* 3F2FC 8004EAFC 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 3F300 8004EB00 240F93AF */  sw         $s3, %gp_rel(MovieOnFlag)($gp)
/* 3F304 8004EB04 981580AF */  sw         $zero, %gp_rel(CurrentMovieFrame)($gp)
/* 3F308 8004EB08 380000AE */  sw         $zero, 0x38($s0)
/* 3F30C 8004EB0C 0000648C */  lw         $a0, 0x0($v1)
/* 3F310 8004EB10 480F80AF */  sw         $zero, %gp_rel(VideoReady)($gp)
/* 3F314 8004EB14 51008010 */  beqz       $a0, .L8004EC5C
/* 3F318 8004EB18 21A84000 */   addu      $s5, $v0, $zero
/* 3F31C 8004EB1C 02001124 */  addiu      $s1, $zero, 0x2
/* 3F320 8004EB20 0A80023C */  lui        $v0, %hi(file)
/* 3F324 8004EB24 406B5224 */  addiu      $s2, $v0, %lo(file)
/* 3F328 8004EB28 A01583AF */  sw         $v1, %gp_rel(this_movie)($gp)
/* 3F32C 8004EB2C 3C0F80AF */  sw         $zero, %gp_rel(CurrentFrame)($gp)
/* 3F330 8004EB30 400F80AF */  sw         $zero, %gp_rel(LastFrame)($gp)
/* 3F334 8004EB34 380F80AF */  sw         $zero, %gp_rel(AfterCount)($gp)
/* 3F338 8004EB38 4BD2010C */  jal        CdIntToPos
/* 3F33C 8004EB3C 21284002 */   addu      $a1, $s2, $zero
/* 3F340 8004EB40 379F010C */  jal        DecDCTvlcBuild3
/* 3F344 8004EB44 00000000 */   nop
/* 3F348 8004EB48 4A9F010C */  jal        DecDCTvlcSize3
/* 3F34C 8004EB4C 21200000 */   addu      $a0, $zero, $zero
/* 3F350 8004EB50 0A80033C */  lui        $v1, %hi(TheMovie)
/* 3F354 8004EB54 F0746224 */  addiu      $v0, $v1, %lo(TheMovie)
/* 3F358 8004EB58 1C00428C */  lw         $v0, 0x1C($v0)
/* 3F35C 8004EB5C 00000000 */  nop
/* 3F360 8004EB60 13004010 */  beqz       $v0, .L8004EBB0
/* 3F364 8004EB64 21A06000 */   addu      $s4, $v1, $zero
/* 3F368 8004EB68 1F005314 */  bne        $v0, $s3, .L8004EBE8
/* 3F36C 8004EB6C 21200002 */   addu      $a0, $s0, $zero
/* 3F370 8004EB70 A015828F */  lw         $v0, %gp_rel(this_movie)($gp)
/* 3F374 8004EB74 00000000 */  nop
/* 3F378 8004EB78 1800438C */  lw         $v1, 0x18($v0)
/* 3F37C 8004EB7C 00000000 */  nop
/* 3F380 8004EB80 F0006324 */  addiu      $v1, $v1, 0xF0
/* 3F384 8004EB84 1000A3AF */  sw         $v1, 0x10($sp)
/* 3F388 8004EB88 1400458C */  lw         $a1, 0x14($v0)
/* 3F38C 8004EB8C 1800468C */  lw         $a2, 0x18($v0)
/* 3F390 8004EB90 6E3D010C */  jal        strSetDefDecEnv
/* 3F394 8004EB94 2138A000 */   addu      $a3, $a1, $zero
/* 3F398 8004EB98 21204002 */  addu       $a0, $s2, $zero
/* 3F39C 8004EB9C 0580053C */  lui        $a1, %hi(strCallback)
/* 3F3A0 8004EBA0 903D010C */  jal        strInit
/* 3F3A4 8004EBA4 88F0A524 */   addiu     $a1, $a1, %lo(strCallback)
/* 3F3A8 8004EBA8 FA3A0108 */  j          .L8004EBE8
/* 3F3AC 8004EBAC 00000000 */   nop
.L8004EBB0:
/* 3F3B0 8004EBB0 A015828F */  lw         $v0, %gp_rel(this_movie)($gp)
/* 3F3B4 8004EBB4 00000000 */  nop
/* 3F3B8 8004EBB8 1800438C */  lw         $v1, 0x18($v0)
/* 3F3BC 8004EBBC 21200002 */  addu       $a0, $s0, $zero
/* 3F3C0 8004EBC0 C0006324 */  addiu      $v1, $v1, 0xC0
/* 3F3C4 8004EBC4 1000A3AF */  sw         $v1, 0x10($sp)
/* 3F3C8 8004EBC8 1400458C */  lw         $a1, 0x14($v0)
/* 3F3CC 8004EBCC 1800468C */  lw         $a2, 0x18($v0)
/* 3F3D0 8004EBD0 6E3D010C */  jal        strSetDefDecEnv
/* 3F3D4 8004EBD4 2138A000 */   addu      $a3, $a1, $zero
/* 3F3D8 8004EBD8 21204002 */  addu       $a0, $s2, $zero
/* 3F3DC 8004EBDC 0580053C */  lui        $a1, %hi(strCallback)
/* 3F3E0 8004EBE0 903D010C */  jal        strInit
/* 3F3E4 8004EBE4 88F0A524 */   addiu     $a1, $a1, %lo(strCallback)
.L8004EBE8:
/* 3F3E8 8004EBE8 AD3D010C */  jal        strNextVlc
/* 3F3EC 8004EBEC 606BA426 */   addiu     $a0, $s5, %lo(dec)
/* 3F3F0 8004EBF0 03004014 */  bnez       $v0, .L8004EC00
/* 3F3F4 8004EBF4 02001024 */   addiu     $s0, $zero, 0x2
/* 3F3F8 8004EBF8 173B0108 */  j          .L8004EC5C
/* 3F3FC 8004EBFC 02000224 */   addiu     $v0, $zero, 0x2
.L8004EC00:
/* 3F400 8004EC00 16003016 */  bne        $s1, $s0, .L8004EC5C
/* 3F404 8004EC04 21102002 */   addu      $v0, $s1, $zero
/* 3F408 8004EC08 7C3B010C */  jal        MovieHandler
/* 3F40C 8004EC0C 02001224 */   addiu     $s2, $zero, 0x2
/* 3F410 8004EC10 21884000 */  addu       $s1, $v0, $zero
/* 3F414 8004EC14 11003016 */  bne        $s1, $s0, .L8004EC5C
/* 3F418 8004EC18 21102002 */   addu      $v0, $s1, $zero
/* 3F41C 8004EC1C 7C3B010C */  jal        MovieHandler
/* 3F420 8004EC20 00000000 */   nop
/* 3F424 8004EC24 21884000 */  addu       $s1, $v0, $zero
/* 3F428 8004EC28 0C003216 */  bne        $s1, $s2, .L8004EC5C
/* 3F42C 8004EC2C 21102002 */   addu      $v0, $s1, $zero
/* 3F430 8004EC30 5FC8010C */  jal        CdInit
/* 3F434 8004EC34 00000000 */   nop
/* 3F438 8004EC38 F0748326 */  addiu      $v1, $s4, %lo(TheMovie)
/* 3F43C 8004EC3C 1C00628C */  lw         $v0, 0x1C($v1)
/* 3F440 8004EC40 00000000 */  nop
/* 3F444 8004EC44 05005110 */  beq        $v0, $s1, .L8004EC5C
/* 3F448 8004EC48 21102002 */   addu      $v0, $s1, $zero
/* 3F44C 8004EC4C 7C3B010C */  jal        MovieHandler
/* 3F450 8004EC50 00000000 */   nop
/* 3F454 8004EC54 21884000 */  addu       $s1, $v0, $zero
/* 3F458 8004EC58 21102002 */  addu       $v0, $s1, $zero
.L8004EC5C:
/* 3F45C 8004EC5C 3000BF8F */  lw         $ra, 0x30($sp)
/* 3F460 8004EC60 2C00B58F */  lw         $s5, 0x2C($sp)
/* 3F464 8004EC64 2800B48F */  lw         $s4, 0x28($sp)
/* 3F468 8004EC68 2400B38F */  lw         $s3, 0x24($sp)
/* 3F46C 8004EC6C 2000B28F */  lw         $s2, 0x20($sp)
/* 3F470 8004EC70 1C00B18F */  lw         $s1, 0x1C($sp)
/* 3F474 8004EC74 1800B08F */  lw         $s0, 0x18($sp)
/* 3F478 8004EC78 0800E003 */  jr         $ra
/* 3F47C 8004EC7C 3800BD27 */   addiu     $sp, $sp, 0x38
.size InitMovie, . - InitMovie
