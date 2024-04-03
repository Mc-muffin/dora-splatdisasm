.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DoraSkatesOff
/* AD98 8001A598 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* AD9C 8001A59C 7C00858F */  lw         $a1, %gp_rel(DoraSkatesFile)($gp)
/* ADA0 8001A5A0 0980023C */  lui        $v0, %hi(ETActor + 0xC)
/* ADA4 8001A5A4 BC5A40AC */  sw         $zero, %lo(ETActor + 0xC)($v0)
/* ADA8 8001A5A8 60030224 */  addiu      $v0, $zero, 0x360
/* ADAC 8001A5AC 1800BFAF */  sw         $ra, 0x18($sp)
/* ADB0 8001A5B0 640080AF */  sw         $zero, %gp_rel(SkateFlag)($gp)
/* ADB4 8001A5B4 0980013C */  lui        $at, %hi(TWEAKFRICTION)
/* ADB8 8001A5B8 304E22AC */  sw         $v0, %lo(TWEAKFRICTION)($at)
/* ADBC 8001A5BC 2000A010 */  beqz       $a1, .L8001A640
/* ADC0 8001A5C0 00000000 */   nop
/* ADC4 8001A5C4 0400A394 */  lhu        $v1, 0x4($a1)
/* ADC8 8001A5C8 0600A294 */  lhu        $v0, 0x6($a1)
/* ADCC 8001A5CC 00000000 */  nop
/* ADD0 8001A5D0 18006200 */  mult       $v1, $v0
/* ADD4 8001A5D4 BC12848F */  lw         $a0, %gp_rel(SkatesVramIndex)($gp)
/* ADD8 8001A5D8 21100000 */  addu       $v0, $zero, $zero
/* ADDC 8001A5DC 12180000 */  mflo       $v1
/* ADE0 8001A5E0 08026324 */  addiu      $v1, $v1, 0x208
/* ADE4 8001A5E4 FFFF4224 */  addiu      $v0, $v0, -0x1
.L8001A5E8:
/* ADE8 8001A5E8 FFFF4104 */  bgez       $v0, .L8001A5E8
/* ADEC 8001A5EC FFFF4224 */   addiu     $v0, $v0, -0x1
/* ADF0 8001A5F0 21286500 */  addu       $a1, $v1, $a1
/* ADF4 8001A5F4 0C80033C */  lui        $v1, %hi(VRAMItems)
/* ADF8 8001A5F8 38AD6324 */  addiu      $v1, $v1, %lo(VRAMItems)
/* ADFC 8001A5FC 80100400 */  sll        $v0, $a0, 2
/* AE00 8001A600 21104400 */  addu       $v0, $v0, $a0
/* AE04 8001A604 80100200 */  sll        $v0, $v0, 2
/* AE08 8001A608 21104300 */  addu       $v0, $v0, $v1
/* AE0C 8001A60C 03004388 */  lwl        $v1, 0x3($v0)
/* AE10 8001A610 00004398 */  lwr        $v1, 0x0($v0)
/* AE14 8001A614 07004488 */  lwl        $a0, 0x7($v0)
/* AE18 8001A618 04004498 */  lwr        $a0, 0x4($v0)
/* AE1C 8001A61C 1300A3AB */  swl        $v1, 0x13($sp)
/* AE20 8001A620 1000A3BB */  swr        $v1, 0x10($sp)
/* AE24 8001A624 1700A4AB */  swl        $a0, 0x17($sp)
/* AE28 8001A628 1400A4BB */  swr        $a0, 0x14($sp)
/* AE2C 8001A62C 1000A427 */  addiu      $a0, $sp, 0x10
/* AE30 8001A630 636E010C */  jal        AddVBLoadImage
/* AE34 8001A634 0802A524 */   addiu     $a1, $a1, 0x208
/* AE38 8001A638 88D6000C */  jal        BootsSkateOff
/* AE3C 8001A63C 00000000 */   nop
.L8001A640:
/* AE40 8001A640 1800BF8F */  lw         $ra, 0x18($sp)
/* AE44 8001A644 00000000 */  nop
/* AE48 8001A648 0800E003 */  jr         $ra
/* AE4C 8001A64C 2000BD27 */   addiu     $sp, $sp, 0x20
.size DoraSkatesOff, . - DoraSkatesOff
