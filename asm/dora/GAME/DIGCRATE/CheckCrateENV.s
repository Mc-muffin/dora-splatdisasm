.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckCrateENV
/* 12490 80021C90 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 12494 80021C94 21380000 */  addu       $a3, $zero, $zero
/* 12498 80021C98 C3210400 */  sra        $a0, $a0, 7
/* 1249C 80021C9C C3290500 */  sra        $a1, $a1, 7
/* 124A0 80021CA0 C3310600 */  sra        $a2, $a2, 7
/* 124A4 80021CA4 7813828F */  lw         $v0, %gp_rel(g_totalcrate)($gp)
/* 124A8 80021CA8 1000A827 */  addiu      $t0, $sp, 0x10
/* 124AC 80021CAC 2000BFAF */  sw         $ra, 0x20($sp)
/* 124B0 80021CB0 1000A4AF */  sw         $a0, 0x10($sp)
/* 124B4 80021CB4 1400A5AF */  sw         $a1, 0x14($sp)
/* 124B8 80021CB8 13004018 */  blez       $v0, .L80021D08
/* 124BC 80021CBC 1800A6AF */   sw        $a2, 0x18($sp)
/* 124C0 80021CC0 21308000 */  addu       $a2, $a0, $zero
/* 124C4 80021CC4 21284000 */  addu       $a1, $v0, $zero
/* 124C8 80021CC8 7C13838F */  lw         $v1, %gp_rel(WorldCratePtr)($gp)
.L80021CCC:
/* 124CC 80021CCC 00000000 */  nop
/* 124D0 80021CD0 21206000 */  addu       $a0, $v1, $zero
/* 124D4 80021CD4 1000828C */  lw         $v0, 0x10($a0)
/* 124D8 80021CD8 00000000 */  nop
/* 124DC 80021CDC 06004614 */  bne        $v0, $a2, .L80021CF8
/* 124E0 80021CE0 00000000 */   nop
/* 124E4 80021CE4 1800838C */  lw         $v1, 0x18($a0)
/* 124E8 80021CE8 0800028D */  lw         $v0, 0x8($t0)
/* 124EC 80021CEC 00000000 */  nop
/* 124F0 80021CF0 06006210 */  beq        $v1, $v0, .L80021D0C
/* 124F4 80021CF4 21188000 */   addu      $v1, $a0, $zero
.L80021CF8:
/* 124F8 80021CF8 0100E724 */  addiu      $a3, $a3, 0x1
/* 124FC 80021CFC 2A10E500 */  slt        $v0, $a3, $a1
/* 12500 80021D00 F2FF4014 */  bnez       $v0, .L80021CCC
/* 12504 80021D04 30008324 */   addiu     $v1, $a0, 0x30
.L80021D08:
/* 12508 80021D08 21180000 */  addu       $v1, $zero, $zero
.L80021D0C:
/* 1250C 80021D0C 0F006010 */  beqz       $v1, .L80021D4C
/* 12510 80021D10 21100000 */   addu      $v0, $zero, $zero
/* 12514 80021D14 2400628C */  lw         $v0, 0x24($v1)
/* 12518 80021D18 00000000 */  nop
/* 1251C 80021D1C 0A004014 */  bnez       $v0, .L80021D48
/* 12520 80021D20 01000224 */   addiu     $v0, $zero, 0x1
/* 12524 80021D24 0000648C */  lw         $a0, 0x0($v1)
/* 12528 80021D28 A38A010C */  jal        ToggleCellAnimation
/* 1252C 80021D2C 240062AC */   sw        $v0, 0x24($v1)
/* 12530 80021D30 07000424 */  addiu      $a0, $zero, 0x7
/* 12534 80021D34 21280000 */  addu       $a1, $zero, $zero
/* 12538 80021D38 6F4A010C */  jal        pxm_sendevent
/* 1253C 80021D3C 21300000 */   addu      $a2, $zero, $zero
/* 12540 80021D40 53870008 */  j          .L80021D4C
/* 12544 80021D44 01000224 */   addiu     $v0, $zero, 0x1
.L80021D48:
/* 12548 80021D48 21100000 */  addu       $v0, $zero, $zero
.L80021D4C:
/* 1254C 80021D4C 2000BF8F */  lw         $ra, 0x20($sp)
/* 12550 80021D50 00000000 */  nop
/* 12554 80021D54 0800E003 */  jr         $ra
/* 12558 80021D58 2800BD27 */   addiu     $sp, $sp, 0x28
.size CheckCrateENV, . - CheckCrateENV
