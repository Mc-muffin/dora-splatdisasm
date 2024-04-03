.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetAttachedActor
/* 3AB54 8004A354 2401838C */  lw         $v1, 0x124($a0)
/* 3AB58 8004A358 00000000 */  nop
/* 3AB5C 8004A35C 3000628C */  lw         $v0, 0x30($v1)
/* 3AB60 8004A360 0800E003 */  jr         $ra
/* 3AB64 8004A364 00000000 */   nop
.size GetAttachedActor, . - GetAttachedActor
