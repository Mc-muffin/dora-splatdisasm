.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ActorOff
/* 34D94 80044594 1000828C */  lw         $v0, 0x10($a0)
/* 34D98 80044598 FFFA0324 */  addiu      $v1, $zero, -0x501
/* 34D9C 8004459C 24104300 */  and        $v0, $v0, $v1
/* 34DA0 800445A0 0800E003 */  jr         $ra
/* 34DA4 800445A4 100082AC */   sw        $v0, 0x10($a0)
.size ActorOff, . - ActorOff
