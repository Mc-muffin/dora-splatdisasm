.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SsUtSetReverbDepth
/* 45FBC 800557BC 0800E003 */  jr         $ra
/* 45FC0 800557C0 00000000 */   nop
.size SsUtSetReverbDepth, . - SsUtSetReverbDepth
