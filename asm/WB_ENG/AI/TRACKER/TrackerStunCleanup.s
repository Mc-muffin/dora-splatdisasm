.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TrackerStunCleanup
/* 376BC 80046EBC 2801858C */  lw         $a1, 0x128($a0)
/* 376C0 80046EC0 04000224 */  addiu      $v0, $zero, 0x4
/* 376C4 80046EC4 2000A0AC */  sw         $zero, 0x20($a1)
/* 376C8 80046EC8 0C0082AC */  sw         $v0, 0xC($a0)
/* 376CC 80046ECC 0800A394 */  lhu        $v1, 0x8($a1)
/* 376D0 80046ED0 0800E003 */  jr         $ra
/* 376D4 80046ED4 1000A3A4 */   sh        $v1, 0x10($a1)
.size TrackerStunCleanup, . - TrackerStunCleanup
