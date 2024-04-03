.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetLocaleOffset
/* 2BC08 8003B408 9014838F */  lw         $v1, %gp_rel(currentCamera)($gp)
/* 2BC0C 8003B40C 00000000 */  nop
/* 2BC10 8003B410 92006284 */  lh         $v0, 0x92($v1)
/* 2BC14 8003B414 0800E003 */  jr         $ra
/* 2BC18 8003B418 00000000 */   nop
.size GetLocaleOffset, . - GetLocaleOffset
