.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ISindestructable
/* 3AE0C 8004A60C 0800E003 */  jr         $ra
/* 3AE10 8004A610 21100000 */   addu      $v0, $zero, $zero
.size ISindestructable, . - ISindestructable
