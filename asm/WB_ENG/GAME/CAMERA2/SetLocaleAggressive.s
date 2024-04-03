.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetLocaleAggressive
/* 2BBDC 8003B3DC 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BBE0 8003B3E0 0800E003 */  jr         $ra
/* 2BBE4 8003B3E4 040044A4 */   sh        $a0, 0x4($v0)
.size SetLocaleAggressive, . - SetLocaleAggressive
