.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SearchWorldForMesh
/* 14BA4 800243A4 0880023C */  lui        $v0, %hi(TestWorld)
/* 14BA8 800243A8 8C654224 */  addiu      $v0, $v0, %lo(TestWorld)
/* 14BAC 800243AC 1C00458C */  lw         $a1, 0x1C($v0)
/* 14BB0 800243B0 1000428C */  lw         $v0, 0x10($v0)
/* 14BB4 800243B4 00000000 */  nop
/* 14BB8 800243B8 0A004018 */  blez       $v0, .L800243E4
/* 14BBC 800243BC 21300000 */   addu      $a2, $zero, $zero
/* 14BC0 800243C0 21184000 */  addu       $v1, $v0, $zero
.L800243C4:
/* 14BC4 800243C4 1000A28C */  lw         $v0, 0x10($a1)
/* 14BC8 800243C8 00000000 */  nop
/* 14BCC 800243CC 02004414 */  bne        $v0, $a0, .L800243D8
/* 14BD0 800243D0 00000000 */   nop
/* 14BD4 800243D4 0100C624 */  addiu      $a2, $a2, 0x1
.L800243D8:
/* 14BD8 800243D8 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 14BDC 800243DC F9FF6014 */  bnez       $v1, .L800243C4
/* 14BE0 800243E0 2400A524 */   addiu     $a1, $a1, 0x24
.L800243E4:
/* 14BE4 800243E4 0800E003 */  jr         $ra
/* 14BE8 800243E8 2110C000 */   addu      $v0, $a2, $zero
.size SearchWorldForMesh, . - SearchWorldForMesh
