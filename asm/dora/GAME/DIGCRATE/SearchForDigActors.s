.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SearchForDigActors
/* 11EB4 800216B4 7013838F */  lw         $v1, %gp_rel(g_totaldig)($gp)
/* 11EB8 800216B8 00000000 */  nop
/* 11EBC 800216BC 28006018 */  blez       $v1, .L80021760
/* 11EC0 800216C0 21380000 */   addu      $a3, $zero, $zero
/* 11EC4 800216C4 07000824 */  addiu      $t0, $zero, 0x7
/* 11EC8 800216C8 01000C24 */  addiu      $t4, $zero, 0x1
/* 11ECC 800216CC 02000624 */  addiu      $a2, $zero, 0x2
/* 11ED0 800216D0 05000B24 */  addiu      $t3, $zero, 0x5
/* 11ED4 800216D4 04000A24 */  addiu      $t2, $zero, 0x4
/* 11ED8 800216D8 06000924 */  addiu      $t1, $zero, 0x6
/* 11EDC 800216DC 7413828F */  lw         $v0, %gp_rel(WorldDigPtr)($gp)
/* 11EE0 800216E0 21286000 */  addu       $a1, $v1, $zero
/* 11EE4 800216E4 28004224 */  addiu      $v0, $v0, 0x28
.L800216E8:
/* 11EE8 800216E8 0000438C */  lw         $v1, 0x0($v0)
/* 11EEC 800216EC 00000000 */  nop
/* 11EF0 800216F0 03006014 */  bnez       $v1, .L80021700
/* 11EF4 800216F4 00000000 */   nop
/* 11EF8 800216F8 15008810 */  beq        $a0, $t0, .L80021750
/* 11EFC 800216FC 00000000 */   nop
.L80021700:
/* 11F00 80021700 03006C14 */  bne        $v1, $t4, .L80021710
/* 11F04 80021704 00000000 */   nop
/* 11F08 80021708 11008610 */  beq        $a0, $a2, .L80021750
/* 11F0C 8002170C 00000000 */   nop
.L80021710:
/* 11F10 80021710 03006B14 */  bne        $v1, $t3, .L80021720
/* 11F14 80021714 00000000 */   nop
/* 11F18 80021718 0D008610 */  beq        $a0, $a2, .L80021750
/* 11F1C 8002171C 00000000 */   nop
.L80021720:
/* 11F20 80021720 03006814 */  bne        $v1, $t0, .L80021730
/* 11F24 80021724 00000000 */   nop
/* 11F28 80021728 09008610 */  beq        $a0, $a2, .L80021750
/* 11F2C 8002172C 00000000 */   nop
.L80021730:
/* 11F30 80021730 03006A14 */  bne        $v1, $t2, .L80021740
/* 11F34 80021734 00000000 */   nop
/* 11F38 80021738 05008610 */  beq        $a0, $a2, .L80021750
/* 11F3C 8002173C 00000000 */   nop
.L80021740:
/* 11F40 80021740 04006614 */  bne        $v1, $a2, .L80021754
/* 11F44 80021744 00000000 */   nop
/* 11F48 80021748 02008914 */  bne        $a0, $t1, .L80021754
/* 11F4C 8002174C 00000000 */   nop
.L80021750:
/* 11F50 80021750 0100E724 */  addiu      $a3, $a3, 0x1
.L80021754:
/* 11F54 80021754 FFFFA524 */  addiu      $a1, $a1, -0x1
/* 11F58 80021758 E3FFA014 */  bnez       $a1, .L800216E8
/* 11F5C 8002175C 30004224 */   addiu     $v0, $v0, 0x30
.L80021760:
/* 11F60 80021760 0800E003 */  jr         $ra
/* 11F64 80021764 2110E000 */   addu      $v0, $a3, $zero
.size SearchForDigActors, . - SearchForDigActors
