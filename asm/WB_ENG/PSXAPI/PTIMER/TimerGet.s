.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TimerGet
/* 4C458 8005BC58 0000828C */  lw         $v0, 0x0($a0)
/* 4C45C 8005BC5C 0800E003 */  jr         $ra
/* 4C460 8005BC60 00000000 */   nop
.size TimerGet, . - TimerGet
