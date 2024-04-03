.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitEndLevelService
/* 10E30 80020630 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 10E34 80020634 1000BFAF */  sw         $ra, 0x10($sp)
/* 10E38 80020638 3C0580AF */  sw         $zero, %gp_rel(LevelNumStarsCollected)($gp)
/* 10E3C 8002063C 5C1380AF */  sw         $zero, %gp_rel(g_TriggerEndLevel)($gp)
/* 10E40 80020640 9C90000C */  jal        SearchWorldForStars
/* 10E44 80020644 00000000 */   nop
/* 10E48 80020648 1000BF8F */  lw         $ra, 0x10($sp)
/* 10E4C 8002064C 440582AF */  sw         $v0, %gp_rel(LevelNumStarsMax)($gp)
/* 10E50 80020650 0800E003 */  jr         $ra
/* 10E54 80020654 1800BD27 */   addiu     $sp, $sp, 0x18
.size InitEndLevelService, . - InitEndLevelService
