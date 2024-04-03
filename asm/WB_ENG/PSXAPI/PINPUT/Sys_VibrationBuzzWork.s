.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Sys_VibrationBuzzWork
/* 4A218 80059A18 FF008430 */  andi       $a0, $a0, 0xFF
/* 4A21C 80059A1C 40180400 */  sll        $v1, $a0, 1
/* 4A220 80059A20 21186400 */  addu       $v1, $v1, $a0
/* 4A224 80059A24 C0180300 */  sll        $v1, $v1, 3
/* 4A228 80059A28 0B80023C */  lui        $v0, %hi(extCtrlInfoArray)
/* 4A22C 80059A2C 18B74224 */  addiu      $v0, $v0, %lo(extCtrlInfoArray)
/* 4A230 80059A30 21386200 */  addu       $a3, $v1, $v0
/* 4A234 80059A34 1700E490 */  lbu        $a0, 0x17($a3)
/* 4A238 80059A38 00000000 */  nop
/* 4A23C 80059A3C 14008010 */  beqz       $a0, .L80059A90
/* 4A240 80059A40 FF00A530 */   andi      $a1, $a1, 0xFF
/* 4A244 80059A44 0980023C */  lui        $v0, %hi(gMenuRumbleFlag)
/* 4A248 80059A48 C449428C */  lw         $v0, %lo(gMenuRumbleFlag)($v0)
/* 4A24C 80059A4C 00000000 */  nop
/* 4A250 80059A50 0F004010 */  beqz       $v0, .L80059A90
/* 4A254 80059A54 FF000224 */   addiu     $v0, $zero, 0xFF
/* 4A258 80059A58 0400E390 */  lbu        $v1, 0x4($a3)
/* 4A25C 80059A5C 00000000 */  nop
/* 4A260 80059A60 0B006210 */  beq        $v1, $v0, .L80059A90
/* 4A264 80059A64 00000000 */   nop
/* 4A268 80059A68 0700A010 */  beqz       $a1, .L80059A88
/* 4A26C 80059A6C 2110E300 */   addu      $v0, $a3, $v1
/* 4A270 80059A70 D016838F */  lw         $v1, %gp_rel(gGameTick)($gp)
/* 4A274 80059A74 01000424 */  addiu      $a0, $zero, 0x1
/* 4A278 80059A78 020044A0 */  sb         $a0, 0x2($v0)
/* 4A27C 80059A7C 21186600 */  addu       $v1, $v1, $a2
/* 4A280 80059A80 0800E003 */  jr         $ra
/* 4A284 80059A84 0800E3AC */   sw        $v1, 0x8($a3)
.L80059A88:
/* 4A288 80059A88 020040A0 */  sb         $zero, 0x2($v0)
/* 4A28C 80059A8C 0800E0AC */  sw         $zero, 0x8($a3)
.L80059A90:
/* 4A290 80059A90 0800E003 */  jr         $ra
/* 4A294 80059A94 00000000 */   nop
.size Sys_VibrationBuzzWork, . - Sys_VibrationBuzzWork
