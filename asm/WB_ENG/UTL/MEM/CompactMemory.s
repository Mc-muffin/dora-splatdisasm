.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CompactMemory
/* 40998 80050198 21280000 */  addu       $a1, $zero, $zero
/* 4099C 8005019C AC15848F */  lw         $a0, %gp_rel(s_endOfBSS)($gp)
/* 409A0 800501A0 B015838F */  lw         $v1, %gp_rel(s_endOfRAM)($gp)
/* 409A4 800501A4 00000000 */  nop
/* 409A8 800501A8 2B108300 */  sltu       $v0, $a0, $v1
/* 409AC 800501AC 1C004010 */  beqz       $v0, .L80050220
/* 409B0 800501B0 21300000 */   addu      $a2, $zero, $zero
/* 409B4 800501B4 21386000 */  addu       $a3, $v1, $zero
.L800501B8:
/* 409B8 800501B8 0000838C */  lw         $v1, 0x0($a0)
/* 409BC 800501BC 00000000 */  nop
/* 409C0 800501C0 01006230 */  andi       $v0, $v1, 0x1
/* 409C4 800501C4 0C004010 */  beqz       $v0, .L800501F8
/* 409C8 800501C8 00000000 */   nop
/* 409CC 800501CC 0800A010 */  beqz       $a1, .L800501F0
/* 409D0 800501D0 00000000 */   nop
/* 409D4 800501D4 2120A000 */  addu       $a0, $a1, $zero
/* 409D8 800501D8 0000A28C */  lw         $v0, 0x0($a1)
/* 409DC 800501DC 01000624 */  addiu      $a2, $zero, 0x1
/* 409E0 800501E0 03004224 */  addiu      $v0, $v0, 0x3
/* 409E4 800501E4 21104300 */  addu       $v0, $v0, $v1
/* 409E8 800501E8 7F400108 */  j          .L800501FC
/* 409EC 800501EC 0000A2AC */   sw        $v0, 0x0($a1)
.L800501F0:
/* 409F0 800501F0 7F400108 */  j          .L800501FC
/* 409F4 800501F4 21288000 */   addu      $a1, $a0, $zero
.L800501F8:
/* 409F8 800501F8 21280000 */  addu       $a1, $zero, $zero
.L800501FC:
/* 409FC 800501FC 0000828C */  lw         $v0, 0x0($a0)
/* 40A00 80050200 00000000 */  nop
/* 40A04 80050204 83100200 */  sra        $v0, $v0, 2
/* 40A08 80050208 80100200 */  sll        $v0, $v0, 2
/* 40A0C 8005020C 04004224 */  addiu      $v0, $v0, 0x4
/* 40A10 80050210 21208200 */  addu       $a0, $a0, $v0
/* 40A14 80050214 2B188700 */  sltu       $v1, $a0, $a3
/* 40A18 80050218 E7FF6014 */  bnez       $v1, .L800501B8
/* 40A1C 8005021C 00000000 */   nop
.L80050220:
/* 40A20 80050220 0800E003 */  jr         $ra
/* 40A24 80050224 2110C000 */   addu      $v0, $a2, $zero
.size CompactMemory, . - CompactMemory
