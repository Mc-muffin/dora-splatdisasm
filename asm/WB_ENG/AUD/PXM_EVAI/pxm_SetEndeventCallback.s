.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_SetEndeventCallback
/* 443EC 80053BEC F40F84AF */  sw         $a0, %gp_rel(g_endeventcallback)($gp)
/* 443F0 80053BF0 0800E003 */  jr         $ra
/* 443F4 80053BF4 00000000 */   nop
.size pxm_SetEndeventCallback, . - pxm_SetEndeventCallback
