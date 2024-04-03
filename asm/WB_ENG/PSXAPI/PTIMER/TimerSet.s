.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TimerSet
/* 4C450 8005BC50 0800E003 */  jr         $ra
/* 4C454 8005BC54 000085AC */   sw        $a1, 0x0($a0)
.size TimerSet, . - TimerSet
