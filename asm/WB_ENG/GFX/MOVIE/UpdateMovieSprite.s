.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel UpdateMovieSprite
/* 3F480 8004EC80 480F828F */  lw         $v0, %gp_rel(VideoReady)($gp)
/* 3F484 8004EC84 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3F488 8004EC88 1800BFAF */  sw         $ra, 0x18($sp)
/* 3F48C 8004EC8C 1400B1AF */  sw         $s1, 0x14($sp)
/* 3F490 8004EC90 52004010 */  beqz       $v0, .L8004EDDC
/* 3F494 8004EC94 1000B0AF */   sw        $s0, 0x10($sp)
/* 3F498 8004EC98 20000A24 */  addiu      $t2, $zero, 0x20
/* 3F49C 8004EC9C F0001924 */  addiu      $t9, $zero, 0xF0
/* 3F4A0 8004ECA0 21C00000 */  addu       $t8, $zero, $zero
/* 3F4A4 8004ECA4 7F000924 */  addiu      $t1, $zero, 0x7F
/* 3F4A8 8004ECA8 0B80113C */  lui        $s1, %hi(g_nt + 0x320)
/* 3F4AC 8004ECAC 21602002 */  addu       $t4, $s1, $zero
/* 3F4B0 8004ECB0 88BE2B26 */  addiu      $t3, $s1, %lo(g_nt + 0x320)
/* 3F4B4 8004ECB4 21400000 */  addu       $t0, $zero, $zero
/* 3F4B8 8004ECB8 04000F24 */  addiu      $t7, $zero, 0x4
/* 3F4BC 8004ECBC 64000E24 */  addiu      $t6, $zero, 0x64
/* 3F4C0 8004ECC0 05000724 */  addiu      $a3, $zero, 0x5
/* 3F4C4 8004ECC4 0A80023C */  lui        $v0, %hi(MovieTPages)
/* 3F4C8 8004ECC8 A06B4224 */  addiu      $v0, $v0, %lo(MovieTPages)
/* 3F4CC 8004ECCC 0A80033C */  lui        $v1, %hi(MoviePoly)
/* 3F4D0 8004ECD0 38756324 */  addiu      $v1, $v1, %lo(MoviePoly)
/* 3F4D4 8004ECD4 540F8D8F */  lw         $t5, %gp_rel(MovieSpriteY)($gp)
/* 3F4D8 8004ECD8 0980043C */  lui        $a0, %hi(ot_ndx)
/* 3F4DC 8004ECDC 4853848C */  lw         $a0, %lo(ot_ndx)($a0)
/* 3F4E0 8004ECE0 500F868F */  lw         $a2, %gp_rel(MovieSpriteX)($gp)
/* 3F4E4 8004ECE4 C0280400 */  sll        $a1, $a0, 3
/* 3F4E8 8004ECE8 2180A200 */  addu       $s0, $a1, $v0
/* 3F4EC 8004ECEC 80100400 */  sll        $v0, $a0, 2
/* 3F4F0 8004ECF0 21104400 */  addu       $v0, $v0, $a0
/* 3F4F4 8004ECF4 80100200 */  sll        $v0, $v0, 2
/* 3F4F8 8004ECF8 21204300 */  addu       $a0, $v0, $v1
.L8004ECFC:
/* 3F4FC 8004ECFC 88BE828D */  lw         $v0, %lo(g_nt + 0x320)($t4)
/* 3F500 8004ED00 03008FA0 */  sb         $t7, 0x3($a0)
/* 3F504 8004ED04 07008EA0 */  sb         $t6, 0x7($a0)
/* 3F508 8004ED08 040089A0 */  sb         $t1, 0x4($a0)
/* 3F50C 8004ED0C 050089A0 */  sb         $t1, 0x5($a0)
/* 3F510 8004ED10 060089A0 */  sb         $t1, 0x6($a0)
/* 3F514 8004ED14 10008AA4 */  sh         $t2, 0x10($a0)
/* 3F518 8004ED18 120099A4 */  sh         $t9, 0x12($a0)
/* 3F51C 8004ED1C 080086A4 */  sh         $a2, 0x8($a0)
/* 3F520 8004ED20 0A008DA4 */  sh         $t5, 0xA($a0)
/* 3F524 8004ED24 0C0088A0 */  sb         $t0, 0xC($a0)
/* 3F528 8004ED28 09004010 */  beqz       $v0, .L8004ED50
/* 3F52C 8004ED2C 0D0098A0 */   sb        $t8, 0xD($a0)
/* 3F530 8004ED30 02006389 */  lwl        $v1, 0x2($t3)
/* 3F534 8004ED34 88BE228E */  lw         $v0, %lo(g_nt + 0x320)($s1)
/* 3F538 8004ED38 00000000 */  nop
/* 3F53C 8004ED3C 00120200 */  sll        $v0, $v0, 8
/* 3F540 8004ED40 020082A8 */  swl        $v0, 0x2($a0)
/* 3F544 8004ED44 020083A8 */  swl        $v1, 0x2($a0)
/* 3F548 8004ED48 563B0108 */  j          .L8004ED58
/* 3F54C 8004ED4C 88BE84AD */   sw        $a0, %lo(g_nt + 0x320)($t4)
.L8004ED50:
/* 3F550 8004ED50 040064AD */  sw         $a0, 0x4($t3)
/* 3F554 8004ED54 88BE84AD */  sw         $a0, %lo(g_nt + 0x320)($t4)
.L8004ED58:
/* 3F558 8004ED58 2130CA00 */  addu       $a2, $a2, $t2
/* 3F55C 8004ED5C 21400A01 */  addu       $t0, $t0, $t2
/* 3F560 8004ED60 FFFFE724 */  addiu      $a3, $a3, -0x1
/* 3F564 8004ED64 E5FFE104 */  bgez       $a3, .L8004ECFC
/* 3F568 8004ED68 28008424 */   addiu     $a0, $a0, 0x28
/* 3F56C 8004ED6C 02000424 */  addiu      $a0, $zero, 0x2
/* 3F570 8004ED70 21280000 */  addu       $a1, $zero, $zero
/* 3F574 8004ED74 C0FF0224 */  addiu      $v0, $zero, -0x40
/* 3F578 8004ED78 580F868F */  lw         $a2, %gp_rel(VideoVRAMXPos)($gp)
/* 3F57C 8004ED7C 600F878F */  lw         $a3, %gp_rel(MovieIndex)($gp)
/* 3F580 8004ED80 2430C200 */  and        $a2, $a2, $v0
/* 3F584 8004ED84 27380700 */  nor        $a3, $zero, $a3
/* 3F588 8004ED88 93E6010C */  jal        GetTPage
/* 3F58C 8004ED8C 003A0700 */   sll       $a3, $a3, 8
/* 3F590 8004ED90 21200002 */  addu       $a0, $s0, $zero
/* 3F594 8004ED94 21280000 */  addu       $a1, $zero, $zero
/* 3F598 8004ED98 01000624 */  addiu      $a2, $zero, 0x1
/* 3F59C 8004ED9C 23E7010C */  jal        SetDrawTPage
/* 3F5A0 8004EDA0 21384000 */   addu      $a3, $v0, $zero
/* 3F5A4 8004EDA4 88BE228E */  lw         $v0, %lo(g_nt + 0x320)($s1)
/* 3F5A8 8004EDA8 00000000 */  nop
/* 3F5AC 8004EDAC 09004010 */  beqz       $v0, .L8004EDD4
/* 3F5B0 8004EDB0 88BE2326 */   addiu     $v1, $s1, %lo(g_nt + 0x320)
/* 3F5B4 8004EDB4 02006388 */  lwl        $v1, 0x2($v1)
/* 3F5B8 8004EDB8 88BE228E */  lw         $v0, %lo(g_nt + 0x320)($s1)
/* 3F5BC 8004EDBC 00000000 */  nop
/* 3F5C0 8004EDC0 00120200 */  sll        $v0, $v0, 8
/* 3F5C4 8004EDC4 020002AA */  swl        $v0, 0x2($s0)
/* 3F5C8 8004EDC8 020003AA */  swl        $v1, 0x2($s0)
/* 3F5CC 8004EDCC 773B0108 */  j          .L8004EDDC
/* 3F5D0 8004EDD0 88BE30AE */   sw        $s0, %lo(g_nt + 0x320)($s1)
.L8004EDD4:
/* 3F5D4 8004EDD4 040070AC */  sw         $s0, 0x4($v1)
/* 3F5D8 8004EDD8 88BE30AE */  sw         $s0, %lo(g_nt + 0x320)($s1)
.L8004EDDC:
/* 3F5DC 8004EDDC 1800BF8F */  lw         $ra, 0x18($sp)
/* 3F5E0 8004EDE0 1400B18F */  lw         $s1, 0x14($sp)
/* 3F5E4 8004EDE4 1000B08F */  lw         $s0, 0x10($sp)
/* 3F5E8 8004EDE8 0800E003 */  jr         $ra
/* 3F5EC 8004EDEC 2000BD27 */   addiu     $sp, $sp, 0x20
.size UpdateMovieSprite, . - UpdateMovieSprite
