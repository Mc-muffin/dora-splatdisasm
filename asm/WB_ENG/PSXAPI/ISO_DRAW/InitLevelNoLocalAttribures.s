.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitLevelNoLocalAttribures
/* 56E3C 8006663C 0880083C */  lui        $t0, %hi(TestWorld)
/* 56E40 80066640 8C650725 */  addiu      $a3, $t0, %lo(TestWorld)
/* 56E44 80066644 8C65028D */  lw         $v0, %lo(TestWorld)($t0)
/* 56E48 80066648 0400E38C */  lw         $v1, 0x4($a3)
/* 56E4C 8006664C 00000000 */  nop
/* 56E50 80066650 18004300 */  mult       $v0, $v1
/* 56E54 80066654 12100000 */  mflo       $v0
/* 56E58 80066658 0800E48C */  lw         $a0, 0x8($a3)
/* 56E5C 8006665C 00000000 */  nop
/* 56E60 80066660 18004400 */  mult       $v0, $a0
/* 56E64 80066664 1400E58C */  lw         $a1, 0x14($a3)
/* 56E68 80066668 12100000 */  mflo       $v0
/* 56E6C 8006666C 12004018 */  blez       $v0, .L800666B8
/* 56E70 80066670 21300000 */   addu      $a2, $zero, $zero
.L80066674:
/* 56E74 80066674 0000A294 */  lhu        $v0, 0x0($a1)
/* 56E78 80066678 00000000 */  nop
/* 56E7C 8006667C FF034230 */  andi       $v0, $v0, 0x3FF
/* 56E80 80066680 0000A2A4 */  sh         $v0, 0x0($a1)
/* 56E84 80066684 8C65038D */  lw         $v1, %lo(TestWorld)($t0)
/* 56E88 80066688 0400E28C */  lw         $v0, 0x4($a3)
/* 56E8C 8006668C 00000000 */  nop
/* 56E90 80066690 18006200 */  mult       $v1, $v0
/* 56E94 80066694 12180000 */  mflo       $v1
/* 56E98 80066698 0800E48C */  lw         $a0, 0x8($a3)
/* 56E9C 8006669C 00000000 */  nop
/* 56EA0 800666A0 18006400 */  mult       $v1, $a0
/* 56EA4 800666A4 0100C624 */  addiu      $a2, $a2, 0x1
/* 56EA8 800666A8 12180000 */  mflo       $v1
/* 56EAC 800666AC 2A18C300 */  slt        $v1, $a2, $v1
/* 56EB0 800666B0 F0FF6014 */  bnez       $v1, .L80066674
/* 56EB4 800666B4 0200A524 */   addiu     $a1, $a1, 0x2
.L800666B8:
/* 56EB8 800666B8 0800E003 */  jr         $ra
/* 56EBC 800666BC 00000000 */   nop
.size InitLevelNoLocalAttribures, . - InitLevelNoLocalAttribures
