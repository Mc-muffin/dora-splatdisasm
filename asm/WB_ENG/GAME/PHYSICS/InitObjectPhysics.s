.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitObjectPhysics
/* 2EEC8 8003E6C8 1000A38F */  lw         $v1, 0x10($sp)
/* 2EECC 8003E6CC 1400A88F */  lw         $t0, 0x14($sp)
/* 2EED0 8003E6D0 1C0C828F */  lw         $v0, %gp_rel(DEFAULT_MAX_SPEED)($gp)
/* 2EED4 8003E6D4 040085AC */  sw         $a1, 0x4($a0)
/* 2EED8 8003E6D8 080086AC */  sw         $a2, 0x8($a0)
/* 2EEDC 8003E6DC 0C0087AC */  sw         $a3, 0xC($a0)
/* 2EEE0 8003E6E0 300080AC */  sw         $zero, 0x30($a0)
/* 2EEE4 8003E6E4 340080AC */  sw         $zero, 0x34($a0)
/* 2EEE8 8003E6E8 380080AC */  sw         $zero, 0x38($a0)
/* 2EEEC 8003E6EC 200080AC */  sw         $zero, 0x20($a0)
/* 2EEF0 8003E6F0 240080AC */  sw         $zero, 0x24($a0)
/* 2EEF4 8003E6F4 280080AC */  sw         $zero, 0x28($a0)
/* 2EEF8 8003E6F8 980080AC */  sw         $zero, 0x98($a0)
/* 2EEFC 8003E6FC 000083AC */  sw         $v1, 0x0($a0)
/* 2EF00 8003E700 400082AC */  sw         $v0, 0x40($a0)
/* 2EF04 8003E704 440082AC */  sw         $v0, 0x44($a0)
/* 2EF08 8003E708 480082AC */  sw         $v0, 0x48($a0)
/* 2EF0C 8003E70C 0800E003 */  jr         $ra
/* 2EF10 8003E710 840088AC */   sw        $t0, 0x84($a0)
.size InitObjectPhysics, . - InitObjectPhysics
