.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SsUtKeyOffV
/* 45FA4 800557A4 0800E003 */  jr         $ra
/* 45FA8 800557A8 00000000 */   nop
.size SsUtKeyOffV, . - SsUtKeyOffV
