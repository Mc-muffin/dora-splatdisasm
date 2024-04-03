.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitModelJointsBuffer
/* 29608 80038E08 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2960C 80038E0C 1000B0AF */  sw         $s0, 0x10($sp)
/* 29610 80038E10 21808000 */  addu       $s0, $a0, $zero
/* 29614 80038E14 1400BFAF */  sw         $ra, 0x14($sp)
/* 29618 80038E18 04000296 */  lhu        $v0, 0x4($s0)
/* 2961C 80038E1C 00000000 */  nop
/* 29620 80038E20 01004224 */  addiu      $v0, $v0, 0x1
/* 29624 80038E24 40200200 */  sll        $a0, $v0, 1
/* 29628 80038E28 21208200 */  addu       $a0, $a0, $v0
/* 2962C 80038E2C 2B3F010C */  jal        new_malloc
/* 29630 80038E30 40200400 */   sll       $a0, $a0, 1
/* 29634 80038E34 21284000 */  addu       $a1, $v0, $zero
/* 29638 80038E38 04000396 */  lhu        $v1, 0x4($s0)
/* 2963C 80038E3C 580002AE */  sw         $v0, 0x58($s0)
/* 29640 80038E40 01006324 */  addiu      $v1, $v1, 0x1
/* 29644 80038E44 40100300 */  sll        $v0, $v1, 1
/* 29648 80038E48 21104300 */  addu       $v0, $v0, $v1
/* 2964C 80038E4C 0B004010 */  beqz       $v0, .L80038E7C
/* 29650 80038E50 21200000 */   addu      $a0, $zero, $zero
.L80038E54:
/* 29654 80038E54 0000A0A0 */  sb         $zero, 0x0($a1)
/* 29658 80038E58 04000396 */  lhu        $v1, 0x4($s0)
/* 2965C 80038E5C 01008424 */  addiu      $a0, $a0, 0x1
/* 29660 80038E60 01006324 */  addiu      $v1, $v1, 0x1
/* 29664 80038E64 40100300 */  sll        $v0, $v1, 1
/* 29668 80038E68 21104300 */  addu       $v0, $v0, $v1
/* 2966C 80038E6C 40100200 */  sll        $v0, $v0, 1
/* 29670 80038E70 2B108200 */  sltu       $v0, $a0, $v0
/* 29674 80038E74 F7FF4014 */  bnez       $v0, .L80038E54
/* 29678 80038E78 0100A524 */   addiu     $a1, $a1, 0x1
.L80038E7C:
/* 2967C 80038E7C 1400BF8F */  lw         $ra, 0x14($sp)
/* 29680 80038E80 1000B08F */  lw         $s0, 0x10($sp)
/* 29684 80038E84 0800E003 */  jr         $ra
/* 29688 80038E88 1800BD27 */   addiu     $sp, $sp, 0x18
.size InitModelJointsBuffer, . - InitModelJointsBuffer
