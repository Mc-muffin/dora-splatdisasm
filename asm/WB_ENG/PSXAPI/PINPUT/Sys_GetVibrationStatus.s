.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Sys_GetVibrationStatus
/* 4A46C 80059C6C FF008430 */  andi       $a0, $a0, 0xFF
/* 4A470 80059C70 0B80033C */  lui        $v1, %hi(extCtrlInfoArray)
/* 4A474 80059C74 01000224 */  addiu      $v0, $zero, 0x1
/* 4A478 80059C78 2B104400 */  sltu       $v0, $v0, $a0
/* 4A47C 80059C7C 03004010 */  beqz       $v0, .L80059C8C
/* 4A480 80059C80 18B76524 */   addiu     $a1, $v1, %lo(extCtrlInfoArray)
/* 4A484 80059C84 24670108 */  j          .L80059C90
/* 4A488 80059C88 01000224 */   addiu     $v0, $zero, 0x1
.L80059C8C:
/* 4A48C 80059C8C 21108000 */  addu       $v0, $a0, $zero
.L80059C90:
/* 4A490 80059C90 40180200 */  sll        $v1, $v0, 1
/* 4A494 80059C94 21186200 */  addu       $v1, $v1, $v0
/* 4A498 80059C98 C0180300 */  sll        $v1, $v1, 3
/* 4A49C 80059C9C 2118A300 */  addu       $v1, $a1, $v1
/* 4A4A0 80059CA0 17006290 */  lbu        $v0, 0x17($v1)
/* 4A4A4 80059CA4 0800E003 */  jr         $ra
/* 4A4A8 80059CA8 00000000 */   nop
.size Sys_GetVibrationStatus, . - Sys_GetVibrationStatus
