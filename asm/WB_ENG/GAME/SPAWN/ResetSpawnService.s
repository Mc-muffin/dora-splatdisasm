.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ResetSpawnService
/* 33CF4 800434F4 A00C80AF */  sw         $zero, %gp_rel(NumSpawnedActors)($gp)
/* 33CF8 800434F8 0800E003 */  jr         $ra
/* 33CFC 800434FC 00000000 */   nop
.size ResetSpawnService, . - ResetSpawnService
