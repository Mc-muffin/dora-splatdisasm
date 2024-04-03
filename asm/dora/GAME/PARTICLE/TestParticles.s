.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TestParticles
/* 2150C 80030D0C 0800E003 */  jr         $ra
/* 21510 80030D10 00000000 */   nop
.size TestParticles, . - TestParticles
