.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SsUtSetReverbType
/* 45FB4 800557B4 0800E003 */  jr         $ra
/* 45FB8 800557B8 00000000 */   nop
.size SsUtSetReverbType, . - SsUtSetReverbType
