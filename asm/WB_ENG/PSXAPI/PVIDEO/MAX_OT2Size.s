.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MAX_OT2Size
/* 4C100 8005B900 F2030224 */  addiu      $v0, $zero, 0x3F2
/* 4C104 8005B904 F81082AF */  sw         $v0, %gp_rel(g_ot2_size)($gp)
/* 4C108 8005B908 0800E003 */  jr         $ra
/* 4C10C 8005B90C 00000000 */   nop
.size MAX_OT2Size, . - MAX_OT2Size
