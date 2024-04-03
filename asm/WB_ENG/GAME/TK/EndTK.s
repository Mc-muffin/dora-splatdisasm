.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel EndTK
/* 3478C 80043F8C 7400828C */  lw         $v0, 0x74($a0)
/* 34790 80043F90 0C0080AC */  sw         $zero, 0xC($a0)
/* 34794 80043F94 D80C82AF */  sw         $v0, %gp_rel(TKSaveY)($gp)
/* 34798 80043F98 0800E003 */  jr         $ra
/* 3479C 80043F9C 00000000 */   nop
.size EndTK, . - EndTK
