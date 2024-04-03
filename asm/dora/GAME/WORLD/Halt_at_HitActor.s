.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Halt_at_HitActor
/* 14C2C 8002442C 0800E003 */  jr         $ra
/* 14C30 80024430 21100000 */   addu      $v0, $zero, $zero
.size Halt_at_HitActor, . - Halt_at_HitActor
