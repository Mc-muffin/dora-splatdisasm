.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PutCameraSP
/* 2BE9C 8003B69C 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BEA0 8003B6A0 00000000 */  nop
/* 2BEA4 8003B6A4 200044AC */  sw         $a0, 0x20($v0)
/* 2BEA8 8003B6A8 240045AC */  sw         $a1, 0x24($v0)
/* 2BEAC 8003B6AC 0800E003 */  jr         $ra
/* 2BEB0 8003B6B0 280046AC */   sw        $a2, 0x28($v0)
.size PutCameraSP, . - PutCameraSP
