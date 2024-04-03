.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LoadCineGraphicIntoFrameBuffer
/* 3267C 80041E7C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 32680 80041E80 21200000 */  addu       $a0, $zero, $zero
/* 32684 80041E84 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 32688 80041E88 2188A000 */  addu       $s1, $a1, $zero
/* 3268C 80041E8C 2000BFAF */  sw         $ra, 0x20($sp)
/* 32690 80041E90 EBD6010C */  jal        VSync
/* 32694 80041E94 1800B0AF */   sw        $s0, 0x18($sp)
/* 32698 80041E98 1000A427 */  addiu      $a0, $sp, 0x10
/* 3269C 80041E9C 0B80103C */  lui        $s0, %hi(gDoubleBuffer)
/* 326A0 80041EA0 78B91026 */  addiu      $s0, $s0, %lo(gDoubleBuffer)
/* 326A4 80041EA4 0980023C */  lui        $v0, %hi(ot_ndx)
/* 326A8 80041EA8 4853428C */  lw         $v0, %lo(ot_ndx)($v0)
/* 326AC 80041EAC 08023126 */  addiu      $s1, $s1, 0x208
/* 326B0 80041EB0 C0110200 */  sll        $v0, $v0, 7
/* 326B4 80041EB4 21105000 */  addu       $v0, $v0, $s0
/* 326B8 80041EB8 180040A0 */  sb         $zero, 0x18($v0)
/* 326BC 80041EBC 180000A2 */  sb         $zero, 0x18($s0)
/* 326C0 80041EC0 5C004394 */  lhu        $v1, 0x5C($v0)
/* 326C4 80041EC4 5E004694 */  lhu        $a2, 0x5E($v0)
/* 326C8 80041EC8 60004794 */  lhu        $a3, 0x60($v0)
/* 326CC 80041ECC 62004894 */  lhu        $t0, 0x62($v0)
/* 326D0 80041ED0 21282002 */  addu       $a1, $s1, $zero
/* 326D4 80041ED4 1000A3A7 */  sh         $v1, 0x10($sp)
/* 326D8 80041ED8 1200A6A7 */  sh         $a2, 0x12($sp)
/* 326DC 80041EDC 1400A7A7 */  sh         $a3, 0x14($sp)
/* 326E0 80041EE0 E1DB010C */  jal        LoadImage
/* 326E4 80041EE4 1600A8A7 */   sh        $t0, 0x16($sp)
/* 326E8 80041EE8 36DB010C */  jal        DrawSync
/* 326EC 80041EEC 21200000 */   addu      $a0, $zero, $zero
/* 326F0 80041EF0 0980033C */  lui        $v1, %hi(ot_ndx)
/* 326F4 80041EF4 4853638C */  lw         $v1, %lo(ot_ndx)($v1)
/* 326F8 80041EF8 1000A427 */  addiu      $a0, $sp, 0x10
/* 326FC 80041EFC 01006338 */  xori       $v1, $v1, 0x1
/* 32700 80041F00 C0190300 */  sll        $v1, $v1, 7
/* 32704 80041F04 21187000 */  addu       $v1, $v1, $s0
/* 32708 80041F08 5C006294 */  lhu        $v0, 0x5C($v1)
/* 3270C 80041F0C 5E006694 */  lhu        $a2, 0x5E($v1)
/* 32710 80041F10 60006794 */  lhu        $a3, 0x60($v1)
/* 32714 80041F14 62006894 */  lhu        $t0, 0x62($v1)
/* 32718 80041F18 21282002 */  addu       $a1, $s1, $zero
/* 3271C 80041F1C 1000A2A7 */  sh         $v0, 0x10($sp)
/* 32720 80041F20 1200A6A7 */  sh         $a2, 0x12($sp)
/* 32724 80041F24 1400A7A7 */  sh         $a3, 0x14($sp)
/* 32728 80041F28 E1DB010C */  jal        LoadImage
/* 3272C 80041F2C 1600A8A7 */   sh        $t0, 0x16($sp)
/* 32730 80041F30 36DB010C */  jal        DrawSync
/* 32734 80041F34 21200000 */   addu      $a0, $zero, $zero
/* 32738 80041F38 2000BF8F */  lw         $ra, 0x20($sp)
/* 3273C 80041F3C 1C00B18F */  lw         $s1, 0x1C($sp)
/* 32740 80041F40 1800B08F */  lw         $s0, 0x18($sp)
/* 32744 80041F44 0800E003 */  jr         $ra
/* 32748 80041F48 2800BD27 */   addiu     $sp, $sp, 0x28
.size LoadCineGraphicIntoFrameBuffer, . - LoadCineGraphicIntoFrameBuffer
