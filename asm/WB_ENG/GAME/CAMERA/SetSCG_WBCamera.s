.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetSCG_WBCamera
/* 2B104 8003A904 40100400 */  sll        $v0, $a0, 1
/* 2B108 8003A908 21104400 */  addu       $v0, $v0, $a0
/* 2B10C 8003A90C 80100200 */  sll        $v0, $v0, 2
/* 2B110 8003A910 23104400 */  subu       $v0, $v0, $a0
/* 2B114 8003A914 80100200 */  sll        $v0, $v0, 2
/* 2B118 8003A918 0A80033C */  lui        $v1, %hi(SCGGameCam)
/* 2B11C 8003A91C B8B16324 */  addiu      $v1, $v1, %lo(SCGGameCam)
/* 2B120 8003A920 21504300 */  addu       $t2, $v0, $v1
/* 2B124 8003A924 00020824 */  addiu      $t0, $zero, 0x200
/* 2B128 8003A928 D9FF8424 */  addiu      $a0, $a0, -0x27
/* 2B12C 8003A92C 000048A5 */  sh         $t0, 0x0($t2)
/* 2B130 8003A930 0000A294 */  lhu        $v0, 0x0($a1)
/* 2B134 8003A934 80200400 */  sll        $a0, $a0, 2
/* 2B138 8003A938 020042A5 */  sh         $v0, 0x2($t2)
/* 2B13C 8003A93C 0880023C */  lui        $v0, %hi(CameraWBNamesText)
/* 2B140 8003A940 DC7E4224 */  addiu      $v0, $v0, %lo(CameraWBNamesText)
/* 2B144 8003A944 0200A394 */  lhu        $v1, 0x2($a1)
/* 2B148 8003A948 21208200 */  addu       $a0, $a0, $v0
/* 2B14C 8003A94C 040043A5 */  sh         $v1, 0x4($t2)
/* 2B150 8003A950 0400A394 */  lhu        $v1, 0x4($a1)
/* 2B154 8003A954 1000A28F */  lw         $v0, 0x10($sp)
/* 2B158 8003A958 1400A58F */  lw         $a1, 0x14($sp)
/* 2B15C 8003A95C 1800A88F */  lw         $t0, 0x18($sp)
/* 2B160 8003A960 0000898C */  lw         $t1, 0x0($a0)
/* 2B164 8003A964 060043A5 */  sh         $v1, 0x6($t2)
/* 2B168 8003A968 0300C388 */  lwl        $v1, 0x3($a2)
/* 2B16C 8003A96C 0000C398 */  lwr        $v1, 0x0($a2)
/* 2B170 8003A970 0400C484 */  lh         $a0, 0x4($a2)
/* 2B174 8003A974 0B0043A9 */  swl        $v1, 0xB($t2)
/* 2B178 8003A978 080043B9 */  swr        $v1, 0x8($t2)
/* 2B17C 8003A97C 0C0044A5 */  sh         $a0, 0xC($t2)
/* 2B180 8003A980 0300E388 */  lwl        $v1, 0x3($a3)
/* 2B184 8003A984 0000E398 */  lwr        $v1, 0x0($a3)
/* 2B188 8003A988 0400E484 */  lh         $a0, 0x4($a3)
/* 2B18C 8003A98C 170043A9 */  swl        $v1, 0x17($t2)
/* 2B190 8003A990 140043B9 */  swr        $v1, 0x14($t2)
/* 2B194 8003A994 180044A5 */  sh         $a0, 0x18($t2)
/* 2B198 8003A998 03004C88 */  lwl        $t4, 0x3($v0)
/* 2B19C 8003A99C 00004C98 */  lwr        $t4, 0x0($v0)
/* 2B1A0 8003A9A0 04004384 */  lh         $v1, 0x4($v0)
/* 2B1A4 8003A9A4 1D004CA9 */  swl        $t4, 0x1D($t2)
/* 2B1A8 8003A9A8 1A004CB9 */  swr        $t4, 0x1A($t2)
/* 2B1AC 8003A9AC 1E0043A5 */  sh         $v1, 0x1E($t2)
/* 2B1B0 8003A9B0 0300A788 */  lwl        $a3, 0x3($a1)
/* 2B1B4 8003A9B4 0000A798 */  lwr        $a3, 0x0($a1)
/* 2B1B8 8003A9B8 0400AB84 */  lh         $t3, 0x4($a1)
/* 2B1BC 8003A9BC 110047A9 */  swl        $a3, 0x11($t2)
/* 2B1C0 8003A9C0 0E0047B9 */  swr        $a3, 0xE($t2)
/* 2B1C4 8003A9C4 12004BA5 */  sh         $t3, 0x12($t2)
/* 2B1C8 8003A9C8 03000489 */  lwl        $a0, 0x3($t0)
/* 2B1CC 8003A9CC 00000499 */  lwr        $a0, 0x0($t0)
/* 2B1D0 8003A9D0 04000585 */  lh         $a1, 0x4($t0)
/* 2B1D4 8003A9D4 230044A9 */  swl        $a0, 0x23($t2)
/* 2B1D8 8003A9D8 200044B9 */  swr        $a0, 0x20($t2)
/* 2B1DC 8003A9DC 240045A5 */  sh         $a1, 0x24($t2)
/* 2B1E0 8003A9E0 03004B88 */  lwl        $t3, 0x3($v0)
/* 2B1E4 8003A9E4 00004B98 */  lwr        $t3, 0x0($v0)
/* 2B1E8 8003A9E8 04004C84 */  lh         $t4, 0x4($v0)
/* 2B1EC 8003A9EC 1D004BA9 */  swl        $t3, 0x1D($t2)
/* 2B1F0 8003A9F0 1A004BB9 */  swr        $t3, 0x1A($t2)
/* 2B1F4 8003A9F4 1E004CA5 */  sh         $t4, 0x1E($t2)
/* 2B1F8 8003A9F8 0E004385 */  lh         $v1, 0xE($t2)
/* 2B1FC 8003A9FC 0880043C */  lui        $a0, %hi(TestWorld)
/* 2B200 8003AA00 280049AD */  sw         $t1, 0x28($t2)
/* 2B204 8003AA04 8C65828C */  lw         $v0, %lo(TestWorld)($a0)
/* 2B208 8003AA08 00000000 */  nop
/* 2B20C 8003AA0C 2A104300 */  slt        $v0, $v0, $v1
/* 2B210 8003AA10 04004010 */  beqz       $v0, .L8003AA24
/* 2B214 8003AA14 8C658524 */   addiu     $a1, $a0, %lo(TestWorld)
/* 2B218 8003AA18 8C658294 */  lhu        $v0, %lo(TestWorld)($a0)
/* 2B21C 8003AA1C 00000000 */  nop
/* 2B220 8003AA20 0E0042A5 */  sh         $v0, 0xE($t2)
.L8003AA24:
/* 2B224 8003AA24 10004385 */  lh         $v1, 0x10($t2)
/* 2B228 8003AA28 0400A28C */  lw         $v0, 0x4($a1)
/* 2B22C 8003AA2C 00000000 */  nop
/* 2B230 8003AA30 2A104300 */  slt        $v0, $v0, $v1
/* 2B234 8003AA34 04004010 */  beqz       $v0, .L8003AA48
/* 2B238 8003AA38 00000000 */   nop
/* 2B23C 8003AA3C 0400A294 */  lhu        $v0, 0x4($a1)
/* 2B240 8003AA40 00000000 */  nop
/* 2B244 8003AA44 100042A5 */  sh         $v0, 0x10($t2)
.L8003AA48:
/* 2B248 8003AA48 12004385 */  lh         $v1, 0x12($t2)
/* 2B24C 8003AA4C 0800A28C */  lw         $v0, 0x8($a1)
/* 2B250 8003AA50 00000000 */  nop
/* 2B254 8003AA54 2A104300 */  slt        $v0, $v0, $v1
/* 2B258 8003AA58 04004010 */  beqz       $v0, .L8003AA6C
/* 2B25C 8003AA5C 00000000 */   nop
/* 2B260 8003AA60 0800A294 */  lhu        $v0, 0x8($a1)
/* 2B264 8003AA64 00000000 */  nop
/* 2B268 8003AA68 120042A5 */  sh         $v0, 0x12($t2)
.L8003AA6C:
/* 2B26C 8003AA6C 0800E003 */  jr         $ra
/* 2B270 8003AA70 00000000 */   nop
.size SetSCG_WBCamera, . - SetSCG_WBCamera
