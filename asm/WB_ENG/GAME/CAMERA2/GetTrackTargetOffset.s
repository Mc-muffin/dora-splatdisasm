.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetTrackTargetOffset
/* 2C2F4 8003BAF4 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2C2F8 8003BAF8 00000000 */  nop
/* 2C2FC 8003BAFC 1400438C */  lw         $v1, 0x14($v0)
/* 2C300 8003BB00 00000000 */  nop
/* 2C304 8003BB04 000083AC */  sw         $v1, 0x0($a0)
/* 2C308 8003BB08 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2C30C 8003BB0C 00000000 */  nop
/* 2C310 8003BB10 1800438C */  lw         $v1, 0x18($v0)
/* 2C314 8003BB14 00000000 */  nop
/* 2C318 8003BB18 0000A3AC */  sw         $v1, 0x0($a1)
/* 2C31C 8003BB1C 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2C320 8003BB20 00000000 */  nop
/* 2C324 8003BB24 1C00438C */  lw         $v1, 0x1C($v0)
/* 2C328 8003BB28 0800E003 */  jr         $ra
/* 2C32C 8003BB2C 0000C3AC */   sw        $v1, 0x0($a2)
.size GetTrackTargetOffset, . - GetTrackTargetOffset
