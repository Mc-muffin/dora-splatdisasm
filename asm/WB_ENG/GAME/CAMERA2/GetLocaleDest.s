.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetLocaleDest
/* 2BBC8 8003B3C8 9014838F */  lw         $v1, %gp_rel(currentCamera)($gp)
/* 2BBCC 8003B3CC 00000000 */  nop
/* 2BBD0 8003B3D0 88006294 */  lhu        $v0, 0x88($v1)
/* 2BBD4 8003B3D4 0800E003 */  jr         $ra
/* 2BBD8 8003B3D8 00000000 */   nop
.size GetLocaleDest, . - GetLocaleDest
