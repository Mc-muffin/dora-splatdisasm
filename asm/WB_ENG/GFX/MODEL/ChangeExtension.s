.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ChangeExtension
/* 3CA70 8004C270 00008390 */  lbu        $v1, 0x0($a0)
/* 3CA74 8004C274 0A80023C */  lui        $v0, %hi(StringBuffer)
/* 3CA78 8004C278 07006010 */  beqz       $v1, .L8004C298
/* 3CA7C 8004C27C 10514224 */   addiu     $v0, $v0, %lo(StringBuffer)
.L8004C280:
/* 3CA80 8004C280 01008424 */  addiu      $a0, $a0, 0x1
/* 3CA84 8004C284 000043A0 */  sb         $v1, 0x0($v0)
/* 3CA88 8004C288 00008390 */  lbu        $v1, 0x0($a0)
/* 3CA8C 8004C28C 00000000 */  nop
/* 3CA90 8004C290 FBFF6014 */  bnez       $v1, .L8004C280
/* 3CA94 8004C294 01004224 */   addiu     $v0, $v0, 0x1
.L8004C298:
/* 3CA98 8004C298 0000A390 */  lbu        $v1, 0x0($a1)
/* 3CA9C 8004C29C 00000000 */  nop
/* 3CAA0 8004C2A0 07006010 */  beqz       $v1, .L8004C2C0
/* 3CAA4 8004C2A4 00000000 */   nop
.L8004C2A8:
/* 3CAA8 8004C2A8 0100A524 */  addiu      $a1, $a1, 0x1
/* 3CAAC 8004C2AC 000043A0 */  sb         $v1, 0x0($v0)
/* 3CAB0 8004C2B0 0000A390 */  lbu        $v1, 0x0($a1)
/* 3CAB4 8004C2B4 00000000 */  nop
/* 3CAB8 8004C2B8 FBFF6014 */  bnez       $v1, .L8004C2A8
/* 3CABC 8004C2BC 01004224 */   addiu     $v0, $v0, 0x1
.L8004C2C0:
/* 3CAC0 8004C2C0 0800E003 */  jr         $ra
/* 3CAC4 8004C2C4 000040A0 */   sb        $zero, 0x0($v0)
.size ChangeExtension, . - ChangeExtension
