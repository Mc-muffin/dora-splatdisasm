.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetAggressive
/* 2BC28 8003B428 9014838F */  lw         $v1, %gp_rel(currentCamera)($gp)
/* 2BC2C 8003B42C 00000000 */  nop
/* 2BC30 8003B430 02006294 */  lhu        $v0, 0x2($v1)
/* 2BC34 8003B434 0800E003 */  jr         $ra
/* 2BC38 8003B438 00000000 */   nop
.size GetAggressive, . - GetAggressive
