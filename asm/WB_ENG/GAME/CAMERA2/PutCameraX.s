.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PutCameraX
/* 2BE78 8003B678 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BE7C 8003B67C 0800E003 */  jr         $ra
/* 2BE80 8003B680 2C0044AC */   sw        $a0, 0x2C($v0)
.size PutCameraX, . - PutCameraX
