.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GenericFollowActorPostSetPosition
/* 3AC00 8004A400 2401838C */  lw         $v1, 0x124($a0)
/* 3AC04 8004A404 03000224 */  addiu      $v0, $zero, 0x3
/* 3AC08 8004A408 140062AC */  sw         $v0, 0x14($v1)
/* 3AC0C 8004A40C 0800E003 */  jr         $ra
/* 3AC10 8004A410 100060AC */   sw        $zero, 0x10($v1)
.size GenericFollowActorPostSetPosition, . - GenericFollowActorPostSetPosition
