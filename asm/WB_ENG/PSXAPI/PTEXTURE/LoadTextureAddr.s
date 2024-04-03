.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LoadTextureAddr
/* 482D0 80057AD0 C8FDBD27 */  addiu      $sp, $sp, -0x238
/* 482D4 80057AD4 2C02B1AF */  sw         $s1, 0x22C($sp)
/* 482D8 80057AD8 21888000 */  addu       $s1, $a0, $zero
/* 482DC 80057ADC 3002BFAF */  sw         $ra, 0x230($sp)
/* 482E0 80057AE0 38002012 */  beqz       $s1, .L80057BC4
/* 482E4 80057AE4 2802B0AF */   sw        $s0, 0x228($sp)
/* 482E8 80057AE8 1000A527 */  addiu      $a1, $sp, 0x10
/* 482EC 80057AEC 21300000 */  addu       $a2, $zero, $zero
/* 482F0 80057AF0 00002492 */  lbu        $a0, 0x0($s1)
/* 482F4 80057AF4 04002296 */  lhu        $v0, 0x4($s1)
/* 482F8 80057AF8 06002396 */  lhu        $v1, 0x6($s1)
/* 482FC 80057AFC 21380000 */  addu       $a3, $zero, $zero
/* 48300 80057B00 1400A2A7 */  sh         $v0, 0x14($sp)
/* 48304 80057B04 0771010C */  jal        AllocVRAM
/* 48308 80057B08 1600A3A7 */   sh        $v1, 0x16($sp)
/* 4830C 80057B0C 21804000 */  addu       $s0, $v0, $zero
/* 48310 80057B10 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 48314 80057B14 15000212 */  beq        $s0, $v0, .L80057B6C
/* 48318 80057B18 0C80033C */   lui       $v1, %hi(VRAMItems)
/* 4831C 80057B1C 38AD6324 */  addiu      $v1, $v1, %lo(VRAMItems)
/* 48320 80057B20 80101000 */  sll        $v0, $s0, 2
/* 48324 80057B24 21105000 */  addu       $v0, $v0, $s0
/* 48328 80057B28 80100200 */  sll        $v0, $v0, 2
/* 4832C 80057B2C 21104300 */  addu       $v0, $v0, $v1
/* 48330 80057B30 03004388 */  lwl        $v1, 0x3($v0)
/* 48334 80057B34 00004398 */  lwr        $v1, 0x0($v0)
/* 48338 80057B38 07004488 */  lwl        $a0, 0x7($v0)
/* 4833C 80057B3C 04004498 */  lwr        $a0, 0x4($v0)
/* 48340 80057B40 1B00A3AB */  swl        $v1, 0x1B($sp)
/* 48344 80057B44 1800A3BB */  swr        $v1, 0x18($sp)
/* 48348 80057B48 1F00A4AB */  swl        $a0, 0x1F($sp)
/* 4834C 80057B4C 1C00A4BB */  swr        $a0, 0x1C($sp)
/* 48350 80057B50 36DB010C */  jal        DrawSync
/* 48354 80057B54 21200000 */   addu      $a0, $zero, $zero
/* 48358 80057B58 1800A427 */  addiu      $a0, $sp, 0x18
/* 4835C 80057B5C E1DB010C */  jal        LoadImage
/* 48360 80057B60 08022526 */   addiu     $a1, $s1, 0x208
/* 48364 80057B64 36DB010C */  jal        DrawSync
/* 48368 80057B68 21200000 */   addu      $a0, $zero, $zero
.L80057B6C:
/* 4836C 80057B6C 50108497 */  lhu        $a0, %gp_rel(ImageClutId)($gp)
/* 48370 80057B70 01000224 */  addiu      $v0, $zero, 0x1
/* 48374 80057B74 9C1690A7 */  sh         $s0, %gp_rel(TexInfo)($gp)
/* 48378 80057B78 2000A2A7 */  sh         $v0, 0x20($sp)
/* 4837C 80057B7C 01008324 */  addiu      $v1, $a0, 0x1
/* 48380 80057B80 501083A7 */  sh         $v1, %gp_rel(ImageClutId)($gp)
/* 48384 80057B84 2200A4A7 */  sh         $a0, 0x22($sp)
/* 48388 80057B88 00002292 */  lbu        $v0, 0x0($s1)
/* 4838C 80057B8C 00000000 */  nop
/* 48390 80057B90 05004014 */  bnez       $v0, .L80057BA8
/* 48394 80057B94 08002426 */   addiu     $a0, $s1, 0x8
/* 48398 80057B98 0E74010C */  jal        Alloc16CLUT
/* 4839C 80057B9C 00000000 */   nop
/* 483A0 80057BA0 ED5E0108 */  j          .L80057BB4
/* 483A4 80057BA4 FFFF4330 */   andi      $v1, $v0, 0xFFFF
.L80057BA8:
/* 483A8 80057BA8 9274010C */  jal        Alloc256CLUT
/* 483AC 80057BAC 00000000 */   nop
/* 483B0 80057BB0 FFFF4330 */  andi       $v1, $v0, 0xFFFF
.L80057BB4:
/* 483B4 80057BB4 0980023C */  lui        $v0, %hi(TheClutRow)
/* 483B8 80057BB8 96594294 */  lhu        $v0, %lo(TheClutRow)($v0)
/* 483BC 80057BBC 9E1683A7 */  sh         $v1, %gp_rel(TexInfo + 0x2)($gp)
/* 483C0 80057BC0 A01682A7 */  sh         $v0, %gp_rel(TexInfo + 0x4)($gp)
.L80057BC4:
/* 483C4 80057BC4 21102002 */  addu       $v0, $s1, $zero
/* 483C8 80057BC8 3002BF8F */  lw         $ra, 0x230($sp)
/* 483CC 80057BCC 2C02B18F */  lw         $s1, 0x22C($sp)
/* 483D0 80057BD0 2802B08F */  lw         $s0, 0x228($sp)
/* 483D4 80057BD4 0800E003 */  jr         $ra
/* 483D8 80057BD8 3802BD27 */   addiu     $sp, $sp, 0x238
.size LoadTextureAddr, . - LoadTextureAddr
