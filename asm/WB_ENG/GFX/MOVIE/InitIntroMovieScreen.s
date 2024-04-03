.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitIntroMovieScreen
/* 402D8 8004FAD8 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 402DC 8004FADC 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 402E0 8004FAE0 5D67010C */  jal        InitOrderingTables
/* 402E4 8004FAE4 2800B0AF */   sw        $s0, 0x28($sp)
/* 402E8 8004FAE8 40010224 */  addiu      $v0, $zero, 0x140
/* 402EC 8004FAEC F0001024 */  addiu      $s0, $zero, 0xF0
/* 402F0 8004FAF0 1000A427 */  addiu      $a0, $sp, 0x10
/* 402F4 8004FAF4 1800A527 */  addiu      $a1, $sp, 0x18
/* 402F8 8004FAF8 2000A627 */  addiu      $a2, $sp, 0x20
/* 402FC 8004FAFC 01000724 */  addiu      $a3, $zero, 0x1
/* 40300 8004FB00 1000A0A7 */  sh         $zero, 0x10($sp)
/* 40304 8004FB04 1200A0A7 */  sh         $zero, 0x12($sp)
/* 40308 8004FB08 1400A2A7 */  sh         $v0, 0x14($sp)
/* 4030C 8004FB0C 1600B0A7 */  sh         $s0, 0x16($sp)
/* 40310 8004FB10 1800A0A7 */  sh         $zero, 0x18($sp)
/* 40314 8004FB14 1A00B0A7 */  sh         $s0, 0x1A($sp)
/* 40318 8004FB18 1C00A2A7 */  sh         $v0, 0x1C($sp)
/* 4031C 8004FB1C 1E00B0A7 */  sh         $s0, 0x1E($sp)
/* 40320 8004FB20 2200A0A3 */  sb         $zero, 0x22($sp)
/* 40324 8004FB24 2100A0A3 */  sb         $zero, 0x21($sp)
/* 40328 8004FB28 F867010C */  jal        SetupScreens
/* 4032C 8004FB2C 2000A0A3 */   sb        $zero, 0x20($sp)
/* 40330 8004FB30 0B80023C */  lui        $v0, %hi(gDoubleBuffer)
/* 40334 8004FB34 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 40338 8004FB38 78B94224 */  addiu      $v0, $v0, %lo(gDoubleBuffer)
/* 4033C 8004FB3C 6A0050A4 */  sh         $s0, 0x6A($v0)
/* 40340 8004FB40 EA0050A4 */  sh         $s0, 0xEA($v0)
/* 40344 8004FB44 2800B08F */  lw         $s0, 0x28($sp)
/* 40348 8004FB48 0800E003 */  jr         $ra
/* 4034C 8004FB4C 3000BD27 */   addiu     $sp, $sp, 0x30
.size InitIntroMovieScreen, . - InitIntroMovieScreen
