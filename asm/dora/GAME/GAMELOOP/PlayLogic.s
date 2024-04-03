.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PlayLogic
/* 23918 80033118 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2391C 8003311C 1000BFAF */  sw         $ra, 0x10($sp)
/* 23920 80033120 F9FB000C */  jal        ResetCollisionList
/* 23924 80033124 00000000 */   nop
/* 23928 80033128 D4D3000C */  jal        BootsBrains
/* 2392C 8003312C 00000000 */   nop
/* 23930 80033130 0980043C */  lui        $a0, %hi(ScrollCamXPos)
/* 23934 80033134 4843848C */  lw         $a0, %lo(ScrollCamXPos)($a0)
/* 23938 80033138 0980053C */  lui        $a1, %hi(ScrollCamYPos)
/* 2393C 8003313C 4C43A58C */  lw         $a1, %lo(ScrollCamYPos)($a1)
/* 23940 80033140 0980063C */  lui        $a2, %hi(ScrollCamZPos)
/* 23944 80033144 5043C68C */  lw         $a2, %lo(ScrollCamZPos)($a2)
/* 23948 80033148 170B010C */  jal        CheckSpawn
/* 2394C 8003314C 00000000 */   nop
/* 23950 80033150 3609010C */  jal        ServiceSpawnListBrains
/* 23954 80033154 00000000 */   nop
/* 23958 80033158 2DBF000C */  jal        ParticleBrainService
/* 2395C 8003315C 00000000 */   nop
/* 23960 80033160 2014838F */  lw         $v1, %gp_rel(gGameState)($gp)
/* 23964 80033164 0A000224 */  addiu      $v0, $zero, 0xA
/* 23968 80033168 03006210 */  beq        $v1, $v0, .L80033178
/* 2396C 8003316C 00000000 */   nop
/* 23970 80033170 34FF000C */  jal        CheckTriggers
/* 23974 80033174 00000000 */   nop
.L80033178:
/* 23978 80033178 CA02010C */  jal        CheckCameraTriggers
/* 2397C 8003317C 00000000 */   nop
/* 23980 80033180 5A95010C */  jal        AnimateWorldCells
/* 23984 80033184 00000000 */   nop
/* 23988 80033188 1000BF8F */  lw         $ra, 0x10($sp)
/* 2398C 8003318C 00000000 */  nop
/* 23990 80033190 0800E003 */  jr         $ra
/* 23994 80033194 1800BD27 */   addiu     $sp, $sp, 0x18
.size PlayLogic, . - PlayLogic
