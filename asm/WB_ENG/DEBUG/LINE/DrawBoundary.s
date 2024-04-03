.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawBoundary
/* 52F44 80062744 0800E003 */  jr         $ra
/* 52F48 80062748 00000000 */   nop
.size DrawBoundary, . - DrawBoundary
