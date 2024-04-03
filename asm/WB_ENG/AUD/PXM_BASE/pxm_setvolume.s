.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_setvolume
/* 42FF0 800527F0 FF008430 */  andi       $a0, $a0, 0xFF
/* 42FF4 800527F4 0A80023C */  lui        $v0, %hi(pxm_mix)
/* 42FF8 800527F8 C87F44AC */  sw         $a0, %lo(pxm_mix)($v0)
/* 42FFC 800527FC 0800E003 */  jr         $ra
/* 43000 80052800 00000000 */   nop
.size pxm_setvolume, . - pxm_setvolume
