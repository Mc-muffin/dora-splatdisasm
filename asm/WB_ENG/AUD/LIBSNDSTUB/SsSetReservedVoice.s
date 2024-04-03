.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SsSetReservedVoice
/* 45F70 80055770 0800E003 */  jr         $ra
/* 45F74 80055774 00000000 */   nop
.size SsSetReservedVoice, . - SsSetReservedVoice
