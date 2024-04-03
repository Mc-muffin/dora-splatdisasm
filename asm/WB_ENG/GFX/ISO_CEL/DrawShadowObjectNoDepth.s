.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel DrawShadowObjectNoDepth
/* 51C50 80061450 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 51C54 80061454 801F0A3C */  lui        $t2, (0x1F800040 >> 16)
/* 51C58 80061458 40004A35 */  ori        $t2, $t2, (0x1F800040 & 0xFFFF)
/* 51C5C 8006145C 801F093C */  lui        $t1, (0x1F80005C >> 16)
/* 51C60 80061460 5C002935 */  ori        $t1, $t1, (0x1F80005C & 0xFFFF)
/* 51C64 80061464 801F063C */  lui        $a2, (0x1F800060 >> 16)
/* 51C68 80061468 6000C634 */  ori        $a2, $a2, (0x1F800060 & 0xFFFF)
/* 51C6C 8006146C 801F073C */  lui        $a3, (0x1F800064 >> 16)
/* 51C70 80061470 6400E734 */  ori        $a3, $a3, (0x1F800064 & 0xFFFF)
/* 51C74 80061474 801F083C */  lui        $t0, (0x1F800068 >> 16)
/* 51C78 80061478 68000835 */  ori        $t0, $t0, (0x1F800068 & 0xFFFF)
/* 51C7C 8006147C 1800B2AF */  sw         $s2, 0x18($sp)
/* 51C80 80061480 2190A000 */  addu       $s2, $a1, $zero
/* 51C84 80061484 0980053C */  lui        $a1, %hi(ot_ndx)
/* 51C88 80061488 4853A58C */  lw         $a1, %lo(ot_ndx)($a1)
/* 51C8C 8006148C 0B80033C */  lui        $v1, %hi(g_nt)
/* 51C90 80061490 1400B1AF */  sw         $s1, 0x14($sp)
/* 51C94 80061494 68BB7124 */  addiu      $s1, $v1, %lo(g_nt)
/* 51C98 80061498 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 51C9C 8006149C 1000B0AF */  sw         $s0, 0x10($sp)
/* 51CA0 800614A0 0000C38C */  lw         $v1, 0x0($a2)
/* 51CA4 800614A4 80100500 */  sll        $v0, $a1, 2
/* 51CA8 800614A8 21104500 */  addu       $v0, $v0, $a1
/* 51CAC 800614AC C0100200 */  sll        $v0, $v0, 3
/* 51CB0 800614B0 21808200 */  addu       $s0, $a0, $v0
/* 51CB4 800614B4 801F043C */  lui        $a0, (0x1F80005C >> 16)
/* 51CB8 800614B8 5C00848C */  lw         $a0, (0x1F80005C & 0xFFFF)($a0)
/* 51CBC 800614BC 0000E28C */  lw         $v0, 0x0($a3)
/* 51CC0 800614C0 00608448 */  mtc2       $a0, $12 /* handwritten instruction */
/* 51CC4 800614C4 00708248 */  mtc2       $v0, $14 /* handwritten instruction */
/* 51CC8 800614C8 00688348 */  mtc2       $v1, $13 /* handwritten instruction */
/* 51CCC 800614CC 00000000 */  nop
/* 51CD0 800614D0 00000000 */  nop
/* 51CD4 800614D4 0600404B */  NCLIP
/* 51CD8 800614D8 000058E9 */  swc2       $24, 0x0($t2)
/* 51CDC 800614DC 0000248D */  lw         $a0, 0x0($t1)
/* 51CE0 800614E0 0000C58C */  lw         $a1, 0x0($a2)
/* 51CE4 800614E4 0000E68C */  lw         $a2, 0x0($a3)
/* 51CE8 800614E8 0000078D */  lw         $a3, 0x0($t0)
/* 51CEC 800614EC 077E010C */  jal        CheckScreenClipXY4
/* 51CF0 800614F0 00000000 */   nop
/* 51CF4 800614F4 17004010 */  beqz       $v0, .L80061554
/* 51CF8 800614F8 00000000 */   nop
/* 51CFC 800614FC 08000CEA */  swc2       $12, 0x8($s0)
/* 51D00 80061500 10000DEA */  swc2       $13, 0x10($s0)
/* 51D04 80061504 18000EEA */  swc2       $14, 0x18($s0)
/* 51D08 80061508 801F023C */  lui        $v0, (0x1F800068 >> 16)
/* 51D0C 8006150C 6800428C */  lw         $v0, (0x1F800068 & 0xFFFF)($v0)
/* 51D10 80061510 C0181200 */  sll        $v1, $s2, 3
/* 51D14 80061514 200002AE */  sw         $v0, 0x20($s0)
/* 51D18 80061518 21107100 */  addu       $v0, $v1, $s1
/* 51D1C 8006151C 0000448C */  lw         $a0, 0x0($v0)
/* 51D20 80061520 00000000 */  nop
/* 51D24 80061524 08008010 */  beqz       $a0, .L80061548
/* 51D28 80061528 21286000 */   addu      $a1, $v1, $zero
/* 51D2C 8006152C FF00023C */  lui        $v0, (0xFFFFFF >> 16)
/* 51D30 80061530 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
/* 51D34 80061534 24108200 */  and        $v0, $a0, $v0
/* 51D38 80061538 0009033C */  lui        $v1, (0x9000000 >> 16)
/* 51D3C 8006153C 25104300 */  or         $v0, $v0, $v1
/* 51D40 80061540 53850108 */  j          .L8006154C
/* 51D44 80061544 000002AE */   sw        $v0, 0x0($s0)
.L80061548:
/* 51D48 80061548 040050AC */  sw         $s0, 0x4($v0)
.L8006154C:
/* 51D4C 8006154C 2110B100 */  addu       $v0, $a1, $s1
/* 51D50 80061550 000050AC */  sw         $s0, 0x0($v0)
.L80061554:
/* 51D54 80061554 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 51D58 80061558 1800B28F */  lw         $s2, 0x18($sp)
/* 51D5C 8006155C 1400B18F */  lw         $s1, 0x14($sp)
/* 51D60 80061560 1000B08F */  lw         $s0, 0x10($sp)
/* 51D64 80061564 0800E003 */  jr         $ra
/* 51D68 80061568 2000BD27 */   addiu     $sp, $sp, 0x20
.size DrawShadowObjectNoDepth, . - DrawShadowObjectNoDepth
