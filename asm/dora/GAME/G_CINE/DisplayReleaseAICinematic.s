.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DisplayReleaseAICinematic
/* 23FC4 800337C4 0800E003 */  jr         $ra
/* 23FC8 800337C8 00000000 */   nop
.size DisplayReleaseAICinematic, . - DisplayReleaseAICinematic
