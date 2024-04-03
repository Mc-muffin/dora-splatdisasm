.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawBBWartCloud
/* 34D78 80044578 0800E003 */  jr         $ra
/* 34D7C 8004457C 00000000 */   nop
.size DrawBBWartCloud, . - DrawBBWartCloud
