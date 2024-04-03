.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetLocaleAggressive
/* 2BBE8 8003B3E8 9014838F */  lw         $v1, %gp_rel(currentCamera)($gp)
/* 2BBEC 8003B3EC 00000000 */  nop
/* 2BBF0 8003B3F0 04006294 */  lhu        $v0, 0x4($v1)
/* 2BBF4 8003B3F4 0800E003 */  jr         $ra
/* 2BBF8 8003B3F8 00000000 */   nop
.size GetLocaleAggressive, . - GetLocaleAggressive
