.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SsUtReverbOn
/* 45FAC 800557AC 0800E003 */  jr         $ra
/* 45FB0 800557B0 00000000 */   nop
.size SsUtReverbOn, . - SsUtReverbOn
