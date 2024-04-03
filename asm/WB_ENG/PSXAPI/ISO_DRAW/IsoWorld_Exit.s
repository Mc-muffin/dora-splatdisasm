.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel IsoWorld_Exit
/* 559B8 800651B8 0800E003 */  jr         $ra
/* 559BC 800651BC 00000000 */   nop
.size IsoWorld_Exit, . - IsoWorld_Exit
