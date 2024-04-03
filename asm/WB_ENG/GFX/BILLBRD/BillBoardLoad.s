.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel BillBoardLoad
/* 3AECC 8004A6CC 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 3AED0 8004A6D0 4800B0AF */  sw         $s0, 0x48($sp)
/* 3AED4 8004A6D4 2180A000 */  addu       $s0, $a1, $zero
/* 3AED8 8004A6D8 5800B4AF */  sw         $s4, 0x58($sp)
/* 3AEDC 8004A6DC 21A00000 */  addu       $s4, $zero, $zero
/* 3AEE0 8004A6E0 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 3AEE4 8004A6E4 6400B7AF */  sw         $s7, 0x64($sp)
/* 3AEE8 8004A6E8 21B80000 */  addu       $s7, $zero, $zero
/* 3AEEC 8004A6EC 4C00B1AF */  sw         $s1, 0x4C($sp)
/* 3AEF0 8004A6F0 21888000 */  addu       $s1, $a0, $zero
/* 3AEF4 8004A6F4 6C00BFAF */  sw         $ra, 0x6C($sp)
/* 3AEF8 8004A6F8 6800BEAF */  sw         $fp, 0x68($sp)
/* 3AEFC 8004A6FC 6000B6AF */  sw         $s6, 0x60($sp)
/* 3AF00 8004A700 5C00B5AF */  sw         $s5, 0x5C($sp)
/* 3AF04 8004A704 5400B3AF */  sw         $s3, 0x54($sp)
/* 3AF08 8004A708 5000B2AF */  sw         $s2, 0x50($sp)
/* 3AF0C 8004A70C 2400A0AF */  sw         $zero, 0x24($sp)
/* 3AF10 8004A710 2800A0AF */  sw         $zero, 0x28($sp)
/* 3AF14 8004A714 3800A0AF */  sw         $zero, 0x38($sp)
/* 3AF18 8004A718 2000A2AF */  sw         $v0, 0x20($sp)
/* 3AF1C 8004A71C B35C010C */  jal        GetSizeOfFile
/* 3AF20 8004A720 7800A6AF */   sw        $a2, 0x78($sp)
/* 3AF24 8004A724 2C00A2AF */  sw         $v0, 0x2C($sp)
/* 3AF28 8004A728 2B3F010C */  jal        new_malloc
/* 3AF2C 8004A72C 21204000 */   addu      $a0, $v0, $zero
/* 3AF30 8004A730 CD004010 */  beqz       $v0, .L8004AA68
/* 3AF34 8004A734 3000A2AF */   sw        $v0, 0x30($sp)
/* 3AF38 8004A738 21202002 */  addu       $a0, $s1, $zero
/* 3AF3C 8004A73C 495C010C */  jal        LoadFile
/* 3AF40 8004A740 21284000 */   addu      $a1, $v0, $zero
/* 3AF44 8004A744 2C00A38F */  lw         $v1, 0x2C($sp)
/* 3AF48 8004A748 00000000 */  nop
/* 3AF4C 8004A74C C3006010 */  beqz       $v1, .L8004AA5C
/* 3AF50 8004A750 82101700 */   srl       $v0, $s7, 2
.L8004A754:
/* 3AF54 8004A754 3000A48F */  lw         $a0, 0x30($sp)
/* 3AF58 8004A758 80100200 */  sll        $v0, $v0, 2
/* 3AF5C 8004A75C 21888200 */  addu       $s1, $a0, $v0
/* 3AF60 8004A760 02003296 */  lhu        $s2, 0x2($s1)
/* 3AF64 8004A764 0E5F010C */  jal        TextureToVRAM
/* 3AF68 8004A768 21202002 */   addu      $a0, $s1, $zero
/* 3AF6C 8004A76C 00140200 */  sll        $v0, $v0, 16
/* 3AF70 8004A770 03140200 */  sra        $v0, $v0, 16
/* 3AF74 8004A774 0800F526 */  addiu      $s5, $s7, 0x8
/* 3AF78 8004A778 2000A68F */  lw         $a2, 0x20($sp)
/* 3AF7C 8004A77C 01008526 */  addiu      $a1, $s4, 0x1
/* 3AF80 8004A780 3400A2AF */  sw         $v0, 0x34($sp)
/* 3AF84 8004A784 3A00D210 */  beq        $a2, $s2, .L8004A870
/* 3AF88 8004A788 3C00A5AF */   sw        $a1, 0x3C($sp)
/* 3AF8C 8004A78C 08002426 */  addiu      $a0, $s1, 0x8
/* 3AF90 8004A790 7800A38F */  lw         $v1, 0x78($sp)
/* 3AF94 8004A794 21280000 */  addu       $a1, $zero, $zero
/* 3AF98 8004A798 2000B2AF */  sw         $s2, 0x20($sp)
/* 3AF9C 8004A79C 3800A0AF */  sw         $zero, 0x38($sp)
/* 3AFA0 8004A7A0 0000628C */  lw         $v0, 0x0($v1)
/* 3AFA4 8004A7A4 00000000 */  nop
/* 3AFA8 8004A7A8 18004004 */  bltz       $v0, .L8004A80C
/* 3AFAC 8004A7AC 21308000 */   addu      $a2, $a0, $zero
.L8004A7B0:
/* 3AFB0 8004A7B0 7800A38F */  lw         $v1, 0x78($sp)
/* 3AFB4 8004A7B4 80100500 */  sll        $v0, $a1, 2
/* 3AFB8 8004A7B8 21104300 */  addu       $v0, $v0, $v1
/* 3AFBC 8004A7BC 0000438C */  lw         $v1, 0x0($v0)
/* 3AFC0 8004A7C0 00000000 */  nop
/* 3AFC4 8004A7C4 0A007414 */  bne        $v1, $s4, .L8004A7F0
/* 3AFC8 8004A7C8 0100A524 */   addiu     $a1, $a1, 0x1
/* 3AFCC 8004A7CC FF001324 */  addiu      $s3, $zero, 0xFF
.L8004A7D0:
/* 3AFD0 8004A7D0 00008294 */  lhu        $v0, 0x0($a0)
/* 3AFD4 8004A7D4 FFFF7326 */  addiu      $s3, $s3, -0x1
/* 3AFD8 8004A7D8 00804234 */  ori        $v0, $v0, 0x8000
/* 3AFDC 8004A7DC 000082A4 */  sh         $v0, 0x0($a0)
/* 3AFE0 8004A7E0 FBFF6106 */  bgez       $s3, .L8004A7D0
/* 3AFE4 8004A7E4 02008424 */   addiu     $a0, $a0, 0x2
/* 3AFE8 8004A7E8 01000224 */  addiu      $v0, $zero, 0x1
/* 3AFEC 8004A7EC 3800A2AF */  sw         $v0, 0x38($sp)
.L8004A7F0:
/* 3AFF0 8004A7F0 7800A38F */  lw         $v1, 0x78($sp)
/* 3AFF4 8004A7F4 80100500 */  sll        $v0, $a1, 2
/* 3AFF8 8004A7F8 21104300 */  addu       $v0, $v0, $v1
/* 3AFFC 8004A7FC 0000438C */  lw         $v1, 0x0($v0)
/* 3B000 8004A800 00000000 */  nop
/* 3B004 8004A804 EAFF6104 */  bgez       $v1, .L8004A7B0
/* 3B008 8004A808 00000000 */   nop
.L8004A80C:
/* 3B00C 8004A80C 2118C000 */  addu       $v1, $a2, $zero
/* 3B010 8004A810 007C0524 */  addiu      $a1, $zero, 0x7C00
/* 3B014 8004A814 00FC0434 */  ori        $a0, $zero, 0xFC00
/* 3B018 8004A818 FF001324 */  addiu      $s3, $zero, 0xFF
.L8004A81C:
/* 3B01C 8004A81C 00006294 */  lhu        $v0, 0x0($v1)
/* 3B020 8004A820 00000000 */  nop
/* 3B024 8004A824 02004014 */  bnez       $v0, .L8004A830
/* 3B028 8004A828 00000000 */   nop
/* 3B02C 8004A82C 01000224 */  addiu      $v0, $zero, 0x1
.L8004A830:
/* 3B030 8004A830 03004510 */  beq        $v0, $a1, .L8004A840
/* 3B034 8004A834 00000000 */   nop
/* 3B038 8004A838 02004414 */  bne        $v0, $a0, .L8004A844
/* 3B03C 8004A83C 00000000 */   nop
.L8004A840:
/* 3B040 8004A840 21100000 */  addu       $v0, $zero, $zero
.L8004A844:
/* 3B044 8004A844 000062A4 */  sh         $v0, 0x0($v1)
/* 3B048 8004A848 FFFF7326 */  addiu      $s3, $s3, -0x1
/* 3B04C 8004A84C F3FF6106 */  bgez       $s3, .L8004A81C
/* 3B050 8004A850 02006324 */   addiu     $v1, $v1, 0x2
/* 3B054 8004A854 F75E010C */  jal        PaletteToVRAM
/* 3B058 8004A858 21202002 */   addu      $a0, $s1, $zero
/* 3B05C 8004A85C 0980043C */  lui        $a0, %hi(TheClutRow)
/* 3B060 8004A860 96598494 */  lhu        $a0, %lo(TheClutRow)($a0)
/* 3B064 8004A864 FFFF4230 */  andi       $v0, $v0, 0xFFFF
/* 3B068 8004A868 2800A2AF */  sw         $v0, 0x28($sp)
/* 3B06C 8004A86C 2400A4AF */  sw         $a0, 0x24($sp)
.L8004A870:
/* 3B070 8004A870 00002292 */  lbu        $v0, 0x0($s1)
/* 3B074 8004A874 00000000 */  nop
/* 3B078 8004A878 05004014 */  bnez       $v0, .L8004A890
/* 3B07C 8004A87C 0002B726 */   addiu     $s7, $s5, 0x200
/* 3B080 8004A880 04002296 */  lhu        $v0, 0x4($s1)
/* 3B084 8004A884 06002396 */  lhu        $v1, 0x6($s1)
/* 3B088 8004A888 262A0108 */  j          .L8004A898
/* 3B08C 8004A88C 42100200 */   srl       $v0, $v0, 1
.L8004A890:
/* 3B090 8004A890 04002296 */  lhu        $v0, 0x4($s1)
/* 3B094 8004A894 06002396 */  lhu        $v1, 0x6($s1)
.L8004A898:
/* 3B098 8004A898 00000000 */  nop
/* 3B09C 8004A89C 18004300 */  mult       $v0, $v1
/* 3B0A0 8004A8A0 12100000 */  mflo       $v0
/* 3B0A4 8004A8A4 21B8E202 */  addu       $s7, $s7, $v0
/* 3B0A8 8004A8A8 7F001E24 */  addiu      $fp, $zero, 0x7F
/* 3B0AC 8004A8AC 0C80043C */  lui        $a0, %hi(VRAMItems)
/* 3B0B0 8004A8B0 38AD8424 */  addiu      $a0, $a0, %lo(VRAMItems)
/* 3B0B4 8004A8B4 01001324 */  addiu      $s3, $zero, 0x1
/* 3B0B8 8004A8B8 2C00A28F */  lw         $v0, 0x2C($sp)
/* 3B0BC 8004A8BC 3400A38F */  lw         $v1, 0x34($sp)
/* 3B0C0 8004A8C0 2B10E202 */  sltu       $v0, $s7, $v0
/* 3B0C4 8004A8C4 4000A2AF */  sw         $v0, 0x40($sp)
/* 3B0C8 8004A8C8 80100300 */  sll        $v0, $v1, 2
/* 3B0CC 8004A8CC 21104300 */  addu       $v0, $v0, $v1
/* 3B0D0 8004A8D0 80100200 */  sll        $v0, $v0, 2
/* 3B0D4 8004A8D4 0C80033C */  lui        $v1, %hi(VRAMItems + 0x8)
/* 3B0D8 8004A8D8 40AD6324 */  addiu      $v1, $v1, %lo(VRAMItems + 0x8)
/* 3B0DC 8004A8DC 21B04300 */  addu       $s6, $v0, $v1
/* 3B0E0 8004A8E0 21104400 */  addu       $v0, $v0, $a0
/* 3B0E4 8004A8E4 03004588 */  lwl        $a1, 0x3($v0)
/* 3B0E8 8004A8E8 00004598 */  lwr        $a1, 0x0($v0)
/* 3B0EC 8004A8EC 07004688 */  lwl        $a2, 0x7($v0)
/* 3B0F0 8004A8F0 04004698 */  lwr        $a2, 0x4($v0)
/* 3B0F4 8004A8F4 1B00A5AB */  swl        $a1, 0x1B($sp)
/* 3B0F8 8004A8F8 1800A5BB */  swr        $a1, 0x18($sp)
/* 3B0FC 8004A8FC 1F00A6AB */  swl        $a2, 0x1F($sp)
/* 3B100 8004A900 1C00A6BB */  swr        $a2, 0x1C($sp)
/* 3B104 8004A904 02002396 */  lhu        $v1, 0x2($s1)
/* 3B108 8004A908 21904000 */  addu       $s2, $v0, $zero
/* 3B10C 8004A90C 02AA0300 */  srl        $s5, $v1, 8
/* 3B110 8004A910 FF007430 */  andi       $s4, $v1, 0xFF
.L8004A914:
/* 3B114 8004A914 FBE6010C */  jal        SetPolyFT4
/* 3B118 8004A918 21200002 */   addu      $a0, $s0, $zero
/* 3B11C 8004A91C 3800A58F */  lw         $a1, 0x38($sp)
/* 3B120 8004A920 00000000 */  nop
/* 3B124 8004A924 0300A010 */  beqz       $a1, .L8004A934
/* 3B128 8004A928 21200002 */   addu      $a0, $s0, $zero
/* 3B12C 8004A92C BBE6010C */  jal        SetSemiTrans
/* 3B130 8004A930 01000524 */   addiu     $a1, $zero, 0x1
.L8004A934:
/* 3B134 8004A934 080015A6 */  sh         $s5, 0x8($s0)
/* 3B138 8004A938 0A0014A6 */  sh         $s4, 0xA($s0)
/* 3B13C 8004A93C 04002396 */  lhu        $v1, 0x4($s1)
/* 3B140 8004A940 120014A6 */  sh         $s4, 0x12($s0)
/* 3B144 8004A944 180015A6 */  sh         $s5, 0x18($s0)
/* 3B148 8004A948 21187500 */  addu       $v1, $v1, $s5
/* 3B14C 8004A94C 100003A6 */  sh         $v1, 0x10($s0)
/* 3B150 8004A950 06002296 */  lhu        $v0, 0x6($s1)
/* 3B154 8004A954 00000000 */  nop
/* 3B158 8004A958 21105400 */  addu       $v0, $v0, $s4
/* 3B15C 8004A95C 1A0002A6 */  sh         $v0, 0x1A($s0)
/* 3B160 8004A960 04002396 */  lhu        $v1, 0x4($s1)
/* 3B164 8004A964 00000000 */  nop
/* 3B168 8004A968 21187500 */  addu       $v1, $v1, $s5
/* 3B16C 8004A96C 200003A6 */  sh         $v1, 0x20($s0)
/* 3B170 8004A970 06002496 */  lhu        $a0, 0x6($s1)
/* 3B174 8004A974 04001EA2 */  sb         $fp, 0x4($s0)
/* 3B178 8004A978 05001EA2 */  sb         $fp, 0x5($s0)
/* 3B17C 8004A97C 06001EA2 */  sb         $fp, 0x6($s0)
/* 3B180 8004A980 21209400 */  addu       $a0, $a0, $s4
/* 3B184 8004A984 220004A6 */  sh         $a0, 0x22($s0)
/* 3B188 8004A988 0000C296 */  lhu        $v0, 0x0($s6)
/* 3B18C 8004A98C 00000000 */  nop
/* 3B190 8004A990 9FFF4230 */  andi       $v0, $v0, 0xFF9F
/* 3B194 8004A994 160002A6 */  sh         $v0, 0x16($s0)
/* 3B198 8004A998 2800A68F */  lw         $a2, 0x28($sp)
/* 3B19C 8004A99C 0000C396 */  lhu        $v1, 0x0($s6)
/* 3B1A0 8004A9A0 0E0006A6 */  sh         $a2, 0xE($s0)
/* 3B1A4 8004A9A4 160003A6 */  sh         $v1, 0x16($s0)
/* 3B1A8 8004A9A8 0E004292 */  lbu        $v0, 0xE($s2)
/* 3B1AC 8004A9AC 00000000 */  nop
/* 3B1B0 8004A9B0 0C0002A2 */  sb         $v0, 0xC($s0)
/* 3B1B4 8004A9B4 0F004392 */  lbu        $v1, 0xF($s2)
/* 3B1B8 8004A9B8 00000000 */  nop
/* 3B1BC 8004A9BC 0D0003A2 */  sb         $v1, 0xD($s0)
/* 3B1C0 8004A9C0 0E004292 */  lbu        $v0, 0xE($s2)
/* 3B1C4 8004A9C4 04002392 */  lbu        $v1, 0x4($s1)
/* 3B1C8 8004A9C8 00000000 */  nop
/* 3B1CC 8004A9CC 21104300 */  addu       $v0, $v0, $v1
/* 3B1D0 8004A9D0 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 3B1D4 8004A9D4 140002A2 */  sb         $v0, 0x14($s0)
/* 3B1D8 8004A9D8 0F004392 */  lbu        $v1, 0xF($s2)
/* 3B1DC 8004A9DC 00000000 */  nop
/* 3B1E0 8004A9E0 150003A2 */  sb         $v1, 0x15($s0)
/* 3B1E4 8004A9E4 0E004492 */  lbu        $a0, 0xE($s2)
/* 3B1E8 8004A9E8 00000000 */  nop
/* 3B1EC 8004A9EC 1C0004A2 */  sb         $a0, 0x1C($s0)
/* 3B1F0 8004A9F0 0F004292 */  lbu        $v0, 0xF($s2)
/* 3B1F4 8004A9F4 06002392 */  lbu        $v1, 0x6($s1)
/* 3B1F8 8004A9F8 00000000 */  nop
/* 3B1FC 8004A9FC 21104300 */  addu       $v0, $v0, $v1
/* 3B200 8004AA00 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 3B204 8004AA04 1D0002A2 */  sb         $v0, 0x1D($s0)
/* 3B208 8004AA08 0E004392 */  lbu        $v1, 0xE($s2)
/* 3B20C 8004AA0C 04002292 */  lbu        $v0, 0x4($s1)
/* 3B210 8004AA10 FFFF7326 */  addiu      $s3, $s3, -0x1
/* 3B214 8004AA14 21186200 */  addu       $v1, $v1, $v0
/* 3B218 8004AA18 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 3B21C 8004AA1C 240003A2 */  sb         $v1, 0x24($s0)
/* 3B220 8004AA20 0F004292 */  lbu        $v0, 0xF($s2)
/* 3B224 8004AA24 06002392 */  lbu        $v1, 0x6($s1)
/* 3B228 8004AA28 3400A48F */  lw         $a0, 0x34($sp)
/* 3B22C 8004AA2C 21104300 */  addu       $v0, $v0, $v1
/* 3B230 8004AA30 1E0004A6 */  sh         $a0, 0x1E($s0)
/* 3B234 8004AA34 2400A58F */  lw         $a1, 0x24($sp)
/* 3B238 8004AA38 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 3B23C 8004AA3C 250002A2 */  sb         $v0, 0x25($s0)
/* 3B240 8004AA40 260005A6 */  sh         $a1, 0x26($s0)
/* 3B244 8004AA44 B3FF6106 */  bgez       $s3, .L8004A914
/* 3B248 8004AA48 28001026 */   addiu     $s0, $s0, 0x28
/* 3B24C 8004AA4C 4000A68F */  lw         $a2, 0x40($sp)
/* 3B250 8004AA50 3C00B48F */  lw         $s4, 0x3C($sp)
/* 3B254 8004AA54 3FFFC014 */  bnez       $a2, .L8004A754
/* 3B258 8004AA58 82101700 */   srl       $v0, $s7, 2
.L8004AA5C:
/* 3B25C 8004AA5C 3000A48F */  lw         $a0, 0x30($sp)
/* 3B260 8004AA60 1C40010C */  jal        new_free
/* 3B264 8004AA64 00000000 */   nop
.L8004AA68:
/* 3B268 8004AA68 21108002 */  addu       $v0, $s4, $zero
/* 3B26C 8004AA6C 6C00BF8F */  lw         $ra, 0x6C($sp)
/* 3B270 8004AA70 6800BE8F */  lw         $fp, 0x68($sp)
/* 3B274 8004AA74 6400B78F */  lw         $s7, 0x64($sp)
/* 3B278 8004AA78 6000B68F */  lw         $s6, 0x60($sp)
/* 3B27C 8004AA7C 5C00B58F */  lw         $s5, 0x5C($sp)
/* 3B280 8004AA80 5800B48F */  lw         $s4, 0x58($sp)
/* 3B284 8004AA84 5400B38F */  lw         $s3, 0x54($sp)
/* 3B288 8004AA88 5000B28F */  lw         $s2, 0x50($sp)
/* 3B28C 8004AA8C 4C00B18F */  lw         $s1, 0x4C($sp)
/* 3B290 8004AA90 4800B08F */  lw         $s0, 0x48($sp)
/* 3B294 8004AA94 0800E003 */  jr         $ra
/* 3B298 8004AA98 7000BD27 */   addiu     $sp, $sp, 0x70
.size BillBoardLoad, . - BillBoardLoad
