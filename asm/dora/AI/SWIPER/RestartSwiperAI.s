.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel RestartSwiperAI
/* 271E8 800369E8 64000224 */  addiu      $v0, $zero, 0x64
/* 271EC 800369EC 0000A0AC */  sw         $zero, 0x0($a1)
/* 271F0 800369F0 0800A0AC */  sw         $zero, 0x8($a1)
/* 271F4 800369F4 0C00A0AC */  sw         $zero, 0xC($a1)
/* 271F8 800369F8 0400A0AC */  sw         $zero, 0x4($a1)
/* 271FC 800369FC 0800E003 */  jr         $ra
/* 27200 80036A00 5C0082AC */   sw        $v0, 0x5C($a0)
.size RestartSwiperAI, . - RestartSwiperAI
