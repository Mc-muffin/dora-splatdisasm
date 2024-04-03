.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel strNextVlc
/* 3FEB4 8004F6B4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3FEB8 8004F6B8 1400B1AF */  sw         $s1, 0x14($sp)
/* 3FEBC 8004F6BC 21888000 */  addu       $s1, $a0, $zero
/* 3FEC0 8004F6C0 1800BFAF */  sw         $ra, 0x18($sp)
/* 3FEC4 8004F6C4 EF3D010C */  jal        strNext
/* 3FEC8 8004F6C8 1000B0AF */   sw        $s0, 0x10($sp)
/* 3FECC 8004F6CC 21804000 */  addu       $s0, $v0, $zero
/* 3FED0 8004F6D0 0E000012 */  beqz       $s0, .L8004F70C
/* 3FED4 8004F6D4 00000000 */   nop
/* 3FED8 8004F6D8 0800228E */  lw         $v0, 0x8($s1)
/* 3FEDC 8004F6DC 00000000 */  nop
/* 3FEE0 8004F6E0 0100422C */  sltiu      $v0, $v0, 0x1
/* 3FEE4 8004F6E4 080022AE */  sw         $v0, 0x8($s1)
/* 3FEE8 8004F6E8 80100200 */  sll        $v0, $v0, 2
/* 3FEEC 8004F6EC 21102202 */  addu       $v0, $s1, $v0
/* 3FEF0 8004F6F0 0000458C */  lw         $a1, 0x0($v0)
/* 3FEF4 8004F6F4 549F010C */  jal        DecDCTvlc3
/* 3FEF8 8004F6F8 21200002 */   addu      $a0, $s0, $zero
/* 3FEFC 8004F6FC A3C9010C */  jal        StFreeRing
/* 3FF00 8004F700 21200002 */   addu      $a0, $s0, $zero
/* 3FF04 8004F704 C43D0108 */  j          .L8004F710
/* 3FF08 8004F708 01000224 */   addiu     $v0, $zero, 0x1
.L8004F70C:
/* 3FF0C 8004F70C 21100000 */  addu       $v0, $zero, $zero
.L8004F710:
/* 3FF10 8004F710 1800BF8F */  lw         $ra, 0x18($sp)
/* 3FF14 8004F714 1400B18F */  lw         $s1, 0x14($sp)
/* 3FF18 8004F718 1000B08F */  lw         $s0, 0x10($sp)
/* 3FF1C 8004F71C 0800E003 */  jr         $ra
/* 3FF20 8004F720 2000BD27 */   addiu     $sp, $sp, 0x20
.size strNextVlc, . - strNextVlc
