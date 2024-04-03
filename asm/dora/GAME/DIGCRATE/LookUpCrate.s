.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LookUpCrate
/* 11FCC 800217CC 7813828F */  lw         $v0, %gp_rel(g_totalcrate)($gp)
/* 11FD0 800217D0 00000000 */  nop
/* 11FD4 800217D4 14004018 */  blez       $v0, .L80021828
/* 11FD8 800217D8 21300000 */   addu      $a2, $zero, $zero
/* 11FDC 800217DC 21404000 */  addu       $t0, $v0, $zero
/* 11FE0 800217E0 0000878C */  lw         $a3, 0x0($a0)
/* 11FE4 800217E4 7C13858F */  lw         $a1, %gp_rel(WorldCratePtr)($gp)
.L800217E8:
/* 11FE8 800217E8 00000000 */  nop
/* 11FEC 800217EC 1000A28C */  lw         $v0, 0x10($a1)
/* 11FF0 800217F0 00000000 */  nop
/* 11FF4 800217F4 08004714 */  bne        $v0, $a3, .L80021818
/* 11FF8 800217F8 00000000 */   nop
/* 11FFC 800217FC 1800A38C */  lw         $v1, 0x18($a1)
/* 12000 80021800 0800828C */  lw         $v0, 0x8($a0)
/* 12004 80021804 00000000 */  nop
/* 12008 80021808 04006214 */  bne        $v1, $v0, .L8002181C
/* 1200C 8002180C 0100C624 */   addiu     $a2, $a2, 0x1
/* 12010 80021810 0800E003 */  jr         $ra
/* 12014 80021814 2110A000 */   addu      $v0, $a1, $zero
.L80021818:
/* 12018 80021818 0100C624 */  addiu      $a2, $a2, 0x1
.L8002181C:
/* 1201C 8002181C 2A10C800 */  slt        $v0, $a2, $t0
/* 12020 80021820 F1FF4014 */  bnez       $v0, .L800217E8
/* 12024 80021824 3000A524 */   addiu     $a1, $a1, 0x30
.L80021828:
/* 12028 80021828 0800E003 */  jr         $ra
/* 1202C 8002182C 21100000 */   addu      $v0, $zero, $zero
.size LookUpCrate, . - LookUpCrate
