.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TextureToVRAMReplace
/* 485BC 80057DBC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 485C0 80057DC0 1800B0AF */  sw         $s0, 0x18($sp)
/* 485C4 80057DC4 2180A000 */  addu       $s0, $a1, $zero
/* 485C8 80057DC8 0C80033C */  lui        $v1, %hi(VRAMItems)
/* 485CC 80057DCC 38AD6324 */  addiu      $v1, $v1, %lo(VRAMItems)
/* 485D0 80057DD0 80101000 */  sll        $v0, $s0, 2
/* 485D4 80057DD4 21105000 */  addu       $v0, $v0, $s0
/* 485D8 80057DD8 80100200 */  sll        $v0, $v0, 2
/* 485DC 80057DDC 21104300 */  addu       $v0, $v0, $v1
/* 485E0 80057DE0 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 485E4 80057DE4 03004388 */  lwl        $v1, 0x3($v0)
/* 485E8 80057DE8 00004398 */  lwr        $v1, 0x0($v0)
/* 485EC 80057DEC 07004588 */  lwl        $a1, 0x7($v0)
/* 485F0 80057DF0 04004598 */  lwr        $a1, 0x4($v0)
/* 485F4 80057DF4 1300A3AB */  swl        $v1, 0x13($sp)
/* 485F8 80057DF8 1000A3BB */  swr        $v1, 0x10($sp)
/* 485FC 80057DFC 1700A5AB */  swl        $a1, 0x17($sp)
/* 48600 80057E00 1400A5BB */  swr        $a1, 0x14($sp)
/* 48604 80057E04 08028524 */  addiu      $a1, $a0, 0x208
/* 48608 80057E08 636E010C */  jal        AddVBLoadImage
/* 4860C 80057E0C 1000A427 */   addiu     $a0, $sp, 0x10
/* 48610 80057E10 00841000 */  sll        $s0, $s0, 16
/* 48614 80057E14 03141000 */  sra        $v0, $s0, 16
/* 48618 80057E18 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 4861C 80057E1C 1800B08F */  lw         $s0, 0x18($sp)
/* 48620 80057E20 0800E003 */  jr         $ra
/* 48624 80057E24 2000BD27 */   addiu     $sp, $sp, 0x20
.size TextureToVRAMReplace, . - TextureToVRAMReplace
