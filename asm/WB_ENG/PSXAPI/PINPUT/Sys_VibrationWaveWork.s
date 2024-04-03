.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Sys_VibrationWaveWork
/* 4A188 80059988 FF008430 */  andi       $a0, $a0, 0xFF
/* 4A18C 8005998C 40180400 */  sll        $v1, $a0, 1
/* 4A190 80059990 21186400 */  addu       $v1, $v1, $a0
/* 4A194 80059994 C0180300 */  sll        $v1, $v1, 3
/* 4A198 80059998 0B80023C */  lui        $v0, %hi(extCtrlInfoArray)
/* 4A19C 8005999C 18B74224 */  addiu      $v0, $v0, %lo(extCtrlInfoArray)
/* 4A1A0 800599A0 21386200 */  addu       $a3, $v1, $v0
/* 4A1A4 800599A4 1700E490 */  lbu        $a0, 0x17($a3)
/* 4A1A8 800599A8 00000000 */  nop
/* 4A1AC 800599AC 18008010 */  beqz       $a0, .L80059A10
/* 4A1B0 800599B0 FF00A530 */   andi      $a1, $a1, 0xFF
/* 4A1B4 800599B4 0980023C */  lui        $v0, %hi(gMenuRumbleFlag)
/* 4A1B8 800599B8 C449428C */  lw         $v0, %lo(gMenuRumbleFlag)($v0)
/* 4A1BC 800599BC 00000000 */  nop
/* 4A1C0 800599C0 13004010 */  beqz       $v0, .L80059A10
/* 4A1C4 800599C4 FF000224 */   addiu     $v0, $zero, 0xFF
/* 4A1C8 800599C8 0500E390 */  lbu        $v1, 0x5($a3)
/* 4A1CC 800599CC 00000000 */  nop
/* 4A1D0 800599D0 0F006210 */  beq        $v1, $v0, .L80059A10
/* 4A1D4 800599D4 2B104500 */   sltu      $v0, $v0, $a1
/* 4A1D8 800599D8 02004014 */  bnez       $v0, .L800599E4
/* 4A1DC 800599DC FF000424 */   addiu     $a0, $zero, 0xFF
/* 4A1E0 800599E0 2120A000 */  addu       $a0, $a1, $zero
.L800599E4:
/* 4A1E4 800599E4 21288000 */  addu       $a1, $a0, $zero
/* 4A1E8 800599E8 0700A010 */  beqz       $a1, .L80059A08
/* 4A1EC 800599EC 2110E300 */   addu      $v0, $a3, $v1
/* 4A1F0 800599F0 D016828F */  lw         $v0, %gp_rel(gGameTick)($gp)
/* 4A1F4 800599F4 2118E300 */  addu       $v1, $a3, $v1
/* 4A1F8 800599F8 020064A0 */  sb         $a0, 0x2($v1)
/* 4A1FC 800599FC 21104600 */  addu       $v0, $v0, $a2
/* 4A200 80059A00 0800E003 */  jr         $ra
/* 4A204 80059A04 0C00E2AC */   sw        $v0, 0xC($a3)
.L80059A08:
/* 4A208 80059A08 020040A0 */  sb         $zero, 0x2($v0)
/* 4A20C 80059A0C 0C00E0AC */  sw         $zero, 0xC($a3)
.L80059A10:
/* 4A210 80059A10 0800E003 */  jr         $ra
/* 4A214 80059A14 00000000 */   nop
.size Sys_VibrationWaveWork, . - Sys_VibrationWaveWork
