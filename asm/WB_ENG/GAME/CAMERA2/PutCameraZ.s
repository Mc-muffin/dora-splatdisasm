.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PutCameraZ
/* 2BE90 8003B690 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BE94 8003B694 0800E003 */  jr         $ra
/* 2BE98 8003B698 340044AC */   sw        $a0, 0x34($v0)
.size PutCameraZ, . - PutCameraZ
