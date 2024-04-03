.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetWhichCamera
/* 2BB98 8003B398 901484AF */  sw         $a0, %gp_rel(currentCamera)($gp)
/* 2BB9C 8003B39C 0800E003 */  jr         $ra
/* 2BBA0 8003B3A0 00000000 */   nop
.size SetWhichCamera, . - SetWhichCamera
