.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel XFreeCLUT
/* 4EB54 8005E354 FFFF8530 */  andi       $a1, $a0, 0xFFFF
/* 4EB58 8005E358 00FFA230 */  andi       $v0, $a1, 0xFF00
/* 4EB5C 8005E35C 0E004010 */  beqz       $v0, .L8005E398
/* 4EB60 8005E360 0C80033C */   lui       $v1, %hi(gCLUTUseTable)
/* 4EB64 8005E364 FF00A330 */  andi       $v1, $a1, 0xFF
/* 4EB68 8005E368 0C80043C */  lui        $a0, %hi(gCLUTUseTable)
/* 4EB6C 8005E36C A8C48424 */  addiu      $a0, $a0, %lo(gCLUTUseTable)
/* 4EB70 8005E370 80110300 */  sll        $v0, $v1, 6
/* 4EB74 8005E374 21104300 */  addu       $v0, $v0, $v1
/* 4EB78 8005E378 40100200 */  sll        $v0, $v0, 1
/* 4EB7C 8005E37C 21104400 */  addu       $v0, $v0, $a0
/* 4EB80 8005E380 021A0500 */  srl        $v1, $a1, 8
/* 4EB84 8005E384 00004494 */  lhu        $a0, 0x0($v0)
/* 4EB88 8005E388 27180300 */  nor        $v1, $zero, $v1
/* 4EB8C 8005E38C 24208300 */  and        $a0, $a0, $v1
/* 4EB90 8005E390 0800E003 */  jr         $ra
/* 4EB94 8005E394 000044A4 */   sh        $a0, 0x0($v0)
.L8005E398:
/* 4EB98 8005E398 A8C46324 */  addiu      $v1, $v1, %lo(gCLUTUseTable)
/* 4EB9C 8005E39C 80110500 */  sll        $v0, $a1, 6
/* 4EBA0 8005E3A0 21104500 */  addu       $v0, $v0, $a1
/* 4EBA4 8005E3A4 40100200 */  sll        $v0, $v0, 1
/* 4EBA8 8005E3A8 21104300 */  addu       $v0, $v0, $v1
/* 4EBAC 8005E3AC 0800E003 */  jr         $ra
/* 4EBB0 8005E3B0 000040A4 */   sh        $zero, 0x0($v0)
.size XFreeCLUT, . - XFreeCLUT
