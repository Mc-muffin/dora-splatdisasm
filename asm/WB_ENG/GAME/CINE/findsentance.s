.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel findsentance
/* 32B20 80042320 21300000 */  addu       $a2, $zero, $zero
/* 32B24 80042324 0A000724 */  addiu      $a3, $zero, 0xA
.L80042328:
/* 32B28 80042328 0000A390 */  lbu        $v1, 0x0($a1)
/* 32B2C 8004232C 00000000 */  nop
/* 32B30 80042330 FF006230 */  andi       $v0, $v1, 0xFF
/* 32B34 80042334 03004710 */  beq        $v0, $a3, .L80042344
/* 32B38 80042338 00000000 */   nop
/* 32B3C 8004233C 09004014 */  bnez       $v0, .L80042364
/* 32B40 80042340 00000000 */   nop
.L80042344:
/* 32B44 80042344 000080A0 */  sb         $zero, 0x0($a0)
/* 32B48 80042348 0000A290 */  lbu        $v0, 0x0($a1)
/* 32B4C 8004234C 00000000 */  nop
/* 32B50 80042350 02004014 */  bnez       $v0, .L8004235C
/* 32B54 80042354 00000000 */   nop
/* 32B58 80042358 21300000 */  addu       $a2, $zero, $zero
.L8004235C:
/* 32B5C 8004235C 0800E003 */  jr         $ra
/* 32B60 80042360 2110C000 */   addu      $v0, $a2, $zero
.L80042364:
/* 32B64 80042364 0100C624 */  addiu      $a2, $a2, 0x1
/* 32B68 80042368 000083A0 */  sb         $v1, 0x0($a0)
/* 32B6C 8004236C 0100A524 */  addiu      $a1, $a1, 0x1
/* 32B70 80042370 CA080108 */  j          .L80042328
/* 32B74 80042374 01008424 */   addiu     $a0, $a0, 0x1
.size findsentance, . - findsentance
