.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TimerGetExpireFunc
/* 4C4CC 8005BCCC 0800828C */  lw         $v0, 0x8($a0)
/* 4C4D0 8005BCD0 0800E003 */  jr         $ra
/* 4C4D4 8005BCD4 00000000 */   nop
.size TimerGetExpireFunc, . - TimerGetExpireFunc
