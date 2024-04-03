.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitClearSprite
/* 15DE4 800255E4 05000724 */  addiu      $a3, $zero, 0x5
/* 15DE8 800255E8 28000624 */  addiu      $a2, $zero, 0x28
/* 15DEC 800255EC 3F010524 */  addiu      $a1, $zero, 0x13F
/* 15DF0 800255F0 EF000424 */  addiu      $a0, $zero, 0xEF
/* 15DF4 800255F4 0980023C */  lui        $v0, %hi(ClearSprite)
/* 15DF8 800255F8 F0684224 */  addiu      $v0, $v0, %lo(ClearSprite)
/* 15DFC 800255FC 01000324 */  addiu      $v1, $zero, 0x1
.L80025600:
/* 15E00 80025600 030047A0 */  sb         $a3, 0x3($v0)
/* 15E04 80025604 070046A0 */  sb         $a2, 0x7($v0)
/* 15E08 80025608 040040A0 */  sb         $zero, 0x4($v0)
/* 15E0C 8002560C 050040A0 */  sb         $zero, 0x5($v0)
/* 15E10 80025610 060040A0 */  sb         $zero, 0x6($v0)
/* 15E14 80025614 080040A4 */  sh         $zero, 0x8($v0)
/* 15E18 80025618 0A0040A4 */  sh         $zero, 0xA($v0)
/* 15E1C 8002561C 0C0045A4 */  sh         $a1, 0xC($v0)
/* 15E20 80025620 0E0040A4 */  sh         $zero, 0xE($v0)
/* 15E24 80025624 100040A4 */  sh         $zero, 0x10($v0)
/* 15E28 80025628 120044A4 */  sh         $a0, 0x12($v0)
/* 15E2C 8002562C 140045A4 */  sh         $a1, 0x14($v0)
/* 15E30 80025630 160044A4 */  sh         $a0, 0x16($v0)
/* 15E34 80025634 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 15E38 80025638 F1FF6104 */  bgez       $v1, .L80025600
/* 15E3C 8002563C 18004224 */   addiu     $v0, $v0, 0x18
/* 15E40 80025640 0800E003 */  jr         $ra
/* 15E44 80025644 00000000 */   nop
.size InitClearSprite, . - InitClearSprite
