.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetObjectFriction
/* 2EF2C 8003E72C 0800E003 */  jr         $ra
/* 2EF30 8003E730 00000000 */   nop
.size SetObjectFriction, . - SetObjectFriction
