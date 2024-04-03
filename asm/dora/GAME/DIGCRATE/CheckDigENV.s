.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckDigENV
/* 12178 80021978 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 1217C 8002197C 21380000 */  addu       $a3, $zero, $zero
/* 12180 80021980 C3210400 */  sra        $a0, $a0, 7
/* 12184 80021984 4000A524 */  addiu      $a1, $a1, 0x40
/* 12188 80021988 C3290500 */  sra        $a1, $a1, 7
/* 1218C 8002198C 7013828F */  lw         $v0, %gp_rel(g_totaldig)($gp)
/* 12190 80021990 C3310600 */  sra        $a2, $a2, 7
/* 12194 80021994 1800A6AF */  sw         $a2, 0x18($sp)
/* 12198 80021998 1000A627 */  addiu      $a2, $sp, 0x10
/* 1219C 8002199C 2000BFAF */  sw         $ra, 0x20($sp)
/* 121A0 800219A0 1000A4AF */  sw         $a0, 0x10($sp)
/* 121A4 800219A4 18004018 */  blez       $v0, .L80021A08
/* 121A8 800219A8 1400A5AF */   sw        $a1, 0x14($sp)
/* 121AC 800219AC 21404000 */  addu       $t0, $v0, $zero
/* 121B0 800219B0 7413858F */  lw         $a1, %gp_rel(WorldDigPtr)($gp)
.L800219B4:
/* 121B4 800219B4 00000000 */  nop
/* 121B8 800219B8 2120A000 */  addu       $a0, $a1, $zero
/* 121BC 800219BC 2400828C */  lw         $v0, 0x24($a0)
/* 121C0 800219C0 00000000 */  nop
/* 121C4 800219C4 01004230 */  andi       $v0, $v0, 0x1
/* 121C8 800219C8 0B004010 */  beqz       $v0, .L800219F8
/* 121CC 800219CC 00000000 */   nop
/* 121D0 800219D0 1000838C */  lw         $v1, 0x10($a0)
/* 121D4 800219D4 0000C28C */  lw         $v0, 0x0($a2)
/* 121D8 800219D8 00000000 */  nop
/* 121DC 800219DC 06006214 */  bne        $v1, $v0, .L800219F8
/* 121E0 800219E0 00000000 */   nop
/* 121E4 800219E4 1800838C */  lw         $v1, 0x18($a0)
/* 121E8 800219E8 0800C28C */  lw         $v0, 0x8($a2)
/* 121EC 800219EC 00000000 */  nop
/* 121F0 800219F0 06006210 */  beq        $v1, $v0, .L80021A0C
/* 121F4 800219F4 00000000 */   nop
.L800219F8:
/* 121F8 800219F8 0100E724 */  addiu      $a3, $a3, 0x1
/* 121FC 800219FC 2A10E800 */  slt        $v0, $a3, $t0
/* 12200 80021A00 ECFF4014 */  bnez       $v0, .L800219B4
/* 12204 80021A04 3000A524 */   addiu     $a1, $a1, 0x30
.L80021A08:
/* 12208 80021A08 21200000 */  addu       $a0, $zero, $zero
.L80021A0C:
/* 1220C 80021A0C 05008010 */  beqz       $a0, .L80021A24
/* 12210 80021A10 21100000 */   addu      $v0, $zero, $zero
/* 12214 80021A14 0000848C */  lw         $a0, 0x0($a0)
/* 12218 80021A18 A38A010C */  jal        ToggleCellAnimation
/* 1221C 80021A1C 00000000 */   nop
/* 12220 80021A20 01000224 */  addiu      $v0, $zero, 0x1
.L80021A24:
/* 12224 80021A24 2000BF8F */  lw         $ra, 0x20($sp)
/* 12228 80021A28 00000000 */  nop
/* 1222C 80021A2C 0800E003 */  jr         $ra
/* 12230 80021A30 2800BD27 */   addiu     $sp, $sp, 0x28
.size CheckDigENV, . - CheckDigENV