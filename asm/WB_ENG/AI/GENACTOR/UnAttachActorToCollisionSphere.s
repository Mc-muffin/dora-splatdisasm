.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel UnAttachActorToCollisionSphere
/* 3ABE4 8004A3E4 2401828C */  lw         $v0, 0x124($a0)
/* 3ABE8 8004A3E8 00000000 */  nop
/* 3ABEC 8004A3EC 2C00438C */  lw         $v1, 0x2C($v0)
/* 3ABF0 8004A3F0 00000000 */  nop
/* 3ABF4 8004A3F4 2401648C */  lw         $a0, 0x124($v1)
/* 3ABF8 8004A3F8 0800E003 */  jr         $ra
/* 3ABFC 8004A3FC 300080AC */   sw        $zero, 0x30($a0)
.size UnAttachActorToCollisionSphere, . - UnAttachActorToCollisionSphere
