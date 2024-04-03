.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetSTBA_Locale
/* 2BF40 8003B740 9014838F */  lw         $v1, %gp_rel(currentCamera)($gp)
/* 2BF44 8003B744 00000000 */  nop
/* 2BF48 8003B748 84006294 */  lhu        $v0, 0x84($v1)
/* 2BF4C 8003B74C 0800E003 */  jr         $ra
/* 2BF50 8003B750 00000000 */   nop
.size GetSTBA_Locale, . - GetSTBA_Locale
