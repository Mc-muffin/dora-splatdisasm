.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TrackerReInit
/* 376F8 80046EF8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 376FC 80046EFC 1000BFAF */  sw         $ra, 0x10($sp)
/* 37700 80046F00 2801828C */  lw         $v0, 0x128($a0)
/* 37704 80046F04 00000000 */  nop
/* 37708 80046F08 200040AC */  sw         $zero, 0x20($v0)
/* 3770C 80046F0C DC28010C */  jal        GenericReInit
/* 37710 80046F10 240040AC */   sw        $zero, 0x24($v0)
/* 37714 80046F14 1000BF8F */  lw         $ra, 0x10($sp)
/* 37718 80046F18 00000000 */  nop
/* 3771C 80046F1C 0800E003 */  jr         $ra
/* 37720 80046F20 1800BD27 */   addiu     $sp, $sp, 0x18
.size TrackerReInit, . - TrackerReInit
