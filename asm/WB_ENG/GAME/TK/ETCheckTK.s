.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ETCheckTK
/* 347A8 80043FA8 0800E003 */  jr         $ra
/* 347AC 80043FAC 00000000 */   nop
.size ETCheckTK, . - ETCheckTK
