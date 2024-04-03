.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel BootsExpressionService
/* 25E88 80035688 D009858F */  lw         $a1, %gp_rel(BootsExpressionFile)($gp)
/* 25E8C 8003568C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 25E90 80035690 3400A010 */  beqz       $a1, .L80035764
/* 25E94 80035694 1800BFAF */   sw        $ra, 0x18($sp)
/* 25E98 80035698 D809828F */  lw         $v0, %gp_rel(BootsEyeTimer)($gp)
/* 25E9C 8003569C 00000000 */  nop
/* 25EA0 800356A0 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 25EA4 800356A4 D80982AF */  sw         $v0, %gp_rel(BootsEyeTimer)($gp)
/* 25EA8 800356A8 2E004014 */  bnez       $v0, .L80035764
/* 25EAC 800356AC AA2A033C */   lui       $v1, (0x2AAAAAAB >> 16)
/* 25EB0 800356B0 D409848F */  lw         $a0, %gp_rel(BootsEyeFrame)($gp)
/* 25EB4 800356B4 ABAA6334 */  ori        $v1, $v1, (0x2AAAAAAB & 0xFFFF)
/* 25EB8 800356B8 01008424 */  addiu      $a0, $a0, 0x1
/* 25EBC 800356BC 18008300 */  mult       $a0, $v1
/* 25EC0 800356C0 2130A000 */  addu       $a2, $a1, $zero
/* 25EC4 800356C4 0A000224 */  addiu      $v0, $zero, 0xA
/* 25EC8 800356C8 D80982AF */  sw         $v0, %gp_rel(BootsEyeTimer)($gp)
/* 25ECC 800356CC C32F0400 */  sra        $a1, $a0, 31
/* 25ED0 800356D0 10180000 */  mfhi       $v1
/* 25ED4 800356D4 43180300 */  sra        $v1, $v1, 1
/* 25ED8 800356D8 23186500 */  subu       $v1, $v1, $a1
/* 25EDC 800356DC 40100300 */  sll        $v0, $v1, 1
/* 25EE0 800356E0 21104300 */  addu       $v0, $v0, $v1
/* 25EE4 800356E4 80100200 */  sll        $v0, $v0, 2
/* 25EE8 800356E8 23208200 */  subu       $a0, $a0, $v0
/* 25EEC 800356EC 0880023C */  lui        $v0, %hi(BootsBlinkTable)
/* 25EF0 800356F0 287D4224 */  addiu      $v0, $v0, %lo(BootsBlinkTable)
/* 25EF4 800356F4 D40984AF */  sw         $a0, %gp_rel(BootsEyeFrame)($gp)
/* 25EF8 800356F8 80200400 */  sll        $a0, $a0, 2
/* 25EFC 800356FC 21208200 */  addu       $a0, $a0, $v0
/* 25F00 80035700 0000848C */  lw         $a0, 0x0($a0)
/* 25F04 80035704 00000000 */  nop
/* 25F08 80035708 04008018 */  blez       $a0, .L8003571C
/* 25F0C 8003570C 1000A527 */   addiu     $a1, $sp, 0x10
.L80035710:
/* 25F10 80035710 FFFF8424 */  addiu      $a0, $a0, -0x1
/* 25F14 80035714 FEFF8014 */  bnez       $a0, .L80035710
/* 25F18 80035718 0812C624 */   addiu     $a2, $a2, 0x1208
.L8003571C:
/* 25F1C 8003571C 0C80033C */  lui        $v1, %hi(VRAMItems)
/* 25F20 80035720 4814848F */  lw         $a0, %gp_rel(BootsVramIndex)($gp)
/* 25F24 80035724 38AD6324 */  addiu      $v1, $v1, %lo(VRAMItems)
/* 25F28 80035728 80100400 */  sll        $v0, $a0, 2
/* 25F2C 8003572C 21104400 */  addu       $v0, $v0, $a0
/* 25F30 80035730 80100200 */  sll        $v0, $v0, 2
/* 25F34 80035734 21104300 */  addu       $v0, $v0, $v1
/* 25F38 80035738 03004388 */  lwl        $v1, 0x3($v0)
/* 25F3C 8003573C 00004398 */  lwr        $v1, 0x0($v0)
/* 25F40 80035740 07004488 */  lwl        $a0, 0x7($v0)
/* 25F44 80035744 04004498 */  lwr        $a0, 0x4($v0)
/* 25F48 80035748 1300A3AB */  swl        $v1, 0x13($sp)
/* 25F4C 8003574C 1000A3BB */  swr        $v1, 0x10($sp)
/* 25F50 80035750 1700A4AB */  swl        $a0, 0x17($sp)
/* 25F54 80035754 1400A4BB */  swr        $a0, 0x14($sp)
/* 25F58 80035758 2120A000 */  addu       $a0, $a1, $zero
/* 25F5C 8003575C 636E010C */  jal        AddVBLoadImage
/* 25F60 80035760 0802C524 */   addiu     $a1, $a2, 0x208
.L80035764:
/* 25F64 80035764 1800BF8F */  lw         $ra, 0x18($sp)
/* 25F68 80035768 00000000 */  nop
/* 25F6C 8003576C 0800E003 */  jr         $ra
/* 25F70 80035770 2000BD27 */   addiu     $sp, $sp, 0x20
.size BootsExpressionService, . - BootsExpressionService
