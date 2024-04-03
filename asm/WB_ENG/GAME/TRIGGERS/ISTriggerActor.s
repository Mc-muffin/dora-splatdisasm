.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ISTriggerActor
/* 30F94 80040794 0800E003 */  jr         $ra
/* 30F98 80040798 00000000 */   nop
.size ISTriggerActor, . - ISTriggerActor
