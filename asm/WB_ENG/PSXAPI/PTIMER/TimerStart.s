.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TimerStart
/* 4C43C 8005BC3C 01000224 */  addiu      $v0, $zero, 0x1
/* 4C440 8005BC40 0800E003 */  jr         $ra
/* 4C444 8005BC44 040082AC */   sw        $v0, 0x4($a0)
.size TimerStart, . - TimerStart
