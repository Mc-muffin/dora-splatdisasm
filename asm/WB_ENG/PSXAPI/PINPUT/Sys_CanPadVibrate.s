.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Sys_CanPadVibrate
/* 4A148 80059948 FF008430 */  andi       $a0, $a0, 0xFF
/* 4A14C 8005994C 0B80033C */  lui        $v1, %hi(extCtrlInfoArray)
/* 4A150 80059950 01000224 */  addiu      $v0, $zero, 0x1
/* 4A154 80059954 2B104400 */  sltu       $v0, $v0, $a0
/* 4A158 80059958 03004010 */  beqz       $v0, .L80059968
/* 4A15C 8005995C 18B76524 */   addiu     $a1, $v1, %lo(extCtrlInfoArray)
/* 4A160 80059960 5B660108 */  j          .L8005996C
/* 4A164 80059964 01000224 */   addiu     $v0, $zero, 0x1
.L80059968:
/* 4A168 80059968 21108000 */  addu       $v0, $a0, $zero
.L8005996C:
/* 4A16C 8005996C 40180200 */  sll        $v1, $v0, 1
/* 4A170 80059970 21186200 */  addu       $v1, $v1, $v0
/* 4A174 80059974 C0180300 */  sll        $v1, $v1, 3
/* 4A178 80059978 2118A300 */  addu       $v1, $a1, $v1
/* 4A17C 8005997C 16006290 */  lbu        $v0, 0x16($v1)
/* 4A180 80059980 0800E003 */  jr         $ra
/* 4A184 80059984 00000000 */   nop
.size Sys_CanPadVibrate, . - Sys_CanPadVibrate
