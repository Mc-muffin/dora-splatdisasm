.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetSTBA_Locale
/* 2BF34 8003B734 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BF38 8003B738 0800E003 */  jr         $ra
/* 2BF3C 8003B73C 840044A4 */   sh        $a0, 0x84($v0)
.size SetSTBA_Locale, . - SetSTBA_Locale
