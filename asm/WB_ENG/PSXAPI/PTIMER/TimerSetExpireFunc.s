.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TimerSetExpireFunc
/* 4C4C4 8005BCC4 0800E003 */  jr         $ra
/* 4C4C8 8005BCC8 080085AC */   sw        $a1, 0x8($a0)
.size TimerSetExpireFunc, . - TimerSetExpireFunc
