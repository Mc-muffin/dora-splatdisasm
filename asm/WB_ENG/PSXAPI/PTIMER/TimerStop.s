.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TimerStop
/* 4C448 8005BC48 0800E003 */  jr         $ra
/* 4C44C 8005BC4C 040080AC */   sw        $zero, 0x4($a0)
.size TimerStop, . - TimerStop
