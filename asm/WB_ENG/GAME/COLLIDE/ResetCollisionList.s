.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ResetCollisionList
/* 2F7E4 8003EFE4 B41480AF */  sw         $zero, %gp_rel(NumCollisionList)($gp)
/* 2F7E8 8003EFE8 0800E003 */  jr         $ra
/* 2F7EC 8003EFEC 00000000 */   nop
.size ResetCollisionList, . - ResetCollisionList
