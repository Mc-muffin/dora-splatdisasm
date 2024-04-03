.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TriggerSwiperActor1
/* 26FE0 800367E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 26FE4 800367E4 1000BFAF */  sw         $ra, 0x10($sp)
/* 26FE8 800367E8 2801838C */  lw         $v1, 0x128($a0)
/* 26FEC 800367EC 00000000 */  nop
/* 26FF0 800367F0 5400628C */  lw         $v0, 0x54($v1)
/* 26FF4 800367F4 DCD6000C */  jal        TriggerSwiperActor
/* 26FF8 800367F8 500062AC */   sw        $v0, 0x50($v1)
/* 26FFC 800367FC 1000BF8F */  lw         $ra, 0x10($sp)
/* 27000 80036800 00000000 */  nop
/* 27004 80036804 0800E003 */  jr         $ra
/* 27008 80036808 1800BD27 */   addiu     $sp, $sp, 0x18
.size TriggerSwiperActor1, . - TriggerSwiperActor1
