.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel EggInitEditCamera
/* 2B3BC 8003ABBC 500A828F */  lw         $v0, %gp_rel(PreviousCameraEnum)($gp)
/* 2B3C0 8003ABC0 00000000 */  nop
/* 2B3C4 8003ABC4 681482AF */  sw         $v0, %gp_rel(ISOEditBACKUPCameraEnum)($gp)
/* 2B3C8 8003ABC8 741482AF */  sw         $v0, %gp_rel(ISOEditCameraEnum)($gp)
/* 2B3CC 8003ABCC 0800E003 */  jr         $ra
/* 2B3D0 8003ABD0 00000000 */   nop
.size EggInitEditCamera, . - EggInitEditCamera
