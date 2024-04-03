.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PutCamera
/* 2BAF4 8003B2F4 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BAF8 8003B2F8 00000000 */  nop
/* 2BAFC 8003B2FC 2C0044AC */  sw         $a0, 0x2C($v0)
/* 2BB00 8003B300 300045AC */  sw         $a1, 0x30($v0)
/* 2BB04 8003B304 0800E003 */  jr         $ra
/* 2BB08 8003B308 340046AC */   sw        $a2, 0x34($v0)
.size PutCamera, . - PutCamera
