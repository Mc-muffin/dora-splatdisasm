.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetLocaleOffset
/* 2BBFC 8003B3FC 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BC00 8003B400 0800E003 */  jr         $ra
/* 2BC04 8003B404 920044A4 */   sh        $a0, 0x92($v0)
.size SetLocaleOffset, . - SetLocaleOffset
