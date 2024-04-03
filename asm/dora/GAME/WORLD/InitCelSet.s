.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitCelSet
/* 14D28 80024528 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 14D2C 8002452C 04008324 */  addiu      $v1, $a0, 0x4
/* 14D30 80024530 1000B0AF */  sw         $s0, 0x10($sp)
/* 14D34 80024534 21800000 */  addu       $s0, $zero, $zero
/* 14D38 80024538 0880023C */  lui        $v0, %hi(TestWorld)
/* 14D3C 8002453C 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 14D40 80024540 1800B2AF */  sw         $s2, 0x18($sp)
/* 14D44 80024544 1400B1AF */  sw         $s1, 0x14($sp)
/* 14D48 80024548 0000918C */  lw         $s1, 0x0($a0)
/* 14D4C 8002454C 8C654224 */  addiu      $v0, $v0, %lo(TestWorld)
/* 14D50 80024550 180043AC */  sw         $v1, 0x18($v0)
/* 14D54 80024554 0A002012 */  beqz       $s1, .L80024580
/* 14D58 80024558 0C0051AC */   sw        $s1, 0xC($v0)
.L8002455C:
/* 14D5C 8002455C 0000628C */  lw         $v0, 0x0($v1)
/* 14D60 80024560 00000000 */  nop
/* 14D64 80024564 02004010 */  beqz       $v0, .L80024570
/* 14D68 80024568 21104400 */   addu      $v0, $v0, $a0
/* 14D6C 8002456C 000062AC */  sw         $v0, 0x0($v1)
.L80024570:
/* 14D70 80024570 01001026 */  addiu      $s0, $s0, 0x1
/* 14D74 80024574 2B101102 */  sltu       $v0, $s0, $s1
/* 14D78 80024578 F8FF4014 */  bnez       $v0, .L8002455C
/* 14D7C 8002457C 04006324 */   addiu     $v1, $v1, 0x4
.L80024580:
/* 14D80 80024580 10002012 */  beqz       $s1, .L800245C4
/* 14D84 80024584 21800000 */   addu      $s0, $zero, $zero
/* 14D88 80024588 0880023C */  lui        $v0, %hi(TestWorld)
/* 14D8C 8002458C 8C655224 */  addiu      $s2, $v0, %lo(TestWorld)
.L80024590:
/* 14D90 80024590 1800438E */  lw         $v1, 0x18($s2)
/* 14D94 80024594 80101000 */  sll        $v0, $s0, 2
/* 14D98 80024598 21104300 */  addu       $v0, $v0, $v1
/* 14D9C 8002459C 0000448C */  lw         $a0, 0x0($v0)
/* 14DA0 800245A0 00000000 */  nop
/* 14DA4 800245A4 03008010 */  beqz       $a0, .L800245B4
/* 14DA8 800245A8 00000000 */   nop
/* 14DAC 800245AC BD35010C */  jal        InitCel
/* 14DB0 800245B0 00000000 */   nop
.L800245B4:
/* 14DB4 800245B4 01001026 */  addiu      $s0, $s0, 0x1
/* 14DB8 800245B8 2B101102 */  sltu       $v0, $s0, $s1
/* 14DBC 800245BC F4FF4014 */  bnez       $v0, .L80024590
/* 14DC0 800245C0 00000000 */   nop
.L800245C4:
/* 14DC4 800245C4 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 14DC8 800245C8 1800B28F */  lw         $s2, 0x18($sp)
/* 14DCC 800245CC 1400B18F */  lw         $s1, 0x14($sp)
/* 14DD0 800245D0 1000B08F */  lw         $s0, 0x10($sp)
/* 14DD4 800245D4 0800E003 */  jr         $ra
/* 14DD8 800245D8 2000BD27 */   addiu     $sp, $sp, 0x20
.size InitCelSet, . - InitCelSet
