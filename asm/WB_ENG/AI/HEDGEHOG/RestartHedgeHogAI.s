.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel RestartHedgeHogAI
/* 37A48 80047248 01000224 */  addiu      $v0, $zero, 0x1
/* 37A4C 8004724C 0000A2AC */  sw         $v0, 0x0($a1)
/* 37A50 80047250 04000224 */  addiu      $v0, $zero, 0x4
/* 37A54 80047254 0C0082AC */  sw         $v0, 0xC($a0)
/* 37A58 80047258 2C010224 */  addiu      $v0, $zero, 0x12C
/* 37A5C 8004725C 0800A0AC */  sw         $zero, 0x8($a1)
/* 37A60 80047260 0C00A0AC */  sw         $zero, 0xC($a1)
/* 37A64 80047264 0400A0AC */  sw         $zero, 0x4($a1)
/* 37A68 80047268 0800E003 */  jr         $ra
/* 37A6C 8004726C 5C0082AC */   sw        $v0, 0x5C($a0)
.size RestartHedgeHogAI, . - RestartHedgeHogAI
