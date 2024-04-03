.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetTrackTarget
/* 2BDC4 8003B5C4 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BDC8 8003B5C8 00000000 */  nop
/* 2BDCC 8003B5CC 0800438C */  lw         $v1, 0x8($v0)
/* 2BDD0 8003B5D0 00000000 */  nop
/* 2BDD4 8003B5D4 000083AC */  sw         $v1, 0x0($a0)
/* 2BDD8 8003B5D8 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BDDC 8003B5DC 00000000 */  nop
/* 2BDE0 8003B5E0 0C00438C */  lw         $v1, 0xC($v0)
/* 2BDE4 8003B5E4 00000000 */  nop
/* 2BDE8 8003B5E8 0000A3AC */  sw         $v1, 0x0($a1)
/* 2BDEC 8003B5EC 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BDF0 8003B5F0 00000000 */  nop
/* 2BDF4 8003B5F4 1000438C */  lw         $v1, 0x10($v0)
/* 2BDF8 8003B5F8 0800E003 */  jr         $ra
/* 2BDFC 8003B5FC 0000C3AC */   sw        $v1, 0x0($a2)
.size GetTrackTarget, . - GetTrackTarget
