.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel UpdateMotionPhysicsToActor
/* 5266C 80061E6C 0400A38C */  lw         $v1, 0x4($a1)
/* 52670 80061E70 00000000 */  nop
/* 52674 80061E74 000083AC */  sw         $v1, 0x0($a0)
/* 52678 80061E78 0800A28C */  lw         $v0, 0x8($a1)
/* 5267C 80061E7C 00000000 */  nop
/* 52680 80061E80 040082AC */  sw         $v0, 0x4($a0)
/* 52684 80061E84 0C00A38C */  lw         $v1, 0xC($a1)
/* 52688 80061E88 0800E003 */  jr         $ra
/* 5268C 80061E8C 080083AC */   sw        $v1, 0x8($a0)
.size UpdateMotionPhysicsToActor, . - UpdateMotionPhysicsToActor
