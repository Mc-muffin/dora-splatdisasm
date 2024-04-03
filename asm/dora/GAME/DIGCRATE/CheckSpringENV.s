.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckSpringENV
/* 1255C 80021D5C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 12560 80021D60 21380000 */  addu       $a3, $zero, $zero
/* 12564 80021D64 C3210400 */  sra        $a0, $a0, 7
/* 12568 80021D68 C3290500 */  sra        $a1, $a1, 7
/* 1256C 80021D6C C3310600 */  sra        $a2, $a2, 7
/* 12570 80021D70 8013828F */  lw         $v0, %gp_rel(g_totalspringboard)($gp)
/* 12574 80021D74 1000A827 */  addiu      $t0, $sp, 0x10
/* 12578 80021D78 2400BFAF */  sw         $ra, 0x24($sp)
/* 1257C 80021D7C 2000B0AF */  sw         $s0, 0x20($sp)
/* 12580 80021D80 1000A4AF */  sw         $a0, 0x10($sp)
/* 12584 80021D84 1400A5AF */  sw         $a1, 0x14($sp)
/* 12588 80021D88 13004018 */  blez       $v0, .L80021DD8
/* 1258C 80021D8C 1800A6AF */   sw        $a2, 0x18($sp)
/* 12590 80021D90 21308000 */  addu       $a2, $a0, $zero
/* 12594 80021D94 21284000 */  addu       $a1, $v0, $zero
/* 12598 80021D98 8413838F */  lw         $v1, %gp_rel(WorldSpringBoardPtr)($gp)
.L80021D9C:
/* 1259C 80021D9C 00000000 */  nop
/* 125A0 80021DA0 21206000 */  addu       $a0, $v1, $zero
/* 125A4 80021DA4 1000828C */  lw         $v0, 0x10($a0)
/* 125A8 80021DA8 00000000 */  nop
/* 125AC 80021DAC 06004614 */  bne        $v0, $a2, .L80021DC8
/* 125B0 80021DB0 00000000 */   nop
/* 125B4 80021DB4 1800838C */  lw         $v1, 0x18($a0)
/* 125B8 80021DB8 0800028D */  lw         $v0, 0x8($t0)
/* 125BC 80021DBC 00000000 */  nop
/* 125C0 80021DC0 06006210 */  beq        $v1, $v0, .L80021DDC
/* 125C4 80021DC4 21808000 */   addu      $s0, $a0, $zero
.L80021DC8:
/* 125C8 80021DC8 0100E724 */  addiu      $a3, $a3, 0x1
/* 125CC 80021DCC 2A10E500 */  slt        $v0, $a3, $a1
/* 125D0 80021DD0 F2FF4014 */  bnez       $v0, .L80021D9C
/* 125D4 80021DD4 28008324 */   addiu     $v1, $a0, 0x28
.L80021DD8:
/* 125D8 80021DD8 21800000 */  addu       $s0, $zero, $zero
.L80021DDC:
/* 125DC 80021DDC 0F000012 */  beqz       $s0, .L80021E1C
/* 125E0 80021DE0 21100000 */   addu      $v0, $zero, $zero
/* 125E4 80021DE4 0000048E */  lw         $a0, 0x0($s0)
/* 125E8 80021DE8 A38A010C */  jal        ToggleCellAnimation
/* 125EC 80021DEC 00000000 */   nop
/* 125F0 80021DF0 0A004010 */  beqz       $v0, .L80021E1C
/* 125F4 80021DF4 01000224 */   addiu     $v0, $zero, 0x1
/* 125F8 80021DF8 0000048E */  lw         $a0, 0x0($s0)
/* 125FC 80021DFC DB94010C */  jal        GetSoundCellAnimation
/* 12600 80021E00 21280000 */   addu      $a1, $zero, $zero
/* 12604 80021E04 04004004 */  bltz       $v0, .L80021E18
/* 12608 80021E08 1C000424 */   addiu     $a0, $zero, 0x1C
/* 1260C 80021E0C 21284000 */  addu       $a1, $v0, $zero
/* 12610 80021E10 6F4A010C */  jal        pxm_sendevent
/* 12614 80021E14 01000624 */   addiu     $a2, $zero, 0x1
.L80021E18:
/* 12618 80021E18 01000224 */  addiu      $v0, $zero, 0x1
.L80021E1C:
/* 1261C 80021E1C 2400BF8F */  lw         $ra, 0x24($sp)
/* 12620 80021E20 2000B08F */  lw         $s0, 0x20($sp)
/* 12624 80021E24 0800E003 */  jr         $ra
/* 12628 80021E28 2800BD27 */   addiu     $sp, $sp, 0x28
.size CheckSpringENV, . - CheckSpringENV
