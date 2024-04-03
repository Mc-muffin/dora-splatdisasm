.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ApplySpeed
/* 2EF24 8003E724 0800E003 */  jr         $ra
/* 2EF28 8003E728 00000000 */   nop
.size ApplySpeed, . - ApplySpeed
