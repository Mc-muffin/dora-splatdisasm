.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TestRedBookInit
/* 475E0 80056DE0 0800E003 */  jr         $ra
/* 475E4 80056DE4 00000000 */   nop
.size TestRedBookInit, . - TestRedBookInit
