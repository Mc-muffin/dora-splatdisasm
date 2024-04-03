.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ETCleanUpBrains
/* A6D8 80019ED8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A6DC 80019EDC 1000B0AF */  sw         $s0, 0x10($sp)
/* A6E0 80019EE0 21808000 */  addu       $s0, $a0, $zero
/* A6E4 80019EE4 0980023C */  lui        $v0, %hi(ETActor + 0xC)
/* A6E8 80019EE8 BC5A448C */  lw         $a0, %lo(ETActor + 0xC)($v0)
/* A6EC 80019EEC 0B000324 */  addiu      $v1, $zero, 0xB
/* A6F0 80019EF0 2A008310 */  beq        $a0, $v1, .L80019F9C
/* A6F4 80019EF4 1400BFAF */   sw        $ra, 0x14($sp)
/* A6F8 80019EF8 535E000C */  jal        ETCheckCollisions
/* A6FC 80019EFC 21200002 */   addu      $a0, $s0, $zero
/* A700 80019F00 135C000C */  jal        CheckActorCollideEnv
/* A704 80019F04 21200002 */   addu      $a0, $s0, $zero
/* A708 80019F08 5800048E */  lw         $a0, 0x58($s0)
/* A70C 80019F0C 5400068E */  lw         $a2, 0x54($s0)
/* A710 80019F10 FF0F8430 */  andi       $a0, $a0, 0xFFF
/* A714 80019F14 2318C400 */  subu       $v1, $a2, $a0
/* A718 80019F18 03006104 */  bgez       $v1, .L80019F28
/* A71C 80019F1C 00086228 */   slti      $v0, $v1, 0x800
/* A720 80019F20 23188600 */  subu       $v1, $a0, $a2
/* A724 80019F24 00086228 */  slti       $v0, $v1, 0x800
.L80019F28:
/* A728 80019F28 04004014 */  bnez       $v0, .L80019F3C
/* A72C 80019F2C 2110C300 */   addu      $v0, $a2, $v1
/* A730 80019F30 00100224 */  addiu      $v0, $zero, 0x1000
/* A734 80019F34 23184300 */  subu       $v1, $v0, $v1
/* A738 80019F38 2110C300 */  addu       $v0, $a2, $v1
.L80019F3C:
/* A73C 80019F3C FF0F4230 */  andi       $v0, $v0, 0xFFF
/* A740 80019F40 08004414 */  bne        $v0, $a0, .L80019F64
/* A744 80019F44 00000000 */   nop
/* A748 80019F48 5C00058E */  lw         $a1, 0x5C($s0)
/* A74C 80019F4C 00000000 */  nop
/* A750 80019F50 2A10A300 */  slt        $v0, $a1, $v1
/* A754 80019F54 0A004010 */  beqz       $v0, .L80019F80
/* A758 80019F58 2110C500 */   addu      $v0, $a2, $a1
/* A75C 80019F5C E1670008 */  j          .L80019F84
/* A760 80019F60 540002AE */   sw        $v0, 0x54($s0)
.L80019F64:
/* A764 80019F64 5C00058E */  lw         $a1, 0x5C($s0)
/* A768 80019F68 00000000 */  nop
/* A76C 80019F6C 2A10A300 */  slt        $v0, $a1, $v1
/* A770 80019F70 03004010 */  beqz       $v0, .L80019F80
/* A774 80019F74 2310C500 */   subu      $v0, $a2, $a1
/* A778 80019F78 E1670008 */  j          .L80019F84
/* A77C 80019F7C 540002AE */   sw        $v0, 0x54($s0)
.L80019F80:
/* A780 80019F80 540004AE */  sw         $a0, 0x54($s0)
.L80019F84:
/* A784 80019F84 21200002 */  addu       $a0, $s0, $zero
/* A788 80019F88 10DE000C */  jal        CheckNextAnim
/* A78C 80019F8C 2C010526 */   addiu     $a1, $s0, 0x12C
/* A790 80019F90 21200002 */  addu       $a0, $s0, $zero
/* A794 80019F94 BFDD000C */  jal        CheckNextAnimOverlay
/* A798 80019F98 58018524 */   addiu     $a1, $a0, 0x158
.L80019F9C:
/* A79C 80019F9C 1400BF8F */  lw         $ra, 0x14($sp)
/* A7A0 80019FA0 1000B08F */  lw         $s0, 0x10($sp)
/* A7A4 80019FA4 0800E003 */  jr         $ra
/* A7A8 80019FA8 1800BD27 */   addiu     $sp, $sp, 0x18
.size ETCleanUpBrains, . - ETCleanUpBrains
