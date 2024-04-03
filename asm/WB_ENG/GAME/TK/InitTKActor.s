.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitTKActor
/* 347A0 80043FA0 0800E003 */  jr         $ra
/* 347A4 80043FA4 00000000 */   nop
.size InitTKActor, . - InitTKActor
