.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Free16CLUT
/* 4EAF8 8005E2F8 FFFF8430 */  andi       $a0, $a0, 0xFFFF
/* 4EAFC 8005E2FC FF008530 */  andi       $a1, $a0, 0xFF
/* 4EB00 8005E300 0C80033C */  lui        $v1, %hi(gCLUTUseTable)
/* 4EB04 8005E304 A8C46324 */  addiu      $v1, $v1, %lo(gCLUTUseTable)
/* 4EB08 8005E308 80110500 */  sll        $v0, $a1, 6
/* 4EB0C 8005E30C 21104500 */  addu       $v0, $v0, $a1
/* 4EB10 8005E310 40100200 */  sll        $v0, $v0, 1
/* 4EB14 8005E314 21104300 */  addu       $v0, $v0, $v1
/* 4EB18 8005E318 02220400 */  srl        $a0, $a0, 8
/* 4EB1C 8005E31C 00004394 */  lhu        $v1, 0x0($v0)
/* 4EB20 8005E320 27200400 */  nor        $a0, $zero, $a0
/* 4EB24 8005E324 24186400 */  and        $v1, $v1, $a0
/* 4EB28 8005E328 0800E003 */  jr         $ra
/* 4EB2C 8005E32C 000043A4 */   sh        $v1, 0x0($v0)
.size Free16CLUT, . - Free16CLUT
