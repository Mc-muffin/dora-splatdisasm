.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DoraSkatesOn
/* AE50 8001A650 7C00858F */  lw         $a1, %gp_rel(DoraSkatesFile)($gp)
/* AE54 8001A654 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* AE58 8001A658 1D00A010 */  beqz       $a1, .L8001A6D0
/* AE5C 8001A65C 1800BFAF */   sw        $ra, 0x18($sp)
/* AE60 8001A660 0980043C */  lui        $a0, %hi(ETActor + 0xC)
/* AE64 8001A664 0D000224 */  addiu      $v0, $zero, 0xD
/* AE68 8001A668 01000324 */  addiu      $v1, $zero, 0x1
/* AE6C 8001A66C BC5A82AC */  sw         $v0, %lo(ETActor + 0xC)($a0)
/* AE70 8001A670 BC12848F */  lw         $a0, %gp_rel(SkatesVramIndex)($gp)
/* AE74 8001A674 D8030224 */  addiu      $v0, $zero, 0x3D8
/* AE78 8001A678 640083AF */  sw         $v1, %gp_rel(SkateFlag)($gp)
/* AE7C 8001A67C 0980013C */  lui        $at, %hi(TWEAKFRICTION)
/* AE80 8001A680 304E22AC */  sw         $v0, %lo(TWEAKFRICTION)($at)
/* AE84 8001A684 0C80033C */  lui        $v1, %hi(VRAMItems)
/* AE88 8001A688 38AD6324 */  addiu      $v1, $v1, %lo(VRAMItems)
/* AE8C 8001A68C 80100400 */  sll        $v0, $a0, 2
/* AE90 8001A690 21104400 */  addu       $v0, $v0, $a0
/* AE94 8001A694 80100200 */  sll        $v0, $v0, 2
/* AE98 8001A698 21104300 */  addu       $v0, $v0, $v1
/* AE9C 8001A69C 03004388 */  lwl        $v1, 0x3($v0)
/* AEA0 8001A6A0 00004398 */  lwr        $v1, 0x0($v0)
/* AEA4 8001A6A4 07004488 */  lwl        $a0, 0x7($v0)
/* AEA8 8001A6A8 04004498 */  lwr        $a0, 0x4($v0)
/* AEAC 8001A6AC 1300A3AB */  swl        $v1, 0x13($sp)
/* AEB0 8001A6B0 1000A3BB */  swr        $v1, 0x10($sp)
/* AEB4 8001A6B4 1700A4AB */  swl        $a0, 0x17($sp)
/* AEB8 8001A6B8 1400A4BB */  swr        $a0, 0x14($sp)
/* AEBC 8001A6BC 1000A427 */  addiu      $a0, $sp, 0x10
/* AEC0 8001A6C0 636E010C */  jal        AddVBLoadImage
/* AEC4 8001A6C4 0802A524 */   addiu     $a1, $a1, 0x208
/* AEC8 8001A6C8 75D6000C */  jal        BootsSkateOn
/* AECC 8001A6CC 00000000 */   nop
.L8001A6D0:
/* AED0 8001A6D0 1800BF8F */  lw         $ra, 0x18($sp)
/* AED4 8001A6D4 00000000 */  nop
/* AED8 8001A6D8 0800E003 */  jr         $ra
/* AEDC 8001A6DC 2000BD27 */   addiu     $sp, $sp, 0x20
.size DoraSkatesOn, . - DoraSkatesOn
