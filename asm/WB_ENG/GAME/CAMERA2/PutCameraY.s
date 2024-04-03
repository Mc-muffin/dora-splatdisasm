.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PutCameraY
/* 2BE84 8003B684 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BE88 8003B688 0800E003 */  jr         $ra
/* 2BE8C 8003B68C 300044AC */   sw        $a0, 0x30($v0)
.size PutCameraY, . - PutCameraY
