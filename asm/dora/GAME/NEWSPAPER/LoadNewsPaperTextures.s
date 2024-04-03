.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LoadNewsPaperTextures
/* 15E5C 8002565C 05000724 */  addiu      $a3, $zero, 0x5
/* 15E60 80025660 28000624 */  addiu      $a2, $zero, 0x28
/* 15E64 80025664 3F010524 */  addiu      $a1, $zero, 0x13F
/* 15E68 80025668 EF000424 */  addiu      $a0, $zero, 0xEF
/* 15E6C 8002566C 0980023C */  lui        $v0, %hi(ClearSprite)
/* 15E70 80025670 F0684224 */  addiu      $v0, $v0, %lo(ClearSprite)
/* 15E74 80025674 01000324 */  addiu      $v1, $zero, 0x1
.L80025678:
/* 15E78 80025678 030047A0 */  sb         $a3, 0x3($v0)
/* 15E7C 8002567C 070046A0 */  sb         $a2, 0x7($v0)
/* 15E80 80025680 040040A0 */  sb         $zero, 0x4($v0)
/* 15E84 80025684 050040A0 */  sb         $zero, 0x5($v0)
/* 15E88 80025688 060040A0 */  sb         $zero, 0x6($v0)
/* 15E8C 8002568C 080040A4 */  sh         $zero, 0x8($v0)
/* 15E90 80025690 0A0040A4 */  sh         $zero, 0xA($v0)
/* 15E94 80025694 0C0045A4 */  sh         $a1, 0xC($v0)
/* 15E98 80025698 0E0040A4 */  sh         $zero, 0xE($v0)
/* 15E9C 8002569C 100040A4 */  sh         $zero, 0x10($v0)
/* 15EA0 800256A0 120044A4 */  sh         $a0, 0x12($v0)
/* 15EA4 800256A4 140045A4 */  sh         $a1, 0x14($v0)
/* 15EA8 800256A8 160044A4 */  sh         $a0, 0x16($v0)
/* 15EAC 800256AC FFFF6324 */  addiu      $v1, $v1, -0x1
/* 15EB0 800256B0 F1FF6104 */  bgez       $v1, .L80025678
/* 15EB4 800256B4 18004224 */   addiu     $v0, $v0, 0x18
/* 15EB8 800256B8 0800E003 */  jr         $ra
/* 15EBC 800256BC 00000000 */   nop
.size LoadNewsPaperTextures, . - LoadNewsPaperTextures
