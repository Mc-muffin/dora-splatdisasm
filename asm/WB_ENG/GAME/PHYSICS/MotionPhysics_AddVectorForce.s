.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MotionPhysics_AddVectorForce
/* 2F5EC 8003EDEC 3000828C */  lw         $v0, 0x30($a0)
/* 2F5F0 8003EDF0 3400838C */  lw         $v1, 0x34($a0)
/* 2F5F4 8003EDF4 21104500 */  addu       $v0, $v0, $a1
/* 2F5F8 8003EDF8 300082AC */  sw         $v0, 0x30($a0)
/* 2F5FC 8003EDFC 3800828C */  lw         $v0, 0x38($a0)
/* 2F600 8003EE00 21186600 */  addu       $v1, $v1, $a2
/* 2F604 8003EE04 340083AC */  sw         $v1, 0x34($a0)
/* 2F608 8003EE08 21104700 */  addu       $v0, $v0, $a3
/* 2F60C 8003EE0C 0800E003 */  jr         $ra
/* 2F610 8003EE10 380082AC */   sw        $v0, 0x38($a0)
.size MotionPhysics_AddVectorForce, . - MotionPhysics_AddVectorForce
