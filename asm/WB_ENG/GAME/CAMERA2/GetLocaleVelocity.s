.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetLocaleVelocity
/* 2BF74 8003B774 9014838F */  lw         $v1, %gp_rel(currentCamera)($gp)
/* 2BF78 8003B778 00000000 */  nop
/* 2BF7C 8003B77C 8C006284 */  lh         $v0, 0x8C($v1)
/* 2BF80 8003B780 0800E003 */  jr         $ra
/* 2BF84 8003B784 00000000 */   nop
.size GetLocaleVelocity, . - GetLocaleVelocity
