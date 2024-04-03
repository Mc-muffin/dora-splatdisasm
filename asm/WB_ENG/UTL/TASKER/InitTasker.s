.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitTasker
/* 4048C 8004FC8C FFFF0224 */  addiu      $v0, $zero, -0x1
/* 40490 8004FC90 7C0F84AF */  sw         $a0, %gp_rel(TheStateTable)($gp)
/* 40494 8004FC94 740F82AF */  sw         $v0, %gp_rel(CurrentTaskerState)($gp)
/* 40498 8004FC98 0800E003 */  jr         $ra
/* 4049C 8004FC9C 00000000 */   nop
.size InitTasker, . - InitTasker
