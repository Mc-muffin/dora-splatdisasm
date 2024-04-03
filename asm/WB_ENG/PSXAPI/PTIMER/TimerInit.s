.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TimerInit
/* 4C428 8005BC28 01000224 */  addiu      $v0, $zero, 0x1
/* 4C42C 8005BC2C 000085AC */  sw         $a1, 0x0($a0)
/* 4C430 8005BC30 040082AC */  sw         $v0, 0x4($a0)
/* 4C434 8005BC34 0800E003 */  jr         $ra
/* 4C438 8005BC38 080086AC */   sw        $a2, 0x8($a0)
.size TimerInit, . - TimerInit
