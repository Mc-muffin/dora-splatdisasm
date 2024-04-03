.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetCameraMode
/* 2C064 8003B864 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2C068 8003B868 0800E003 */  jr         $ra
/* 2C06C 8003B86C 000044A0 */   sb        $a0, 0x0($v0)
.size SetCameraMode, . - SetCameraMode
