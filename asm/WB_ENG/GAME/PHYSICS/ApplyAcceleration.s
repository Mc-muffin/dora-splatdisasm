.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ApplyAcceleration
/* 2EF1C 8003E71C 0800E003 */  jr         $ra
/* 2EF20 8003E720 00000000 */   nop
.size ApplyAcceleration, . - ApplyAcceleration
