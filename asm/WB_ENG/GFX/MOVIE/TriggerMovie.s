.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TriggerMovie
/* 40350 8004FB50 0800E003 */  jr         $ra
/* 40354 8004FB54 00000000 */   nop
.size TriggerMovie, . - TriggerMovie
