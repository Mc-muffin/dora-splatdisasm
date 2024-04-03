.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckBootsActorGravity
/* 26350 80035B50 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 26354 80035B54 1000BFAF */  sw         $ra, 0x10($sp)
/* 26358 80035B58 E9D1000C */  jal        CheckBootsGravity
/* 2635C 80035B5C 6C008424 */   addiu     $a0, $a0, 0x6C
/* 26360 80035B60 1000BF8F */  lw         $ra, 0x10($sp)
/* 26364 80035B64 00000000 */  nop
/* 26368 80035B68 0800E003 */  jr         $ra
/* 2636C 80035B6C 1800BD27 */   addiu     $sp, $sp, 0x18
.size CheckBootsActorGravity, . - CheckBootsActorGravity
