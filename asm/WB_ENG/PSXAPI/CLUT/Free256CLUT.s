.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Free256CLUT
/* 4EB30 8005E330 FFFF8430 */  andi       $a0, $a0, 0xFFFF
/* 4EB34 8005E334 0C80033C */  lui        $v1, %hi(gCLUTUseTable)
/* 4EB38 8005E338 A8C46324 */  addiu      $v1, $v1, %lo(gCLUTUseTable)
/* 4EB3C 8005E33C 80110400 */  sll        $v0, $a0, 6
/* 4EB40 8005E340 21104400 */  addu       $v0, $v0, $a0
/* 4EB44 8005E344 40100200 */  sll        $v0, $v0, 1
/* 4EB48 8005E348 21104300 */  addu       $v0, $v0, $v1
/* 4EB4C 8005E34C 0800E003 */  jr         $ra
/* 4EB50 8005E350 000040A4 */   sh        $zero, 0x0($v0)
.size Free256CLUT, . - Free256CLUT
