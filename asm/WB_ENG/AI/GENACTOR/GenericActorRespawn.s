.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GenericActorRespawn
/* 3AD30 8004A530 1000828C */  lw         $v0, 0x10($a0)
/* 3AD34 8004A534 00000000 */  nop
/* 3AD38 8004A538 00014234 */  ori        $v0, $v0, 0x100
/* 3AD3C 8004A53C 0800E003 */  jr         $ra
/* 3AD40 8004A540 100082AC */   sw        $v0, 0x10($a0)
.size GenericActorRespawn, . - GenericActorRespawn
