.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DoraExpressionService
/* AEE0 8001A6E0 7800858F */  lw         $a1, %gp_rel(DoraExpressionFile)($gp)
/* AEE4 8001A6E4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* AEE8 8001A6E8 3400A010 */  beqz       $a1, .L8001A7BC
/* AEEC 8001A6EC 1800BFAF */   sw        $ra, 0x18($sp)
/* AEF0 8001A6F0 8400828F */  lw         $v0, %gp_rel(DoraEyeTimer)($gp)
/* AEF4 8001A6F4 00000000 */  nop
/* AEF8 8001A6F8 FFFF4224 */  addiu      $v0, $v0, -0x1
/* AEFC 8001A6FC 840082AF */  sw         $v0, %gp_rel(DoraEyeTimer)($gp)
/* AF00 8001A700 2E004014 */  bnez       $v0, .L8001A7BC
/* AF04 8001A704 AA2A033C */   lui       $v1, (0x2AAAAAAB >> 16)
/* AF08 8001A708 8000848F */  lw         $a0, %gp_rel(DoraEyeFrame)($gp)
/* AF0C 8001A70C ABAA6334 */  ori        $v1, $v1, (0x2AAAAAAB & 0xFFFF)
/* AF10 8001A710 01008424 */  addiu      $a0, $a0, 0x1
/* AF14 8001A714 18008300 */  mult       $a0, $v1
/* AF18 8001A718 2130A000 */  addu       $a2, $a1, $zero
/* AF1C 8001A71C 0A000224 */  addiu      $v0, $zero, 0xA
/* AF20 8001A720 840082AF */  sw         $v0, %gp_rel(DoraEyeTimer)($gp)
/* AF24 8001A724 C32F0400 */  sra        $a1, $a0, 31
/* AF28 8001A728 10180000 */  mfhi       $v1
/* AF2C 8001A72C 43180300 */  sra        $v1, $v1, 1
/* AF30 8001A730 23186500 */  subu       $v1, $v1, $a1
/* AF34 8001A734 40100300 */  sll        $v0, $v1, 1
/* AF38 8001A738 21104300 */  addu       $v0, $v0, $v1
/* AF3C 8001A73C 80100200 */  sll        $v0, $v0, 2
/* AF40 8001A740 23208200 */  subu       $a0, $a0, $v0
/* AF44 8001A744 0880023C */  lui        $v0, %hi(DoraBlinkTable)
/* AF48 8001A748 30544224 */  addiu      $v0, $v0, %lo(DoraBlinkTable)
/* AF4C 8001A74C 800084AF */  sw         $a0, %gp_rel(DoraEyeFrame)($gp)
/* AF50 8001A750 80200400 */  sll        $a0, $a0, 2
/* AF54 8001A754 21208200 */  addu       $a0, $a0, $v0
/* AF58 8001A758 0000848C */  lw         $a0, 0x0($a0)
/* AF5C 8001A75C 00000000 */  nop
/* AF60 8001A760 04008018 */  blez       $a0, .L8001A774
/* AF64 8001A764 1000A527 */   addiu     $a1, $sp, 0x10
.L8001A768:
/* AF68 8001A768 FFFF8424 */  addiu      $a0, $a0, -0x1
/* AF6C 8001A76C FEFF8014 */  bnez       $a0, .L8001A768
/* AF70 8001A770 0812C624 */   addiu     $a2, $a2, 0x1208
.L8001A774:
/* AF74 8001A774 0C80033C */  lui        $v1, %hi(VRAMItems)
/* AF78 8001A778 F812848F */  lw         $a0, %gp_rel(DoraVramIndex)($gp)
/* AF7C 8001A77C 38AD6324 */  addiu      $v1, $v1, %lo(VRAMItems)
/* AF80 8001A780 80100400 */  sll        $v0, $a0, 2
/* AF84 8001A784 21104400 */  addu       $v0, $v0, $a0
/* AF88 8001A788 80100200 */  sll        $v0, $v0, 2
/* AF8C 8001A78C 21104300 */  addu       $v0, $v0, $v1
/* AF90 8001A790 03004388 */  lwl        $v1, 0x3($v0)
/* AF94 8001A794 00004398 */  lwr        $v1, 0x0($v0)
/* AF98 8001A798 07004488 */  lwl        $a0, 0x7($v0)
/* AF9C 8001A79C 04004498 */  lwr        $a0, 0x4($v0)
/* AFA0 8001A7A0 1300A3AB */  swl        $v1, 0x13($sp)
/* AFA4 8001A7A4 1000A3BB */  swr        $v1, 0x10($sp)
/* AFA8 8001A7A8 1700A4AB */  swl        $a0, 0x17($sp)
/* AFAC 8001A7AC 1400A4BB */  swr        $a0, 0x14($sp)
/* AFB0 8001A7B0 2120A000 */  addu       $a0, $a1, $zero
/* AFB4 8001A7B4 636E010C */  jal        AddVBLoadImage
/* AFB8 8001A7B8 0802C524 */   addiu     $a1, $a2, 0x208
.L8001A7BC:
/* AFBC 8001A7BC 1800BF8F */  lw         $ra, 0x18($sp)
/* AFC0 8001A7C0 00000000 */  nop
/* AFC4 8001A7C4 0800E003 */  jr         $ra
/* AFC8 8001A7C8 2000BD27 */   addiu     $sp, $sp, 0x20
.size DoraExpressionService, . - DoraExpressionService
