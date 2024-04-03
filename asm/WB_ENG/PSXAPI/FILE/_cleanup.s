.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel _cleanup
/* 47790 80056F90 0800E003 */  jr         $ra
/* 47794 80056F94 00000000 */   nop
.size _cleanup, . - _cleanup
