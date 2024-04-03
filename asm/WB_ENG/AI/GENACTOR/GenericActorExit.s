.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GenericActorExit
/* 3AA0C 8004A20C 0800E003 */  jr         $ra
/* 3AA10 8004A210 00000000 */   nop
.size GenericActorExit, . - GenericActorExit
