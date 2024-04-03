.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ApplyFriction
/* 2EF14 8003E714 0800E003 */  jr         $ra
/* 2EF18 8003E718 00000000 */   nop
.size ApplyFriction, . - ApplyFriction
