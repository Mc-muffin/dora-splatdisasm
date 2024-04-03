.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckForEndOfLevel
/* 10CB8 800204B8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 10CBC 800204BC 0980023C */  lui        $v0, %hi(ETActor)
/* 10CC0 800204C0 B05A4524 */  addiu      $a1, $v0, %lo(ETActor)
/* 10CC4 800204C4 0980033C */  lui        $v1, %hi(gGameState)
/* 10CC8 800204C8 8456638C */  lw         $v1, %lo(gGameState)($v1)
/* 10CCC 800204CC 06000224 */  addiu      $v0, $zero, 0x6
/* 10CD0 800204D0 52006210 */  beq        $v1, $v0, .L8002061C
/* 10CD4 800204D4 1800BFAF */   sw        $ra, 0x18($sp)
/* 10CD8 800204D8 6013848F */  lw         $a0, %gp_rel(EndlevelType)($gp)
/* 10CDC 800204DC 01000224 */  addiu      $v0, $zero, 0x1
/* 10CE0 800204E0 12008210 */  beq        $a0, $v0, .L8002052C
/* 10CE4 800204E4 02008228 */   slti      $v0, $a0, 0x2
/* 10CE8 800204E8 05004010 */  beqz       $v0, .L80020500
/* 10CEC 800204EC 02000224 */   addiu     $v0, $zero, 0x2
/* 10CF0 800204F0 07008010 */  beqz       $a0, .L80020510
/* 10CF4 800204F4 21100000 */   addu      $v0, $zero, $zero
/* 10CF8 800204F8 88810008 */  j          .L80020620
/* 10CFC 800204FC 00000000 */   nop
.L80020500:
/* 10D00 80020500 32008210 */  beq        $a0, $v0, .L800205CC
/* 10D04 80020504 03000224 */   addiu     $v0, $zero, 0x3
/* 10D08 80020508 88810008 */  j          .L80020620
/* 10D0C 8002050C 21100000 */   addu      $v0, $zero, $zero
.L80020510:
/* 10D10 80020510 4405838F */  lw         $v1, %gp_rel(LevelNumStarsMax)($gp)
/* 10D14 80020514 3C05828F */  lw         $v0, %gp_rel(LevelNumStarsCollected)($gp)
/* 10D18 80020518 00000000 */  nop
/* 10D1C 8002051C 40006214 */  bne        $v1, $v0, .L80020620
/* 10D20 80020520 21100000 */   addu      $v0, $zero, $zero
.L80020524:
/* 10D24 80020524 88810008 */  j          .L80020620
/* 10D28 80020528 01000224 */   addiu     $v0, $zero, 0x1
.L8002052C:
/* 10D2C 8002052C 5C13828F */  lw         $v0, %gp_rel(g_TriggerEndLevel)($gp)
/* 10D30 80020530 00000000 */  nop
/* 10D34 80020534 3A004010 */  beqz       $v0, .L80020620
/* 10D38 80020538 21100000 */   addu      $v0, $zero, $zero
/* 10D3C 8002053C 0980023C */  lui        $v0, %hi(gETEndLevel)
/* 10D40 80020540 D442428C */  lw         $v0, %lo(gETEndLevel)($v0)
/* 10D44 80020544 00000000 */  nop
/* 10D48 80020548 0B004010 */  beqz       $v0, .L80020578
/* 10D4C 8002054C 0980023C */   lui       $v0, %hi(ETEndLevelpath)
/* 10D50 80020550 385C438C */  lw         $v1, %lo(ETEndLevelpath)($v0)
/* 10D54 80020554 00000000 */  nop
/* 10D58 80020558 F2FF6010 */  beqz       $v1, .L80020524
/* 10D5C 8002055C 385C4424 */   addiu     $a0, $v0, %lo(ETEndLevelpath)
/* 10D60 80020560 D913010C */  jal        IsPathDone
/* 10D64 80020564 00000000 */   nop
/* 10D68 80020568 2D004014 */  bnez       $v0, .L80020620
/* 10D6C 8002056C 01000224 */   addiu     $v0, $zero, 0x1
/* 10D70 80020570 88810008 */  j          .L80020620
/* 10D74 80020574 21100000 */   addu      $v0, $zero, $zero
.L80020578:
/* 10D78 80020578 1000A28C */  lw         $v0, 0x10($a1)
/* 10D7C 8002057C 00000000 */  nop
/* 10D80 80020580 00014230 */  andi       $v0, $v0, 0x100
/* 10D84 80020584 26004010 */  beqz       $v0, .L80020620
/* 10D88 80020588 21100000 */   addu      $v0, $zero, $zero
/* 10D8C 8002058C 0980023C */  lui        $v0, %hi(Game_Health)
/* 10D90 80020590 8C42428C */  lw         $v0, %lo(Game_Health)($v0)
/* 10D94 80020594 00000000 */  nop
/* 10D98 80020598 20004018 */  blez       $v0, .L8002061C
/* 10D9C 8002059C 0B000224 */   addiu     $v0, $zero, 0xB
/* 10DA0 800205A0 0C00A38C */  lw         $v1, 0xC($a1)
/* 10DA4 800205A4 00000000 */  nop
/* 10DA8 800205A8 1C006210 */  beq        $v1, $v0, .L8002061C
/* 10DAC 800205AC 0080033C */   lui       $v1, (0x80000000 >> 16)
/* 10DB0 800205B0 5401A28C */  lw         $v0, 0x154($a1)
/* 10DB4 800205B4 0980013C */  lui        $at, %hi(gETEndLevel)
/* 10DB8 800205B8 D44224AC */  sw         $a0, %lo(gETEndLevel)($at)
/* 10DBC 800205BC 4401A4AC */  sw         $a0, 0x144($a1)
/* 10DC0 800205C0 25104300 */  or         $v0, $v0, $v1
/* 10DC4 800205C4 87810008 */  j          .L8002061C
/* 10DC8 800205C8 5401A2AC */   sw        $v0, 0x154($a1)
.L800205CC:
/* 10DCC 800205CC A0000424 */  addiu      $a0, $zero, 0xA0
/* 10DD0 800205D0 0180073C */  lui        $a3, %hi(D_80010844)
/* 10DD4 800205D4 78000524 */  addiu      $a1, $zero, 0x78
/* 10DD8 800205D8 21300000 */  addu       $a2, $zero, $zero
/* 10DDC 800205DC 4805828F */  lw         $v0, %gp_rel(BonusTimer)($gp)
/* 10DE0 800205E0 4408E724 */  addiu      $a3, $a3, %lo(D_80010844)
/* 10DE4 800205E4 9362010C */  jal        PrintC
/* 10DE8 800205E8 1000A2AF */   sw        $v0, 0x10($sp)
/* 10DEC 800205EC 4805838F */  lw         $v1, %gp_rel(BonusTimer)($gp)
/* 10DF0 800205F0 00000000 */  nop
/* 10DF4 800205F4 21106000 */  addu       $v0, $v1, $zero
/* 10DF8 800205F8 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 10DFC 800205FC 480583AF */  sw         $v1, %gp_rel(BonusTimer)($gp)
/* 10E00 80020600 07004018 */  blez       $v0, .L80020620
/* 10E04 80020604 01000224 */   addiu     $v0, $zero, 0x1
/* 10E08 80020608 4405848F */  lw         $a0, %gp_rel(LevelNumStarsMax)($gp)
/* 10E0C 8002060C 3C05838F */  lw         $v1, %gp_rel(LevelNumStarsCollected)($gp)
/* 10E10 80020610 00000000 */  nop
/* 10E14 80020614 02008310 */  beq        $a0, $v1, .L80020620
/* 10E18 80020618 00000000 */   nop
.L8002061C:
/* 10E1C 8002061C 21100000 */  addu       $v0, $zero, $zero
.L80020620:
/* 10E20 80020620 1800BF8F */  lw         $ra, 0x18($sp)
/* 10E24 80020624 00000000 */  nop
/* 10E28 80020628 0800E003 */  jr         $ra
/* 10E2C 8002062C 2000BD27 */   addiu     $sp, $sp, 0x20
.size CheckForEndOfLevel, . - CheckForEndOfLevel
