.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetGameAggressive
/* 2B3F8 8003ABF8 0800E003 */  jr         $ra
/* 2B3FC 8003ABFC 00000000 */   nop
.size SetGameAggressive, . - SetGameAggressive
