.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TimerExpired
/* 4C4B8 8005BCB8 0000828C */  lw         $v0, 0x0($a0)
/* 4C4BC 8005BCBC 0800E003 */  jr         $ra
/* 4C4C0 8005BCC0 01004228 */   slti      $v0, $v0, 0x1
.size TimerExpired, . - TimerExpired
