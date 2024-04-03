.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TextureToVRAMTileAlign
/* 4864C 80057E4C D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 48650 80057E50 2800B2AF */  sw         $s2, 0x28($sp)
/* 48654 80057E54 21908000 */  addu       $s2, $a0, $zero
/* 48658 80057E58 1000A527 */  addiu      $a1, $sp, 0x10
/* 4865C 80057E5C 21300000 */  addu       $a2, $zero, $zero
/* 48660 80057E60 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 48664 80057E64 2400B1AF */  sw         $s1, 0x24($sp)
/* 48668 80057E68 2000B0AF */  sw         $s0, 0x20($sp)
/* 4866C 80057E6C 00004492 */  lbu        $a0, 0x0($s2)
/* 48670 80057E70 04004296 */  lhu        $v0, 0x4($s2)
/* 48674 80057E74 06004396 */  lhu        $v1, 0x6($s2)
/* 48678 80057E78 01000724 */  addiu      $a3, $zero, 0x1
/* 4867C 80057E7C 1400A2A7 */  sh         $v0, 0x14($sp)
/* 48680 80057E80 0771010C */  jal        AllocVRAM
/* 48684 80057E84 1600A3A7 */   sh        $v1, 0x16($sp)
/* 48688 80057E88 21200000 */  addu       $a0, $zero, $zero
/* 4868C 80057E8C 21884000 */  addu       $s1, $v0, $zero
/* 48690 80057E90 0C80033C */  lui        $v1, %hi(VRAMItems)
/* 48694 80057E94 38AD6324 */  addiu      $v1, $v1, %lo(VRAMItems)
/* 48698 80057E98 80101100 */  sll        $v0, $s1, 2
/* 4869C 80057E9C 21105100 */  addu       $v0, $v0, $s1
/* 486A0 80057EA0 80100200 */  sll        $v0, $v0, 2
/* 486A4 80057EA4 21104300 */  addu       $v0, $v0, $v1
/* 486A8 80057EA8 03004388 */  lwl        $v1, 0x3($v0)
/* 486AC 80057EAC 00004398 */  lwr        $v1, 0x0($v0)
/* 486B0 80057EB0 07004588 */  lwl        $a1, 0x7($v0)
/* 486B4 80057EB4 04004598 */  lwr        $a1, 0x4($v0)
/* 486B8 80057EB8 1B00A3AB */  swl        $v1, 0x1B($sp)
/* 486BC 80057EBC 1800A3BB */  swr        $v1, 0x18($sp)
/* 486C0 80057EC0 1F00A5AB */  swl        $a1, 0x1F($sp)
/* 486C4 80057EC4 1C00A5BB */  swr        $a1, 0x1C($sp)
/* 486C8 80057EC8 36DB010C */  jal        DrawSync
/* 486CC 80057ECC 1800B027 */   addiu     $s0, $sp, 0x18
/* 486D0 80057ED0 21200002 */  addu       $a0, $s0, $zero
/* 486D4 80057ED4 E1DB010C */  jal        LoadImage
/* 486D8 80057ED8 08024526 */   addiu     $a1, $s2, 0x208
/* 486DC 80057EDC 36DB010C */  jal        DrawSync
/* 486E0 80057EE0 21200000 */   addu      $a0, $zero, $zero
/* 486E4 80057EE4 21102002 */  addu       $v0, $s1, $zero
/* 486E8 80057EE8 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 486EC 80057EEC 2800B28F */  lw         $s2, 0x28($sp)
/* 486F0 80057EF0 2400B18F */  lw         $s1, 0x24($sp)
/* 486F4 80057EF4 2000B08F */  lw         $s0, 0x20($sp)
/* 486F8 80057EF8 0800E003 */  jr         $ra
/* 486FC 80057EFC 3000BD27 */   addiu     $sp, $sp, 0x30
.size TextureToVRAMTileAlign, . - TextureToVRAMTileAlign
