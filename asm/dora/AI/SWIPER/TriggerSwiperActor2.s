.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TriggerSwiperActor2
/* 2700C 8003680C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 27010 80036810 1000BFAF */  sw         $ra, 0x10($sp)
/* 27014 80036814 2801838C */  lw         $v1, 0x128($a0)
/* 27018 80036818 00000000 */  nop
/* 2701C 8003681C 5800628C */  lw         $v0, 0x58($v1)
/* 27020 80036820 DCD6000C */  jal        TriggerSwiperActor
/* 27024 80036824 500062AC */   sw        $v0, 0x50($v1)
/* 27028 80036828 1000BF8F */  lw         $ra, 0x10($sp)
/* 2702C 8003682C 00000000 */  nop
/* 27030 80036830 0800E003 */  jr         $ra
/* 27034 80036834 1800BD27 */   addiu     $sp, $sp, 0x18
.size TriggerSwiperActor2, . - TriggerSwiperActor2
