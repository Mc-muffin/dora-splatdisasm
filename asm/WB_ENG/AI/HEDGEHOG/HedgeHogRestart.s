.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel HedgeHogRestart
/* 379AC 800471AC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 379B0 800471B0 1000B0AF */  sw         $s0, 0x10($sp)
/* 379B4 800471B4 21808000 */  addu       $s0, $a0, $zero
/* 379B8 800471B8 01000224 */  addiu      $v0, $zero, 0x1
/* 379BC 800471BC 1400BFAF */  sw         $ra, 0x14($sp)
/* 379C0 800471C0 2801038E */  lw         $v1, 0x128($s0)
/* 379C4 800471C4 04000524 */  addiu      $a1, $zero, 0x4
/* 379C8 800471C8 000062AC */  sw         $v0, 0x0($v1)
/* 379CC 800471CC 0C0005AE */  sw         $a1, 0xC($s0)
/* 379D0 800471D0 080060AC */  sw         $zero, 0x8($v1)
/* 379D4 800471D4 0C0060AC */  sw         $zero, 0xC($v1)
/* 379D8 800471D8 040060AC */  sw         $zero, 0x4($v1)
/* 379DC 800471DC 4400048E */  lw         $a0, 0x44($s0)
/* 379E0 800471E0 2C010224 */  addiu      $v0, $zero, 0x12C
/* 379E4 800471E4 5C0002AE */  sw         $v0, 0x5C($s0)
/* 379E8 800471E8 0C0005AE */  sw         $a1, 0xC($s0)
/* 379EC 800471EC 0000858C */  lw         $a1, 0x0($a0)
/* 379F0 800471F0 0400868C */  lw         $a2, 0x4($a0)
/* 379F4 800471F4 0800878C */  lw         $a3, 0x8($a0)
/* 379F8 800471F8 77FB000C */  jal        MotionPhysics_SetPosition
/* 379FC 800471FC 6C000426 */   addiu     $a0, $s0, 0x6C
/* 37A00 80047200 DC28010C */  jal        GenericReInit
/* 37A04 80047204 21200002 */   addu      $a0, $s0, $zero
/* 37A08 80047208 1400BF8F */  lw         $ra, 0x14($sp)
/* 37A0C 8004720C 1000B08F */  lw         $s0, 0x10($sp)
/* 37A10 80047210 0800E003 */  jr         $ra
/* 37A14 80047214 1800BD27 */   addiu     $sp, $sp, 0x18
.size HedgeHogRestart, . - HedgeHogRestart
