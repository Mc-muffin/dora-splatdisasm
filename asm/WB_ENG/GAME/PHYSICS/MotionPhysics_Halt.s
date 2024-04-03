.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MotionPhysics_Halt
/* 2F5CC 8003EDCC 300080AC */  sw         $zero, 0x30($a0)
/* 2F5D0 8003EDD0 340080AC */  sw         $zero, 0x34($a0)
/* 2F5D4 8003EDD4 0800E003 */  jr         $ra
/* 2F5D8 8003EDD8 380080AC */   sw        $zero, 0x38($a0)
.size MotionPhysics_Halt, . - MotionPhysics_Halt
