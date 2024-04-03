.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TriggerEndLevel
/* 10FE0 800207E0 01000224 */  addiu      $v0, $zero, 0x1
/* 10FE4 800207E4 5C1382AF */  sw         $v0, %gp_rel(g_TriggerEndLevel)($gp)
/* 10FE8 800207E8 0800E003 */  jr         $ra
/* 10FEC 800207EC 00000000 */   nop
.size TriggerEndLevel, . - TriggerEndLevel
