.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel RestartreleaseAI
/* 391BC 800489BC 0A000224 */  addiu      $v0, $zero, 0xA
/* 391C0 800489C0 0000A0AC */  sw         $zero, 0x0($a1)
/* 391C4 800489C4 0C0080AC */  sw         $zero, 0xC($a0)
/* 391C8 800489C8 0800A0AC */  sw         $zero, 0x8($a1)
/* 391CC 800489CC 0C00A0AC */  sw         $zero, 0xC($a1)
/* 391D0 800489D0 0400A0AC */  sw         $zero, 0x4($a1)
/* 391D4 800489D4 0800E003 */  jr         $ra
/* 391D8 800489D8 5C0082AC */   sw        $v0, 0x5C($a0)
.size RestartreleaseAI, . - RestartreleaseAI
