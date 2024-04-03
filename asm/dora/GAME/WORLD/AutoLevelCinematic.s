.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AutoLevelCinematic
/* 14F2C 8002472C 0800E003 */  jr         $ra
/* 14F30 80024730 00000000 */   nop
.size AutoLevelCinematic, . - AutoLevelCinematic
