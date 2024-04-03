.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AddLocaleVelocity
/* 2BF54 8003B754 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BF58 8003B758 0800E003 */  jr         $ra
/* 2BF5C 8003B75C 900044A4 */   sh        $a0, 0x90($v0)
.size AddLocaleVelocity, . - AddLocaleVelocity
