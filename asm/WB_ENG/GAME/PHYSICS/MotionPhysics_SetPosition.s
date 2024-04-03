.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MotionPhysics_SetPosition
/* 2F5DC 8003EDDC 040085AC */  sw         $a1, 0x4($a0)
/* 2F5E0 8003EDE0 080086AC */  sw         $a2, 0x8($a0)
/* 2F5E4 8003EDE4 0800E003 */  jr         $ra
/* 2F5E8 8003EDE8 0C0087AC */   sw        $a3, 0xC($a0)
.size MotionPhysics_SetPosition, . - MotionPhysics_SetPosition
