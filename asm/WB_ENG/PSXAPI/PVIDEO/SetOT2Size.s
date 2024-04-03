.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetOT2Size
/* 4C0F4 8005B8F4 F81084AF */  sw         $a0, %gp_rel(g_ot2_size)($gp)
/* 4C0F8 8005B8F8 0800E003 */  jr         $ra
/* 4C0FC 8005B8FC 00000000 */   nop
.size SetOT2Size, . - SetOT2Size
