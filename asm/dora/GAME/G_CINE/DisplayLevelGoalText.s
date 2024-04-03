.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DisplayLevelGoalText
/* 24048 80033848 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 2404C 8003384C 0800E003 */  jr         $ra
/* 24050 80033850 2000BD27 */   addiu     $sp, $sp, 0x20
.size DisplayLevelGoalText, . - DisplayLevelGoalText
