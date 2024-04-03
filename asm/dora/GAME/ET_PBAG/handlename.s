.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel handlename
/* 10CAC 800204AC 0800828C */  lw         $v0, 0x8($a0)
/* 10CB0 800204B0 0800E003 */  jr         $ra
/* 10CB4 800204B4 00000000 */   nop
.size handlename, . - handlename
