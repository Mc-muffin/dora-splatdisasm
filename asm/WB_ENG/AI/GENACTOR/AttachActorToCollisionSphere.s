.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AttachActorToCollisionSphere
/* 3AB40 8004A340 2401A28C */  lw         $v0, 0x124($a1)
/* 3AB44 8004A344 2401838C */  lw         $v1, 0x124($a0)
/* 3AB48 8004A348 2C0044AC */  sw         $a0, 0x2C($v0)
/* 3AB4C 8004A34C 0800E003 */  jr         $ra
/* 3AB50 8004A350 300065AC */   sw        $a1, 0x30($v1)
.size AttachActorToCollisionSphere, . - AttachActorToCollisionSphere
