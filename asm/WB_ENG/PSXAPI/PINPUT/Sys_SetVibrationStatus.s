.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Sys_SetVibrationStatus
/* 4A4E8 80059CE8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4A4EC 80059CEC 1000B0AF */  sw         $s0, 0x10($sp)
/* 4A4F0 80059CF0 FF009030 */  andi       $s0, $a0, 0xFF
/* 4A4F4 80059CF4 FF00A530 */  andi       $a1, $a1, 0xFF
/* 4A4F8 80059CF8 01000224 */  addiu      $v0, $zero, 0x1
/* 4A4FC 80059CFC 2B105000 */  sltu       $v0, $v0, $s0
/* 4A500 80059D00 03004010 */  beqz       $v0, .L80059D10
/* 4A504 80059D04 1400BFAF */   sw        $ra, 0x14($sp)
/* 4A508 80059D08 45670108 */  j          .L80059D14
/* 4A50C 80059D0C 01000224 */   addiu     $v0, $zero, 0x1
.L80059D10:
/* 4A510 80059D10 21100002 */  addu       $v0, $s0, $zero
.L80059D14:
/* 4A514 80059D14 0A00A010 */  beqz       $a1, .L80059D40
/* 4A518 80059D18 21804000 */   addu      $s0, $v0, $zero
/* 4A51C 80059D1C 0B80023C */  lui        $v0, %hi(extCtrlInfoArray)
/* 4A520 80059D20 18B74224 */  addiu      $v0, $v0, %lo(extCtrlInfoArray)
/* 4A524 80059D24 40181000 */  sll        $v1, $s0, 1
/* 4A528 80059D28 21187000 */  addu       $v1, $v1, $s0
/* 4A52C 80059D2C C0180300 */  sll        $v1, $v1, 3
/* 4A530 80059D30 21186200 */  addu       $v1, $v1, $v0
/* 4A534 80059D34 01000424 */  addiu      $a0, $zero, 0x1
/* 4A538 80059D38 59670108 */  j          .L80059D64
/* 4A53C 80059D3C 170064A0 */   sb        $a0, 0x17($v1)
.L80059D40:
/* 4A540 80059D40 5965010C */  jal        Sys_StopVibration
/* 4A544 80059D44 21200002 */   addu      $a0, $s0, $zero
/* 4A548 80059D48 0B80033C */  lui        $v1, %hi(extCtrlInfoArray)
/* 4A54C 80059D4C 18B76324 */  addiu      $v1, $v1, %lo(extCtrlInfoArray)
/* 4A550 80059D50 40101000 */  sll        $v0, $s0, 1
/* 4A554 80059D54 21105000 */  addu       $v0, $v0, $s0
/* 4A558 80059D58 C0100200 */  sll        $v0, $v0, 3
/* 4A55C 80059D5C 21104300 */  addu       $v0, $v0, $v1
/* 4A560 80059D60 170040A0 */  sb         $zero, 0x17($v0)
.L80059D64:
/* 4A564 80059D64 1400BF8F */  lw         $ra, 0x14($sp)
/* 4A568 80059D68 1000B08F */  lw         $s0, 0x10($sp)
/* 4A56C 80059D6C 0800E003 */  jr         $ra
/* 4A570 80059D70 1800BD27 */   addiu     $sp, $sp, 0x18
.size Sys_SetVibrationStatus, . - Sys_SetVibrationStatus
