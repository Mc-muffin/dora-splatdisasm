.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitLevel
/* 21C24 80031424 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 21C28 80031428 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 21C2C 8003142C 1800B2AF */  sw         $s2, 0x18($sp)
/* 21C30 80031430 1400B1AF */  sw         $s1, 0x14($sp)
/* 21C34 80031434 1000B0AF */  sw         $s0, 0x10($sp)
/* 21C38 80031438 081480AF */  sw         $zero, %gp_rel(gSection)($gp)
/* 21C3C 8003143C F9FB000C */  jal        ResetCollisionList
/* 21C40 80031440 0980113C */   lui       $s1, %hi(ETActor)
/* 21C44 80031444 0814848F */  lw         $a0, %gp_rel(gSection)($gp)
/* 21C48 80031448 B357000C */  jal        SetETPosition
/* 21C4C 8003144C B05A3026 */   addiu     $s0, $s1, %lo(ETActor)
/* 21C50 80031450 E862000C */  jal        ETBrains
/* 21C54 80031454 21200002 */   addu      $a0, $s0, $zero
/* 21C58 80031458 B667000C */  jal        ETCleanUpBrains
/* 21C5C 8003145C 21200002 */   addu      $a0, $s0, $zero
/* 21C60 80031460 D813848F */  lw         $a0, %gp_rel(gWorld)($gp)
/* 21C64 80031464 D013858F */  lw         $a1, %gp_rel(gLevel)($gp)
/* 21C68 80031468 0ADB000C */  jal        InitActorPoolEngine
/* 21C6C 8003146C 13001224 */   addiu     $s2, $zero, 0x13
/* 21C70 80031470 EB0B010C */  jal        InitSpawnActors
/* 21C74 80031474 00000000 */   nop
/* 21C78 80031478 580880AF */  sw         $zero, %gp_rel(LevelCompletionFlag)($gp)
/* 21C7C 8003147C F866010C */  jal        ClearJoyPad
/* 21C80 80031480 00000000 */   nop
/* 21C84 80031484 21200000 */  addu       $a0, $zero, $zero
/* 21C88 80031488 B05A20AE */  sw         $zero, %lo(ETActor)($s1)
/* 21C8C 8003148C 040000AE */  sw         $zero, 0x4($s0)
/* 21C90 80031490 07ED000C */  jal        SetAggressive
/* 21C94 80031494 080000AE */   sw        $zero, 0x8($s0)
/* 21C98 80031498 F7EC000C */  jal        SetLocaleAggressive
/* 21C9C 8003149C 21200000 */   addu      $a0, $zero, $zero
.L800314A0:
/* 21CA0 800314A0 A1E8000C */  jal        CameraMan
/* 21CA4 800314A4 FFFF5226 */   addiu     $s2, $s2, -0x1
/* 21CA8 800314A8 1E5F000C */  jal        CalculateScrollPosition
/* 21CAC 800314AC 00000000 */   nop
/* 21CB0 800314B0 16EB000C */  jal        UpdateCamera
/* 21CB4 800314B4 00000000 */   nop
/* 21CB8 800314B8 4AE9000C */  jal        UpdateCameraMatrix
/* 21CBC 800314BC 00000000 */   nop
/* 21CC0 800314C0 F7FF4106 */  bgez       $s2, .L800314A0
/* 21CC4 800314C4 00000000 */   nop
/* 21CC8 800314C8 C093010C */  jal        InitCellDepthTables
/* 21CCC 800314CC 13001024 */   addiu     $s0, $zero, 0x13
/* 21CD0 800314D0 B357000C */  jal        SetETPosition
/* 21CD4 800314D4 21200000 */   addu      $a0, $zero, $zero
/* 21CD8 800314D8 B357000C */  jal        SetETPosition
/* 21CDC 800314DC 21200000 */   addu      $a0, $zero, $zero
/* 21CE0 800314E0 07ED000C */  jal        SetAggressive
/* 21CE4 800314E4 21200000 */   addu      $a0, $zero, $zero
/* 21CE8 800314E8 F7EC000C */  jal        SetLocaleAggressive
/* 21CEC 800314EC 21200000 */   addu      $a0, $zero, $zero
.L800314F0:
/* 21CF0 800314F0 A1E8000C */  jal        CameraMan
/* 21CF4 800314F4 FFFF1026 */   addiu     $s0, $s0, -0x1
/* 21CF8 800314F8 1E5F000C */  jal        CalculateScrollPosition
/* 21CFC 800314FC 00000000 */   nop
/* 21D00 80031500 16EB000C */  jal        UpdateCamera
/* 21D04 80031504 00000000 */   nop
/* 21D08 80031508 4AE9000C */  jal        UpdateCameraMatrix
/* 21D0C 8003150C 00000000 */   nop
/* 21D10 80031510 F7FF0106 */  bgez       $s0, .L800314F0
/* 21D14 80031514 00000000 */   nop
/* 21D18 80031518 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 21D1C 8003151C 1800B28F */  lw         $s2, 0x18($sp)
/* 21D20 80031520 1400B18F */  lw         $s1, 0x14($sp)
/* 21D24 80031524 1000B08F */  lw         $s0, 0x10($sp)
/* 21D28 80031528 0800E003 */  jr         $ra
/* 21D2C 8003152C 2000BD27 */   addiu     $sp, $sp, 0x20
.size InitLevel, . - InitLevel
