.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetLocale
/* 2BBB4 8003B3B4 9014838F */  lw         $v1, %gp_rel(currentCamera)($gp)
/* 2BBB8 8003B3B8 00000000 */  nop
/* 2BBBC 8003B3BC 86006294 */  lhu        $v0, 0x86($v1)
/* 2BBC0 8003B3C0 0800E003 */  jr         $ra
/* 2BBC4 8003B3C4 00000000 */   nop
.size GetLocale, . - GetLocale
