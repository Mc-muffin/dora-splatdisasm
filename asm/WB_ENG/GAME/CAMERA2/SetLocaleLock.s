.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetLocaleLock
/* 2BD84 8003B584 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BD88 8003B588 0800E003 */  jr         $ra
/* 2BD8C 8003B58C 940044A0 */   sb        $a0, 0x94($v0)
.size SetLocaleLock, . - SetLocaleLock
