.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __do_global_dtors
/* 477A0 80056FA0 0800E003 */  jr         $ra
/* 477A4 80056FA4 00000000 */   nop
.size __do_global_dtors, . - __do_global_dtors
