.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetAggressive
/* 2BC1C 8003B41C 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BC20 8003B420 0800E003 */  jr         $ra
/* 2BC24 8003B424 020044A4 */   sh        $a0, 0x2($v0)
.size SetAggressive, . - SetAggressive
