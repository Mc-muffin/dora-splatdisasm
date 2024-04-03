.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetSourceOverride
/* 2BC3C 8003B43C 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BC40 8003B440 0800E003 */  jr         $ra
/* 2BC44 8003B444 010044A0 */   sb        $a0, 0x1($v0)
.size SetSourceOverride, . - SetSourceOverride
