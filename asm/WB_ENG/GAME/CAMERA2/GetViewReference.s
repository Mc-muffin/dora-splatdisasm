.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetViewReference
/* 2C404 8003BC04 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2C408 8003BC08 00000000 */  nop
/* 2C40C 8003BC0C 3800438C */  lw         $v1, 0x38($v0)
/* 2C410 8003BC10 00000000 */  nop
/* 2C414 8003BC14 000083AC */  sw         $v1, 0x0($a0)
/* 2C418 8003BC18 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2C41C 8003BC1C 00000000 */  nop
/* 2C420 8003BC20 3C00438C */  lw         $v1, 0x3C($v0)
/* 2C424 8003BC24 00000000 */  nop
/* 2C428 8003BC28 0000A3AC */  sw         $v1, 0x0($a1)
/* 2C42C 8003BC2C 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2C430 8003BC30 00000000 */  nop
/* 2C434 8003BC34 4000438C */  lw         $v1, 0x40($v0)
/* 2C438 8003BC38 0800E003 */  jr         $ra
/* 2C43C 8003BC3C 0000C3AC */   sw        $v1, 0x0($a2)
.size GetViewReference, . - GetViewReference
