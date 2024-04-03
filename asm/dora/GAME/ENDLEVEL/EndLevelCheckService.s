.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel EndLevelCheckService
/* 10E58 80020658 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 10E5C 8002065C 1000BFAF */  sw         $ra, 0x10($sp)
/* 10E60 80020660 2E81000C */  jal        CheckForEndOfLevel
/* 10E64 80020664 00000000 */   nop
/* 10E68 80020668 0B004010 */  beqz       $v0, .L80020698
/* 10E6C 8002066C 01000324 */   addiu     $v1, $zero, 0x1
/* 10E70 80020670 06000224 */  addiu      $v0, $zero, 0x6
/* 10E74 80020674 0980013C */  lui        $at, %hi(gETEndLevel)
/* 10E78 80020678 D44223AC */  sw         $v1, %lo(gETEndLevel)($at)
/* 10E7C 8002067C 641380AF */  sw         $zero, %gp_rel(gEndLevelState)($gp)
/* 10E80 80020680 0980013C */  lui        $at, %hi(gGameState)
/* 10E84 80020684 845622AC */  sw         $v0, %lo(gGameState)($at)
/* 10E88 80020688 0980013C */  lui        $at, %hi(LevelCompletionFlag)
/* 10E8C 8002068C BC4A23AC */  sw         $v1, %lo(LevelCompletionFlag)($at)
/* 10E90 80020690 0980013C */  lui        $at, %hi(g_instructionalscreen)
/* 10E94 80020694 5C5620AC */  sw         $zero, %lo(g_instructionalscreen)($at)
.L80020698:
/* 10E98 80020698 1000BF8F */  lw         $ra, 0x10($sp)
/* 10E9C 8002069C 00000000 */  nop
/* 10EA0 800206A0 0800E003 */  jr         $ra
/* 10EA4 800206A4 1800BD27 */   addiu     $sp, $sp, 0x18
.size EndLevelCheckService, . - EndLevelCheckService
