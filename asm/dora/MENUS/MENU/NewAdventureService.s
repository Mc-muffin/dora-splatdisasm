.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel NewAdventureService
/* 18938 80028138 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 1893C 8002813C 1400BFAF */  sw         $ra, 0x14($sp)
/* 18940 80028140 1000B0AF */  sw         $s0, 0x10($sp)
/* 18944 80028144 0980013C */  lui        $at, %hi(CurrentCameraEnum)
/* 18948 80028148 B04C20AC */  sw         $zero, %lo(CurrentCameraEnum)($at)
/* 1894C 8002814C 0980013C */  lui        $at, %hi(CurrentTaskerState)
/* 18950 80028150 D85120AC */  sw         $zero, %lo(CurrentTaskerState)($at)
/* 18954 80028154 0980013C */  lui        $at, %hi(RequestTaskerState)
/* 18958 80028158 DC5120AC */  sw         $zero, %lo(RequestTaskerState)($at)
/* 1895C 8002815C 6F5B010C */  jal        StopRedbook
/* 18960 80028160 00000000 */   nop
/* 18964 80028164 0880033C */  lui        $v1, %hi(WorldList)
/* 18968 80028168 6C646324 */  addiu      $v1, $v1, %lo(WorldList)
/* 1896C 8002816C 8407848F */  lw         $a0, %gp_rel(gmenuworld)($gp)
/* 18970 80028170 8C07858F */  lw         $a1, %gp_rel(gmemcardload)($gp)
/* 18974 80028174 80100400 */  sll        $v0, $a0, 2
/* 18978 80028178 21104400 */  addu       $v0, $v0, $a0
/* 1897C 8002817C 80100200 */  sll        $v0, $v0, 2
/* 18980 80028180 21104300 */  addu       $v0, $v0, $v1
/* 18984 80028184 8807848F */  lw         $a0, %gp_rel(gmenulevel)($gp)
/* 18988 80028188 0000438C */  lw         $v1, 0x0($v0)
/* 1898C 8002818C 0980013C */  lui        $at, %hi(gLevel)
/* 18990 80028190 345624AC */  sw         $a0, %lo(gLevel)($at)
/* 18994 80028194 0980013C */  lui        $at, %hi(gWorld)
/* 18998 80028198 3C5623AC */  sw         $v1, %lo(gWorld)($at)
/* 1899C 8002819C 0C00A014 */  bnez       $a1, .L800281D0
/* 189A0 800281A0 64000324 */   addiu     $v1, $zero, 0x64
/* 189A4 800281A4 6807828F */  lw         $v0, %gp_rel(HundredLivesCheat)($gp)
/* 189A8 800281A8 0980013C */  lui        $at, %hi(Game_Health)
/* 189AC 800281AC 8C4223AC */  sw         $v1, %lo(Game_Health)($at)
/* 189B0 800281B0 05004010 */  beqz       $v0, .L800281C8
/* 189B4 800281B4 03000224 */   addiu     $v0, $zero, 0x3
/* 189B8 800281B8 0980013C */  lui        $at, %hi(Game_Lives)
/* 189BC 800281BC 904223AC */  sw         $v1, %lo(Game_Lives)($at)
/* 189C0 800281C0 74A00008 */  j          .L800281D0
/* 189C4 800281C4 00000000 */   nop
.L800281C8:
/* 189C8 800281C8 0980013C */  lui        $at, %hi(Game_Lives)
/* 189CC 800281CC 904222AC */  sw         $v0, %lo(Game_Lives)($at)
.L800281D0:
/* 189D0 800281D0 F7C3000C */  jal        GameLoop_Init
/* 189D4 800281D4 0980103C */   lui       $s0, %hi(ETActor)
/* 189D8 800281D8 0980033C */  lui        $v1, %hi(gWorld)
/* 189DC 800281DC 3C56638C */  lw         $v1, %lo(gWorld)($v1)
/* 189E0 800281E0 0980023C */  lui        $v0, %hi(gLevel)
/* 189E4 800281E4 3456428C */  lw         $v0, %lo(gLevel)($v0)
/* 189E8 800281E8 9C0780AF */  sw         $zero, %gp_rel(LevelLoaded)($gp)
/* 189EC 800281EC A00783AF */  sw         $v1, %gp_rel(oldgWorld)($gp)
/* 189F0 800281F0 A40782AF */  sw         $v0, %gp_rel(oldgLevel)($gp)
/* 189F4 800281F4 E4CC000C */  jal        SetBeamDownSequence
/* 189F8 800281F8 B05A1026 */   addiu     $s0, $s0, %lo(ETActor)
/* 189FC 800281FC 0980013C */  lui        $at, %hi(Pad0)
/* 18A00 80028200 2C5920A4 */  sh         $zero, %lo(Pad0)($at)
/* 18A04 80028204 0980013C */  lui        $at, %hi(Trg0)
/* 18A08 80028208 305920A4 */  sh         $zero, %lo(Trg0)($at)
/* 18A0C 8002820C E862000C */  jal        ETBrains
/* 18A10 80028210 21200002 */   addu      $a0, $s0, $zero
/* 18A14 80028214 B667000C */  jal        ETCleanUpBrains
/* 18A18 80028218 21200002 */   addu      $a0, $s0, $zero
/* 18A1C 8002821C 117A000C */  jal        HUDOn
/* 18A20 80028220 00000000 */   nop
/* 18A24 80028224 1400BF8F */  lw         $ra, 0x14($sp)
/* 18A28 80028228 1000B08F */  lw         $s0, 0x10($sp)
/* 18A2C 8002822C 0800E003 */  jr         $ra
/* 18A30 80028230 1800BD27 */   addiu     $sp, $sp, 0x18
.size NewAdventureService, . - NewAdventureService
