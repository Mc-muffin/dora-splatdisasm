.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LoadFaderTexture
/* 21514 80030D14 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 21518 80030D18 1800B0AF */  sw         $s0, 0x18($sp)
/* 2151C 80030D1C 21808000 */  addu       $s0, $a0, $zero
/* 21520 80030D20 3400BFAF */  sw         $ra, 0x34($sp)
/* 21524 80030D24 3000B6AF */  sw         $s6, 0x30($sp)
/* 21528 80030D28 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 2152C 80030D2C 2800B4AF */  sw         $s4, 0x28($sp)
/* 21530 80030D30 2400B3AF */  sw         $s3, 0x24($sp)
/* 21534 80030D34 2000B2AF */  sw         $s2, 0x20($sp)
/* 21538 80030D38 B35C010C */  jal        GetSizeOfFile
/* 2153C 80030D3C 1C00B1AF */   sw        $s1, 0x1C($sp)
/* 21540 80030D40 2B3F010C */  jal        new_malloc
/* 21544 80030D44 21204000 */   addu      $a0, $v0, $zero
/* 21548 80030D48 21904000 */  addu       $s2, $v0, $zero
/* 2154C 80030D4C 54004012 */  beqz       $s2, .L80030EA0
/* 21550 80030D50 21200002 */   addu      $a0, $s0, $zero
/* 21554 80030D54 495C010C */  jal        LoadFile
/* 21558 80030D58 21284002 */   addu      $a1, $s2, $zero
/* 2155C 80030D5C 21880000 */  addu       $s1, $zero, $zero
/* 21560 80030D60 08005526 */  addiu      $s5, $s2, 0x8
/* 21564 80030D64 FFFF1424 */  addiu      $s4, $zero, -0x1
/* 21568 80030D68 0C80023C */  lui        $v0, %hi(VRAMItems)
/* 2156C 80030D6C 38AD5324 */  addiu      $s3, $v0, %lo(VRAMItems)
/* 21570 80030D70 08007626 */  addiu      $s6, $s3, 0x8
.L80030D74:
/* 21574 80030D74 0E5F010C */  jal        TextureToVRAM
/* 21578 80030D78 21204002 */   addu      $a0, $s2, $zero
/* 2157C 80030D7C 21804000 */  addu       $s0, $v0, $zero
/* 21580 80030D80 2110A002 */  addu       $v0, $s5, $zero
/* 21584 80030D84 01003126 */  addiu      $s1, $s1, 0x1
/* 21588 80030D88 FF000324 */  addiu      $v1, $zero, 0xFF
.L80030D8C:
/* 2158C 80030D8C 000054A4 */  sh         $s4, 0x0($v0)
/* 21590 80030D90 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 21594 80030D94 FDFF6104 */  bgez       $v1, .L80030D8C
/* 21598 80030D98 02004224 */   addiu     $v0, $v0, 0x2
/* 2159C 80030D9C F75E010C */  jal        PaletteToVRAM
/* 215A0 80030DA0 21204002 */   addu      $a0, $s2, $zero
/* 215A4 80030DA4 21684000 */  addu       $t5, $v0, $zero
/* 215A8 80030DA8 80000724 */  addiu      $a3, $zero, 0x80
/* 215AC 80030DAC 40010C24 */  addiu      $t4, $zero, 0x140
/* 215B0 80030DB0 EF000B24 */  addiu      $t3, $zero, 0xEF
/* 215B4 80030DB4 0A80023C */  lui        $v0, %hi(fade_gt4)
/* 215B8 80030DB8 008B4624 */  addiu      $a2, $v0, %lo(fade_gt4)
/* 215BC 80030DBC 0C000F24 */  addiu      $t7, $zero, 0xC
/* 215C0 80030DC0 3E000E24 */  addiu      $t6, $zero, 0x3E
/* 215C4 80030DC4 80201000 */  sll        $a0, $s0, 2
/* 215C8 80030DC8 21209000 */  addu       $a0, $a0, $s0
/* 215CC 80030DCC 80200400 */  sll        $a0, $a0, 2
/* 215D0 80030DD0 21289300 */  addu       $a1, $a0, $s3
/* 215D4 80030DD4 01000A24 */  addiu      $t2, $zero, 0x1
/* 215D8 80030DD8 21106402 */  addu       $v0, $s3, $a0
/* 215DC 80030DDC 21209600 */  addu       $a0, $a0, $s6
/* 215E0 80030DE0 1100A380 */  lb         $v1, 0x11($a1)
/* 215E4 80030DE4 0E00A890 */  lbu        $t0, 0xE($a1)
/* 215E8 80030DE8 0F00A590 */  lbu        $a1, 0xF($a1)
/* 215EC 80030DEC 21180301 */  addu       $v1, $t0, $v1
/* 215F0 80030DF0 FFFF6924 */  addiu      $t1, $v1, -0x1
/* 215F4 80030DF4 12004384 */  lh         $v1, 0x12($v0)
/* 215F8 80030DF8 00008294 */  lhu        $v0, 0x0($a0)
/* 215FC 80030DFC 2118A300 */  addu       $v1, $a1, $v1
/* 21600 80030E00 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 21604 80030E04 9FFF4230 */  andi       $v0, $v0, 0xFF9F
/* 21608 80030E08 40004234 */  ori        $v0, $v0, 0x40
.L80030E0C:
/* 2160C 80030E0C 0300CFA0 */  sb         $t7, 0x3($a2)
/* 21610 80030E10 2800C7A0 */  sb         $a3, 0x28($a2)
/* 21614 80030E14 1C00C7A0 */  sb         $a3, 0x1C($a2)
/* 21618 80030E18 1000C7A0 */  sb         $a3, 0x10($a2)
/* 2161C 80030E1C 0400C7A0 */  sb         $a3, 0x4($a2)
/* 21620 80030E20 2900C7A0 */  sb         $a3, 0x29($a2)
/* 21624 80030E24 1D00C7A0 */  sb         $a3, 0x1D($a2)
/* 21628 80030E28 1100C7A0 */  sb         $a3, 0x11($a2)
/* 2162C 80030E2C 0500C7A0 */  sb         $a3, 0x5($a2)
/* 21630 80030E30 2A00C7A0 */  sb         $a3, 0x2A($a2)
/* 21634 80030E34 1E00C7A0 */  sb         $a3, 0x1E($a2)
/* 21638 80030E38 1200C7A0 */  sb         $a3, 0x12($a2)
/* 2163C 80030E3C 0600C7A0 */  sb         $a3, 0x6($a2)
/* 21640 80030E40 0E00CDA4 */  sh         $t5, 0xE($a2)
/* 21644 80030E44 0800C0A4 */  sh         $zero, 0x8($a2)
/* 21648 80030E48 0A00C0A4 */  sh         $zero, 0xA($a2)
/* 2164C 80030E4C 1400CCA4 */  sh         $t4, 0x14($a2)
/* 21650 80030E50 1600C0A4 */  sh         $zero, 0x16($a2)
/* 21654 80030E54 2000C0A4 */  sh         $zero, 0x20($a2)
/* 21658 80030E58 2200CBA4 */  sh         $t3, 0x22($a2)
/* 2165C 80030E5C 2C00CCA4 */  sh         $t4, 0x2C($a2)
/* 21660 80030E60 2E00CBA4 */  sh         $t3, 0x2E($a2)
/* 21664 80030E64 0C00C9A0 */  sb         $t1, 0xC($a2)
/* 21668 80030E68 0D00C5A0 */  sb         $a1, 0xD($a2)
/* 2166C 80030E6C 1800C9A0 */  sb         $t1, 0x18($a2)
/* 21670 80030E70 1900C3A0 */  sb         $v1, 0x19($a2)
/* 21674 80030E74 2400C8A0 */  sb         $t0, 0x24($a2)
/* 21678 80030E78 2500C5A0 */  sb         $a1, 0x25($a2)
/* 2167C 80030E7C 3000C8A0 */  sb         $t0, 0x30($a2)
/* 21680 80030E80 3100C3A0 */  sb         $v1, 0x31($a2)
/* 21684 80030E84 0700CEA0 */  sb         $t6, 0x7($a2)
/* 21688 80030E88 1A00C2A4 */  sh         $v0, 0x1A($a2)
/* 2168C 80030E8C FFFF4A25 */  addiu      $t2, $t2, -0x1
/* 21690 80030E90 DEFF4105 */  bgez       $t2, .L80030E0C
/* 21694 80030E94 3400C624 */   addiu     $a2, $a2, 0x34
/* 21698 80030E98 B6FF201A */  blez       $s1, .L80030D74
/* 2169C 80030E9C 00000000 */   nop
.L80030EA0:
/* 216A0 80030EA0 1C40010C */  jal        new_free
/* 216A4 80030EA4 21204002 */   addu      $a0, $s2, $zero
/* 216A8 80030EA8 3400BF8F */  lw         $ra, 0x34($sp)
/* 216AC 80030EAC 3000B68F */  lw         $s6, 0x30($sp)
/* 216B0 80030EB0 2C00B58F */  lw         $s5, 0x2C($sp)
/* 216B4 80030EB4 2800B48F */  lw         $s4, 0x28($sp)
/* 216B8 80030EB8 2400B38F */  lw         $s3, 0x24($sp)
/* 216BC 80030EBC 2000B28F */  lw         $s2, 0x20($sp)
/* 216C0 80030EC0 1C00B18F */  lw         $s1, 0x1C($sp)
/* 216C4 80030EC4 1800B08F */  lw         $s0, 0x18($sp)
/* 216C8 80030EC8 0800E003 */  jr         $ra
/* 216CC 80030ECC 3800BD27 */   addiu     $sp, $sp, 0x38
.size LoadFaderTexture, . - LoadFaderTexture
