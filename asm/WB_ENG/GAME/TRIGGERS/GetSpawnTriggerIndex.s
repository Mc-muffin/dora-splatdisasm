.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetSpawnTriggerIndex
/* 30F9C 8004079C 1800838C */  lw         $v1, 0x18($a0)
/* 30FA0 800407A0 00000000 */  nop
/* 30FA4 800407A4 0000628C */  lw         $v0, 0x0($v1)
/* 30FA8 800407A8 0800E003 */  jr         $ra
/* 30FAC 800407AC 00000000 */   nop
.size GetSpawnTriggerIndex, . - GetSpawnTriggerIndex
