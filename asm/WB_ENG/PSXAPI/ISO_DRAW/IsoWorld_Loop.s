.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel IsoWorld_Loop
/* 559B0 800651B0 0800E003 */  jr         $ra
/* 559B4 800651B4 21100000 */   addu      $v0, $zero, $zero
.size IsoWorld_Loop, . - IsoWorld_Loop
