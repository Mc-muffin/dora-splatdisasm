.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetViewReference
/* 2BF88 8003B788 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BF8C 8003B78C 00000000 */  nop
/* 2BF90 8003B790 380044AC */  sw         $a0, 0x38($v0)
/* 2BF94 8003B794 3C0045AC */  sw         $a1, 0x3C($v0)
/* 2BF98 8003B798 0800E003 */  jr         $ra
/* 2BF9C 8003B79C 400046AC */   sw        $a2, 0x40($v0)
.size SetViewReference, . - SetViewReference
