.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetCamera
/* 2BE00 8003B600 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BE04 8003B604 00000000 */  nop
/* 2BE08 8003B608 2C00438C */  lw         $v1, 0x2C($v0)
/* 2BE0C 8003B60C 00000000 */  nop
/* 2BE10 8003B610 000083AC */  sw         $v1, 0x0($a0)
/* 2BE14 8003B614 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BE18 8003B618 00000000 */  nop
/* 2BE1C 8003B61C 3000438C */  lw         $v1, 0x30($v0)
/* 2BE20 8003B620 00000000 */  nop
/* 2BE24 8003B624 0000A3AC */  sw         $v1, 0x0($a1)
/* 2BE28 8003B628 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BE2C 8003B62C 00000000 */  nop
/* 2BE30 8003B630 3400438C */  lw         $v1, 0x34($v0)
/* 2BE34 8003B634 0800E003 */  jr         $ra
/* 2BE38 8003B638 0000C3AC */   sw        $v1, 0x0($a2)
.size GetCamera, . - GetCamera
