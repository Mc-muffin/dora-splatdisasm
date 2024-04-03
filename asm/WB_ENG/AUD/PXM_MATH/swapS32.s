.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel swapS32
/* 45104 80054904 0000A28C */  lw         $v0, 0x0($a1)
/* 45108 80054908 0000838C */  lw         $v1, 0x0($a0)
/* 4510C 8005490C 000082AC */  sw         $v0, 0x0($a0)
/* 45110 80054910 0800E003 */  jr         $ra
/* 45114 80054914 0000A3AC */   sw        $v1, 0x0($a1)
.size swapS32, . - swapS32
