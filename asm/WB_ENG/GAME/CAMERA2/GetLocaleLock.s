.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetLocaleLock
/* 2BD90 8003B590 9014838F */  lw         $v1, %gp_rel(currentCamera)($gp)
/* 2BD94 8003B594 00000000 */  nop
/* 2BD98 8003B598 94006290 */  lbu        $v0, 0x94($v1)
/* 2BD9C 8003B59C 0800E003 */  jr         $ra
/* 2BDA0 8003B5A0 00000000 */   nop
.size GetLocaleLock, . - GetLocaleLock
