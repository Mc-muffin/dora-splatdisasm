.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel UnReserveVRAM
/* 4D4F4 8005CCF4 21188600 */  addu       $v1, $a0, $a2
/* 4D4F8 8005CCF8 2A108300 */  slt        $v0, $a0, $v1
/* 4D4FC 8005CCFC 17004010 */  beqz       $v0, .L8005CD5C
/* 4D500 8005CD00 21606000 */   addu      $t4, $v1, $zero
/* 4D504 8005CD04 18178B8F */  lw         $t3, %gp_rel(XCnt)($gp)
/* 4D508 8005CD08 0C80023C */  lui        $v0, %hi(VRAMGrid)
/* 4D50C 8005CD0C 38974D24 */  addiu      $t5, $v0, %lo(VRAMGrid)
/* 4D510 8005CD10 2130A000 */  addu       $a2, $a1, $zero
.L8005CD14:
/* 4D514 8005CD14 2140C700 */  addu       $t0, $a2, $a3
/* 4D518 8005CD18 2A10C800 */  slt        $v0, $a2, $t0
/* 4D51C 8005CD1C 0B004010 */  beqz       $v0, .L8005CD4C
/* 4D520 8005CD20 01008A24 */   addiu     $t2, $a0, 0x1
/* 4D524 8005CD24 21486001 */  addu       $t1, $t3, $zero
/* 4D528 8005CD28 1800C900 */  mult       $a2, $t1
/* 4D52C 8005CD2C 23300601 */  subu       $a2, $t0, $a2
/* 4D530 8005CD30 21108D00 */  addu       $v0, $a0, $t5
/* 4D534 8005CD34 12180000 */  mflo       $v1
/* 4D538 8005CD38 21106200 */  addu       $v0, $v1, $v0
.L8005CD3C:
/* 4D53C 8005CD3C 000040A0 */  sb         $zero, 0x0($v0)
/* 4D540 8005CD40 FFFFC624 */  addiu      $a2, $a2, -0x1
/* 4D544 8005CD44 FDFFC014 */  bnez       $a2, .L8005CD3C
/* 4D548 8005CD48 21104900 */   addu      $v0, $v0, $t1
.L8005CD4C:
/* 4D54C 8005CD4C 21204001 */  addu       $a0, $t2, $zero
/* 4D550 8005CD50 2A108C00 */  slt        $v0, $a0, $t4
/* 4D554 8005CD54 EFFF4014 */  bnez       $v0, .L8005CD14
/* 4D558 8005CD58 2130A000 */   addu      $a2, $a1, $zero
.L8005CD5C:
/* 4D55C 8005CD5C 0800E003 */  jr         $ra
/* 4D560 8005CD60 00000000 */   nop
.size UnReserveVRAM, . - UnReserveVRAM
