.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ReInitCLUTManager
/* 4EBF0 8005E3F0 0C80023C */  lui        $v0, %hi(gCLUTUseTable)
/* 4EBF4 8005E3F4 A8C44324 */  addiu      $v1, $v0, %lo(gCLUTUseTable)
/* 4EBF8 8005E3F8 40200400 */  sll        $a0, $a0, 1
/* 4EBFC 8005E3FC 02006224 */  addiu      $v0, $v1, 0x2
/* 4EC00 8005E400 21208200 */  addu       $a0, $a0, $v0
/* 4EC04 8005E404 3F000524 */  addiu      $a1, $zero, 0x3F
.L8005E408:
/* 4EC08 8005E408 00008294 */  lhu        $v0, 0x0($a0)
/* 4EC0C 8005E40C 82008424 */  addiu      $a0, $a0, 0x82
/* 4EC10 8005E410 FFFFA524 */  addiu      $a1, $a1, -0x1
/* 4EC14 8005E414 000062A4 */  sh         $v0, 0x0($v1)
/* 4EC18 8005E418 FBFFA104 */  bgez       $a1, .L8005E408
/* 4EC1C 8005E41C 82006324 */   addiu     $v1, $v1, 0x82
/* 4EC20 8005E420 0800E003 */  jr         $ra
/* 4EC24 8005E424 00000000 */   nop
.size ReInitCLUTManager, . - ReInitCLUTManager
