.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawActorShadow
/* 52CFC 800624FC B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 52D00 80062500 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 52D04 80062504 2198A000 */  addu       $s3, $a1, $zero
/* 52D08 80062508 2400B1AF */  sw         $s1, 0x24($sp)
/* 52D0C 8006250C 21888000 */  addu       $s1, $a0, $zero
/* 52D10 80062510 4000BFAF */  sw         $ra, 0x40($sp)
/* 52D14 80062514 3C00B7AF */  sw         $s7, 0x3C($sp)
/* 52D18 80062518 3800B6AF */  sw         $s6, 0x38($sp)
/* 52D1C 8006251C 3400B5AF */  sw         $s5, 0x34($sp)
/* 52D20 80062520 3000B4AF */  sw         $s4, 0x30($sp)
/* 52D24 80062524 2800B2AF */  sw         $s2, 0x28($sp)
/* 52D28 80062528 2000B0AF */  sw         $s0, 0x20($sp)
/* 52D2C 8006252C 1000228E */  lw         $v0, 0x10($s1)
/* 52D30 80062530 00000000 */  nop
/* 52D34 80062534 00084230 */  andi       $v0, $v0, 0x800
/* 52D38 80062538 39004010 */  beqz       $v0, .L80062620
/* 52D3C 8006253C 6C003026 */   addiu     $s0, $s1, 0x6C
/* 52D40 80062540 0800058E */  lw         $a1, 0x8($s0)
/* 52D44 80062544 0400158E */  lw         $s5, 0x4($s0)
/* 52D48 80062548 0C00178E */  lw         $s7, 0xC($s0)
/* 52D4C 8006254C 4800328E */  lw         $s2, 0x48($s1)
/* 52D50 80062550 2120A002 */  addu       $a0, $s5, $zero
/* 52D54 80062554 CDEF000C */  jal        GetHeight
/* 52D58 80062558 2130E002 */   addu      $a2, $s7, $zero
/* 52D5C 8006255C 0800038E */  lw         $v1, 0x8($s0)
/* 52D60 80062560 21A04000 */  addu       $s4, $v0, $zero
/* 52D64 80062564 23108302 */  subu       $v0, $s4, $v1
/* 52D68 80062568 02004104 */  bgez       $v0, .L80062574
/* 52D6C 8006256C C0191200 */   sll       $v1, $s2, 7
/* 52D70 80062570 21100000 */  addu       $v0, $zero, $zero
.L80062574:
/* 52D74 80062574 83100200 */  sra        $v0, $v0, 2
/* 52D78 80062578 80004224 */  addiu      $v0, $v0, 0x80
/* 52D7C 8006257C 1A006200 */  div        $zero, $v1, $v0
/* 52D80 80062580 12B00000 */  mflo       $s6
/* 52D84 80062584 02004014 */  bnez       $v0, .L80062590
/* 52D88 80062588 00000000 */   nop
/* 52D8C 8006258C CD010000 */  break      0, 7
.L80062590:
/* 52D90 80062590 3800238E */  lw         $v1, 0x38($s1)
/* 52D94 80062594 D411868F */  lw         $a2, %gp_rel(ShadowOffset)($gp)
/* 52D98 80062598 5400328E */  lw         $s2, 0x54($s1)
/* 52D9C 8006259C 1C00258E */  lw         $a1, 0x1C($s1)
/* 52DA0 800625A0 1400C228 */  slti       $v0, $a2, 0x14
/* 52DA4 800625A4 1E004010 */  beqz       $v0, .L80062620
/* 52DA8 800625A8 21986302 */   addu      $s3, $s3, $v1
/* 52DAC 800625AC C0100600 */  sll        $v0, $a2, 3
/* 52DB0 800625B0 23104600 */  subu       $v0, $v0, $a2
/* 52DB4 800625B4 00110200 */  sll        $v0, $v0, 4
/* 52DB8 800625B8 0C80103C */  lui        $s0, %hi(ShadowPolyList)
/* 52DBC 800625BC 0980033C */  lui        $v1, %hi(ot_ndx)
/* 52DC0 800625C0 4853638C */  lw         $v1, %lo(ot_ndx)($v1)
/* 52DC4 800625C4 00E91026 */  addiu      $s0, $s0, %lo(ShadowPolyList)
/* 52DC8 800625C8 80200300 */  sll        $a0, $v1, 2
/* 52DCC 800625CC 21208300 */  addu       $a0, $a0, $v1
/* 52DD0 800625D0 C0200400 */  sll        $a0, $a0, 3
/* 52DD4 800625D4 21209000 */  addu       $a0, $a0, $s0
/* 52DD8 800625D8 4988010C */  jal        SetupShadow
/* 52DDC 800625DC 21204400 */   addu      $a0, $v0, $a0
/* 52DE0 800625E0 2128A002 */  addu       $a1, $s5, $zero
/* 52DE4 800625E4 21308002 */  addu       $a2, $s4, $zero
/* 52DE8 800625E8 D411828F */  lw         $v0, %gp_rel(ShadowOffset)($gp)
/* 52DEC 800625EC 2138E002 */  addu       $a3, $s7, $zero
/* 52DF0 800625F0 1000B6AF */  sw         $s6, 0x10($sp)
/* 52DF4 800625F4 1400B3AF */  sw         $s3, 0x14($sp)
/* 52DF8 800625F8 1800B2AF */  sw         $s2, 0x18($sp)
/* 52DFC 800625FC C0200200 */  sll        $a0, $v0, 3
/* 52E00 80062600 23208200 */  subu       $a0, $a0, $v0
/* 52E04 80062604 00210400 */  sll        $a0, $a0, 4
/* 52E08 80062608 ED83010C */  jal        DrawShadow
/* 52E0C 8006260C 21209000 */   addu      $a0, $a0, $s0
/* 52E10 80062610 D411828F */  lw         $v0, %gp_rel(ShadowOffset)($gp)
/* 52E14 80062614 00000000 */  nop
/* 52E18 80062618 01004224 */  addiu      $v0, $v0, 0x1
/* 52E1C 8006261C D41182AF */  sw         $v0, %gp_rel(ShadowOffset)($gp)
.L80062620:
/* 52E20 80062620 4000BF8F */  lw         $ra, 0x40($sp)
/* 52E24 80062624 3C00B78F */  lw         $s7, 0x3C($sp)
/* 52E28 80062628 3800B68F */  lw         $s6, 0x38($sp)
/* 52E2C 8006262C 3400B58F */  lw         $s5, 0x34($sp)
/* 52E30 80062630 3000B48F */  lw         $s4, 0x30($sp)
/* 52E34 80062634 2C00B38F */  lw         $s3, 0x2C($sp)
/* 52E38 80062638 2800B28F */  lw         $s2, 0x28($sp)
/* 52E3C 8006263C 2400B18F */  lw         $s1, 0x24($sp)
/* 52E40 80062640 2000B08F */  lw         $s0, 0x20($sp)
/* 52E44 80062644 0800E003 */  jr         $ra
/* 52E48 80062648 4800BD27 */   addiu     $sp, $sp, 0x48
.size DrawActorShadow, . - DrawActorShadow
