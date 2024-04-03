.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __bb_exit_func
/* 47798 80056F98 0800E003 */  jr         $ra
/* 4779C 80056F9C 00000000 */   nop
.size __bb_exit_func, . - __bb_exit_func
