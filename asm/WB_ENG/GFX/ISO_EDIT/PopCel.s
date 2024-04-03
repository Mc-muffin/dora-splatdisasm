.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PopCel
/* 3F034 8004E834 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3F038 8004E838 1000B0AF */  sw         $s0, 0x10($sp)
/* 3F03C 8004E83C 0A80103C */  lui        $s0, %hi(CelStack)
/* 3F040 8004E840 306B1026 */  addiu      $s0, $s0, %lo(CelStack)
/* 3F044 8004E844 1400BFAF */  sw         $ra, 0x14($sp)
/* 3F048 8004E848 0C000786 */  lh         $a3, 0xC($s0)
/* 3F04C 8004E84C 2C94010C */  jal        SetCelIndex
/* 3F050 8004E850 00000000 */   nop
/* 3F054 8004E854 1400BF8F */  lw         $ra, 0x14($sp)
/* 3F058 8004E858 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 3F05C 8004E85C 0C0002A6 */  sh         $v0, 0xC($s0)
/* 3F060 8004E860 1000B08F */  lw         $s0, 0x10($sp)
/* 3F064 8004E864 0800E003 */  jr         $ra
/* 3F068 8004E868 1800BD27 */   addiu     $sp, $sp, 0x18
.size PopCel, . - PopCel
