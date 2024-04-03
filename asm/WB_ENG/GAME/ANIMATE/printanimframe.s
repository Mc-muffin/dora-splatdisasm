.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel printanimframe
/* 298AC 800390AC 0800E003 */  jr         $ra
/* 298B0 800390B0 00000000 */   nop
.size printanimframe, . - printanimframe
