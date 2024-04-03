.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DesertBoss
/* 33EE4 800436E4 0800E003 */  jr         $ra
/* 33EE8 800436E8 00000000 */   nop
.size DesertBoss, . - DesertBoss
