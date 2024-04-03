.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LineCircleIntersect
/* 35828 80045028 0800E003 */  jr         $ra
/* 3582C 8004502C 00000000 */   nop
.size LineCircleIntersect, . - LineCircleIntersect
