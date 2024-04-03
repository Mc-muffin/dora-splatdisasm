.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckGravity
/* 2DB64 8003D364 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 2DB68 8003D368 1000B0AF */  sw         $s0, 0x10($sp)
/* 2DB6C 8003D36C 21808000 */  addu       $s0, $a0, $zero
/* 2DB70 8003D370 1400B1AF */  sw         $s1, 0x14($sp)
/* 2DB74 8003D374 FFFF1124 */  addiu      $s1, $zero, -0x1
/* 2DB78 8003D378 1800BFAF */  sw         $ra, 0x18($sp)
/* 2DB7C 8003D37C 3400028E */  lw         $v0, 0x34($s0)
/* 2DB80 8003D380 0800048E */  lw         $a0, 0x8($s0)
/* 2DB84 8003D384 C0180200 */  sll        $v1, $v0, 3
/* 2DB88 8003D388 23186200 */  subu       $v1, $v1, $v0
/* 2DB8C 8003D38C C0180300 */  sll        $v1, $v1, 3
/* 2DB90 8003D390 23186200 */  subu       $v1, $v1, $v0
/* 2DB94 8003D394 80180300 */  sll        $v1, $v1, 2
/* 2DB98 8003D398 03120200 */  sra        $v0, $v0, 8
/* 2DB9C 8003D39C 21208200 */  addu       $a0, $a0, $v0
/* 2DBA0 8003D3A0 02006104 */  bgez       $v1, .L8003D3AC
/* 2DBA4 8003D3A4 080004AE */   sw        $a0, 0x8($s0)
/* 2DBA8 8003D3A8 FF006324 */  addiu      $v1, $v1, 0xFF
.L8003D3AC:
/* 2DBAC 8003D3AC 03120300 */  sra        $v0, $v1, 8
/* 2DBB0 8003D3B0 21200002 */  addu       $a0, $s0, $zero
/* 2DBB4 8003D3B4 D9F2000C */  jal        ApplyGravity
/* 2DBB8 8003D3B8 340002AE */   sw        $v0, 0x34($s0)
/* 2DBBC 8003D3BC FF034330 */  andi       $v1, $v0, 0x3FF
/* 2DBC0 8003D3C0 880002AE */  sw         $v0, 0x88($s0)
/* 2DBC4 8003D3C4 FF030224 */  addiu      $v0, $zero, 0x3FF
/* 2DBC8 8003D3C8 99016210 */  beq        $v1, $v0, .L8003DA30
/* 2DBCC 8003D3CC 80100300 */   sll       $v0, $v1, 2
/* 2DBD0 8003D3D0 21104300 */  addu       $v0, $v0, $v1
/* 2DBD4 8003D3D4 0980033C */  lui        $v1, %hi(CellAttributesPtr)
/* 2DBD8 8003D3D8 6C50638C */  lw         $v1, %lo(CellAttributesPtr)($v1)
/* 2DBDC 8003D3DC C0100200 */  sll        $v0, $v0, 3
/* 2DBE0 8003D3E0 21186200 */  addu       $v1, $v1, $v0
/* 2DBE4 8003D3E4 0800678C */  lw         $a3, 0x8($v1)
/* 2DBE8 8003D3E8 2000023C */  lui        $v0, (0x200000 >> 16)
/* 2DBEC 8003D3EC 2410E200 */  and        $v0, $a3, $v0
/* 2DBF0 8003D3F0 03004010 */  beqz       $v0, .L8003D400
/* 2DBF4 8003D3F4 8C0007AE */   sw        $a3, 0x8C($s0)
/* 2DBF8 8003D3F8 8DF60008 */  j          .L8003DA34
/* 2DBFC 8003D3FC 05000224 */   addiu     $v0, $zero, 0x5
.L8003D400:
/* 2DC00 8003D400 CC0B868F */  lw         $a2, %gp_rel(TWEAKFRICTION)($gp)
/* 2DC04 8003D404 00000000 */  nop
/* 2DC08 8003D408 040066AC */  sw         $a2, 0x4($v1)
/* 2DC0C 8003D40C 001EE330 */  andi       $v1, $a3, 0x1E00
/* 2DC10 8003D410 23006010 */  beqz       $v1, .L8003D4A0
/* 2DC14 8003D414 900006AE */   sw        $a2, 0x90($s0)
/* 2DC18 8003D418 00040224 */  addiu      $v0, $zero, 0x400
/* 2DC1C 8003D41C 14006210 */  beq        $v1, $v0, .L8003D470
/* 2DC20 8003D420 01046228 */   slti      $v0, $v1, 0x401
/* 2DC24 8003D424 05004010 */  beqz       $v0, .L8003D43C
/* 2DC28 8003D428 00020224 */   addiu     $v0, $zero, 0x200
/* 2DC2C 8003D42C 0B006210 */  beq        $v1, $v0, .L8003D45C
/* 2DC30 8003D430 0001E230 */   andi      $v0, $a3, 0x100
/* 2DC34 8003D434 29F50008 */  j          .L8003D4A4
/* 2DC38 8003D438 00000000 */   nop
.L8003D43C:
/* 2DC3C 8003D43C 00080224 */  addiu      $v0, $zero, 0x800
/* 2DC40 8003D440 10006210 */  beq        $v1, $v0, .L8003D484
/* 2DC44 8003D444 00000000 */   nop
/* 2DC48 8003D448 00100224 */  addiu      $v0, $zero, 0x1000
/* 2DC4C 8003D44C 10006210 */  beq        $v1, $v0, .L8003D490
/* 2DC50 8003D450 0001E230 */   andi      $v0, $a3, 0x100
/* 2DC54 8003D454 29F50008 */  j          .L8003D4A4
/* 2DC58 8003D458 00000000 */   nop
.L8003D45C:
/* 2DC5C 8003D45C 2800028E */  lw         $v0, 0x28($s0)
/* 2DC60 8003D460 00000000 */  nop
/* 2DC64 8003D464 06004224 */  addiu      $v0, $v0, 0x6
/* 2DC68 8003D468 28F50008 */  j          .L8003D4A0
/* 2DC6C 8003D46C 280002AE */   sw        $v0, 0x28($s0)
.L8003D470:
/* 2DC70 8003D470 2800028E */  lw         $v0, 0x28($s0)
/* 2DC74 8003D474 00000000 */  nop
/* 2DC78 8003D478 FAFF4224 */  addiu      $v0, $v0, -0x6
/* 2DC7C 8003D47C 28F50008 */  j          .L8003D4A0
/* 2DC80 8003D480 280002AE */   sw        $v0, 0x28($s0)
.L8003D484:
/* 2DC84 8003D484 2000028E */  lw         $v0, 0x20($s0)
/* 2DC88 8003D488 27F50008 */  j          .L8003D49C
/* 2DC8C 8003D48C 06004224 */   addiu     $v0, $v0, 0x6
.L8003D490:
/* 2DC90 8003D490 2000028E */  lw         $v0, 0x20($s0)
/* 2DC94 8003D494 00000000 */  nop
/* 2DC98 8003D498 FAFF4224 */  addiu      $v0, $v0, -0x6
.L8003D49C:
/* 2DC9C 8003D49C 200002AE */  sw         $v0, 0x20($s0)
.L8003D4A0:
/* 2DCA0 8003D4A0 0001E230 */  andi       $v0, $a3, 0x100
.L8003D4A4:
/* 2DCA4 8003D4A4 3000038E */  lw         $v1, 0x30($s0)
/* 2DCA8 8003D4A8 3800058E */  lw         $a1, 0x38($s0)
/* 2DCAC 8003D4AC 46014010 */  beqz       $v0, .L8003D9C8
/* 2DCB0 8003D4B0 00000000 */   nop
/* 2DCB4 8003D4B4 09006010 */  beqz       $v1, .L8003D4DC
/* 2DCB8 8003D4B8 21400000 */   addu      $t0, $zero, $zero
/* 2DCBC 8003D4BC 03006018 */  blez       $v1, .L8003D4CC
/* 2DCC0 8003D4C0 00000000 */   nop
/* 2DCC4 8003D4C4 40F50008 */  j          .L8003D500
/* 2DCC8 8003D4C8 02000824 */   addiu     $t0, $zero, 0x2
.L8003D4CC:
/* 2DCCC 8003D4CC 0D006104 */  bgez       $v1, .L8003D504
/* 2DCD0 8003D4D0 F000E230 */   andi      $v0, $a3, 0xF0
/* 2DCD4 8003D4D4 41F50008 */  j          .L8003D504
/* 2DCD8 8003D4D8 08000824 */   addiu     $t0, $zero, 0x8
.L8003D4DC:
/* 2DCDC 8003D4DC 0900A010 */  beqz       $a1, .L8003D504
/* 2DCE0 8003D4E0 F000E230 */   andi      $v0, $a3, 0xF0
/* 2DCE4 8003D4E4 0300A018 */  blez       $a1, .L8003D4F4
/* 2DCE8 8003D4E8 00000000 */   nop
/* 2DCEC 8003D4EC 41F50008 */  j          .L8003D504
/* 2DCF0 8003D4F0 01000824 */   addiu     $t0, $zero, 0x1
.L8003D4F4:
/* 2DCF4 8003D4F4 0300A104 */  bgez       $a1, .L8003D504
/* 2DCF8 8003D4F8 F000E230 */   andi      $v0, $a3, 0xF0
/* 2DCFC 8003D4FC 04000824 */  addiu      $t0, $zero, 0x4
.L8003D500:
/* 2DD00 8003D500 F000E230 */  andi       $v0, $a3, 0xF0
.L8003D504:
/* 2DD04 8003D504 19014010 */  beqz       $v0, .L8003D96C
/* 2DD08 8003D508 940008AE */   sw        $t0, 0x94($s0)
/* 2DD0C 8003D50C 2000E230 */  andi       $v0, $a3, 0x20
/* 2DD10 8003D510 46004010 */  beqz       $v0, .L8003D62C
/* 2DD14 8003D514 04000231 */   andi      $v0, $t0, 0x4
/* 2DD18 8003D518 25004010 */  beqz       $v0, .L8003D5B0
/* 2DD1C 8003D51C 8000023C */   lui       $v0, (0x800020 >> 16)
/* 2DD20 8003D520 20004234 */  ori        $v0, $v0, (0x800020 & 0xFFFF)
/* 2DD24 8003D524 2418E200 */  and        $v1, $a3, $v0
/* 2DD28 8003D528 21006214 */  bne        $v1, $v0, .L8003D5B0
/* 2DD2C 8003D52C 00000000 */   nop
/* 2DD30 8003D530 3000038E */  lw         $v1, 0x30($s0)
/* 2DD34 8003D534 0200C104 */  bgez       $a2, .L8003D540
/* 2DD38 8003D538 2110C000 */   addu      $v0, $a2, $zero
/* 2DD3C 8003D53C 21100000 */  addu       $v0, $zero, $zero
.L8003D540:
/* 2DD40 8003D540 18006200 */  mult       $v1, $v0
/* 2DD44 8003D544 12100000 */  mflo       $v0
/* 2DD48 8003D548 080C848F */  lw         $a0, %gp_rel(TWEAK_FRICTION_DIV)($gp)
/* 2DD4C 8003D54C 00000000 */  nop
/* 2DD50 8003D550 1A004400 */  div        $zero, $v0, $a0
/* 2DD54 8003D554 12100000 */  mflo       $v0
/* 2DD58 8003D558 02008014 */  bnez       $a0, .L8003D564
/* 2DD5C 8003D55C 00000000 */   nop
/* 2DD60 8003D560 CD010000 */  break      0, 7
.L8003D564:
/* 2DD64 8003D564 C00B838F */  lw         $v1, %gp_rel(SLIDE_ADD_VALUE)($gp)
/* 2DD68 8003D568 300002AE */  sw         $v0, 0x30($s0)
/* 2DD6C 8003D56C 2110C300 */  addu       $v0, $a2, $v1
/* 2DD70 8003D570 3800038E */  lw         $v1, 0x38($s0)
/* 2DD74 8003D574 03004104 */  bgez       $v0, .L8003D584
/* 2DD78 8003D578 18006200 */   mult      $v1, $v0
/* 2DD7C 8003D57C 21100000 */  addu       $v0, $zero, $zero
/* 2DD80 8003D580 18006200 */  mult       $v1, $v0
.L8003D584:
/* 2DD84 8003D584 12100000 */  mflo       $v0
/* 2DD88 8003D588 00000000 */  nop
/* 2DD8C 8003D58C 00000000 */  nop
/* 2DD90 8003D590 1A004400 */  div        $zero, $v0, $a0
/* 2DD94 8003D594 12100000 */  mflo       $v0
/* 2DD98 8003D598 02008014 */  bnez       $a0, .L8003D5A4
/* 2DD9C 8003D59C 00000000 */   nop
/* 2DDA0 8003D5A0 CD010000 */  break      0, 7
.L8003D5A4:
/* 2DDA4 8003D5A4 380002AE */  sw         $v0, 0x38($s0)
/* 2DDA8 8003D5A8 8BF50008 */  j          .L8003D62C
/* 2DDAC 8003D5AC 01001124 */   addiu     $s1, $zero, 0x1
.L8003D5B0:
/* 2DDB0 8003D5B0 C40B858F */  lw         $a1, %gp_rel(SLIDE_DEC_VALUE)($gp)
/* 2DDB4 8003D5B4 3000038E */  lw         $v1, 0x30($s0)
/* 2DDB8 8003D5B8 2110C500 */  addu       $v0, $a2, $a1
/* 2DDBC 8003D5BC 03004104 */  bgez       $v0, .L8003D5CC
/* 2DDC0 8003D5C0 18006200 */   mult      $v1, $v0
/* 2DDC4 8003D5C4 21100000 */  addu       $v0, $zero, $zero
/* 2DDC8 8003D5C8 18006200 */  mult       $v1, $v0
.L8003D5CC:
/* 2DDCC 8003D5CC 12100000 */  mflo       $v0
/* 2DDD0 8003D5D0 080C848F */  lw         $a0, %gp_rel(TWEAK_FRICTION_DIV)($gp)
/* 2DDD4 8003D5D4 00000000 */  nop
/* 2DDD8 8003D5D8 1A004400 */  div        $zero, $v0, $a0
/* 2DDDC 8003D5DC 12100000 */  mflo       $v0
/* 2DDE0 8003D5E0 02008014 */  bnez       $a0, .L8003D5EC
/* 2DDE4 8003D5E4 00000000 */   nop
/* 2DDE8 8003D5E8 CD010000 */  break      0, 7
.L8003D5EC:
/* 2DDEC 8003D5EC 2118C500 */  addu       $v1, $a2, $a1
/* 2DDF0 8003D5F0 300002AE */  sw         $v0, 0x30($s0)
/* 2DDF4 8003D5F4 3800028E */  lw         $v0, 0x38($s0)
/* 2DDF8 8003D5F8 03006104 */  bgez       $v1, .L8003D608
/* 2DDFC 8003D5FC 18004300 */   mult      $v0, $v1
/* 2DE00 8003D600 21180000 */  addu       $v1, $zero, $zero
/* 2DE04 8003D604 18004300 */  mult       $v0, $v1
.L8003D608:
/* 2DE08 8003D608 12100000 */  mflo       $v0
/* 2DE0C 8003D60C 00000000 */  nop
/* 2DE10 8003D610 00000000 */  nop
/* 2DE14 8003D614 1A004400 */  div        $zero, $v0, $a0
/* 2DE18 8003D618 12100000 */  mflo       $v0
/* 2DE1C 8003D61C 02008014 */  bnez       $a0, .L8003D628
/* 2DE20 8003D620 00000000 */   nop
/* 2DE24 8003D624 CD010000 */  break      0, 7
.L8003D628:
/* 2DE28 8003D628 380002AE */  sw         $v0, 0x38($s0)
.L8003D62C:
/* 2DE2C 8003D62C 1000E230 */  andi       $v0, $a3, 0x10
/* 2DE30 8003D630 46004010 */  beqz       $v0, .L8003D74C
/* 2DE34 8003D634 01000231 */   andi      $v0, $t0, 0x1
/* 2DE38 8003D638 25004010 */  beqz       $v0, .L8003D6D0
/* 2DE3C 8003D63C 8000023C */   lui       $v0, (0x800010 >> 16)
/* 2DE40 8003D640 10004234 */  ori        $v0, $v0, (0x800010 & 0xFFFF)
/* 2DE44 8003D644 2418E200 */  and        $v1, $a3, $v0
/* 2DE48 8003D648 21006214 */  bne        $v1, $v0, .L8003D6D0
/* 2DE4C 8003D64C 00000000 */   nop
/* 2DE50 8003D650 3000038E */  lw         $v1, 0x30($s0)
/* 2DE54 8003D654 0200C104 */  bgez       $a2, .L8003D660
/* 2DE58 8003D658 2110C000 */   addu      $v0, $a2, $zero
/* 2DE5C 8003D65C 21100000 */  addu       $v0, $zero, $zero
.L8003D660:
/* 2DE60 8003D660 18006200 */  mult       $v1, $v0
/* 2DE64 8003D664 12100000 */  mflo       $v0
/* 2DE68 8003D668 080C848F */  lw         $a0, %gp_rel(TWEAK_FRICTION_DIV)($gp)
/* 2DE6C 8003D66C 00000000 */  nop
/* 2DE70 8003D670 1A004400 */  div        $zero, $v0, $a0
/* 2DE74 8003D674 12100000 */  mflo       $v0
/* 2DE78 8003D678 02008014 */  bnez       $a0, .L8003D684
/* 2DE7C 8003D67C 00000000 */   nop
/* 2DE80 8003D680 CD010000 */  break      0, 7
.L8003D684:
/* 2DE84 8003D684 C00B838F */  lw         $v1, %gp_rel(SLIDE_ADD_VALUE)($gp)
/* 2DE88 8003D688 300002AE */  sw         $v0, 0x30($s0)
/* 2DE8C 8003D68C 2110C300 */  addu       $v0, $a2, $v1
/* 2DE90 8003D690 3800038E */  lw         $v1, 0x38($s0)
/* 2DE94 8003D694 03004104 */  bgez       $v0, .L8003D6A4
/* 2DE98 8003D698 18006200 */   mult      $v1, $v0
/* 2DE9C 8003D69C 21100000 */  addu       $v0, $zero, $zero
/* 2DEA0 8003D6A0 18006200 */  mult       $v1, $v0
.L8003D6A4:
/* 2DEA4 8003D6A4 12100000 */  mflo       $v0
/* 2DEA8 8003D6A8 00000000 */  nop
/* 2DEAC 8003D6AC 00000000 */  nop
/* 2DEB0 8003D6B0 1A004400 */  div        $zero, $v0, $a0
/* 2DEB4 8003D6B4 12100000 */  mflo       $v0
/* 2DEB8 8003D6B8 02008014 */  bnez       $a0, .L8003D6C4
/* 2DEBC 8003D6BC 00000000 */   nop
/* 2DEC0 8003D6C0 CD010000 */  break      0, 7
.L8003D6C4:
/* 2DEC4 8003D6C4 380002AE */  sw         $v0, 0x38($s0)
/* 2DEC8 8003D6C8 D3F50008 */  j          .L8003D74C
/* 2DECC 8003D6CC 01001124 */   addiu     $s1, $zero, 0x1
.L8003D6D0:
/* 2DED0 8003D6D0 C40B858F */  lw         $a1, %gp_rel(SLIDE_DEC_VALUE)($gp)
/* 2DED4 8003D6D4 3000038E */  lw         $v1, 0x30($s0)
/* 2DED8 8003D6D8 2110C500 */  addu       $v0, $a2, $a1
/* 2DEDC 8003D6DC 03004104 */  bgez       $v0, .L8003D6EC
/* 2DEE0 8003D6E0 18006200 */   mult      $v1, $v0
/* 2DEE4 8003D6E4 21100000 */  addu       $v0, $zero, $zero
/* 2DEE8 8003D6E8 18006200 */  mult       $v1, $v0
.L8003D6EC:
/* 2DEEC 8003D6EC 12100000 */  mflo       $v0
/* 2DEF0 8003D6F0 080C848F */  lw         $a0, %gp_rel(TWEAK_FRICTION_DIV)($gp)
/* 2DEF4 8003D6F4 00000000 */  nop
/* 2DEF8 8003D6F8 1A004400 */  div        $zero, $v0, $a0
/* 2DEFC 8003D6FC 12100000 */  mflo       $v0
/* 2DF00 8003D700 02008014 */  bnez       $a0, .L8003D70C
/* 2DF04 8003D704 00000000 */   nop
/* 2DF08 8003D708 CD010000 */  break      0, 7
.L8003D70C:
/* 2DF0C 8003D70C 2118C500 */  addu       $v1, $a2, $a1
/* 2DF10 8003D710 300002AE */  sw         $v0, 0x30($s0)
/* 2DF14 8003D714 3800028E */  lw         $v0, 0x38($s0)
/* 2DF18 8003D718 03006104 */  bgez       $v1, .L8003D728
/* 2DF1C 8003D71C 18004300 */   mult      $v0, $v1
/* 2DF20 8003D720 21180000 */  addu       $v1, $zero, $zero
/* 2DF24 8003D724 18004300 */  mult       $v0, $v1
.L8003D728:
/* 2DF28 8003D728 12100000 */  mflo       $v0
/* 2DF2C 8003D72C 00000000 */  nop
/* 2DF30 8003D730 00000000 */  nop
/* 2DF34 8003D734 1A004400 */  div        $zero, $v0, $a0
/* 2DF38 8003D738 12100000 */  mflo       $v0
/* 2DF3C 8003D73C 02008014 */  bnez       $a0, .L8003D748
/* 2DF40 8003D740 00000000 */   nop
/* 2DF44 8003D744 CD010000 */  break      0, 7
.L8003D748:
/* 2DF48 8003D748 380002AE */  sw         $v0, 0x38($s0)
.L8003D74C:
/* 2DF4C 8003D74C 8000E230 */  andi       $v0, $a3, 0x80
/* 2DF50 8003D750 46004010 */  beqz       $v0, .L8003D86C
/* 2DF54 8003D754 08000231 */   andi      $v0, $t0, 0x8
/* 2DF58 8003D758 25004010 */  beqz       $v0, .L8003D7F0
/* 2DF5C 8003D75C 8000023C */   lui       $v0, (0x800080 >> 16)
/* 2DF60 8003D760 80004234 */  ori        $v0, $v0, (0x800080 & 0xFFFF)
/* 2DF64 8003D764 2418E200 */  and        $v1, $a3, $v0
/* 2DF68 8003D768 21006214 */  bne        $v1, $v0, .L8003D7F0
/* 2DF6C 8003D76C 00000000 */   nop
/* 2DF70 8003D770 C00B828F */  lw         $v0, %gp_rel(SLIDE_ADD_VALUE)($gp)
/* 2DF74 8003D774 3000038E */  lw         $v1, 0x30($s0)
/* 2DF78 8003D778 2110C200 */  addu       $v0, $a2, $v0
/* 2DF7C 8003D77C 03004104 */  bgez       $v0, .L8003D78C
/* 2DF80 8003D780 18006200 */   mult      $v1, $v0
/* 2DF84 8003D784 21100000 */  addu       $v0, $zero, $zero
/* 2DF88 8003D788 18006200 */  mult       $v1, $v0
.L8003D78C:
/* 2DF8C 8003D78C 12100000 */  mflo       $v0
/* 2DF90 8003D790 080C838F */  lw         $v1, %gp_rel(TWEAK_FRICTION_DIV)($gp)
/* 2DF94 8003D794 00000000 */  nop
/* 2DF98 8003D798 1A004300 */  div        $zero, $v0, $v1
/* 2DF9C 8003D79C 12100000 */  mflo       $v0
/* 2DFA0 8003D7A0 02006014 */  bnez       $v1, .L8003D7AC
/* 2DFA4 8003D7A4 00000000 */   nop
/* 2DFA8 8003D7A8 CD010000 */  break      0, 7
.L8003D7AC:
/* 2DFAC 8003D7AC 300002AE */  sw         $v0, 0x30($s0)
/* 2DFB0 8003D7B0 3800028E */  lw         $v0, 0x38($s0)
/* 2DFB4 8003D7B4 0200C104 */  bgez       $a2, .L8003D7C0
/* 2DFB8 8003D7B8 2120C000 */   addu      $a0, $a2, $zero
/* 2DFBC 8003D7BC 21200000 */  addu       $a0, $zero, $zero
.L8003D7C0:
/* 2DFC0 8003D7C0 18004400 */  mult       $v0, $a0
/* 2DFC4 8003D7C4 12100000 */  mflo       $v0
/* 2DFC8 8003D7C8 00000000 */  nop
/* 2DFCC 8003D7CC 00000000 */  nop
/* 2DFD0 8003D7D0 1A004300 */  div        $zero, $v0, $v1
/* 2DFD4 8003D7D4 12100000 */  mflo       $v0
/* 2DFD8 8003D7D8 02006014 */  bnez       $v1, .L8003D7E4
/* 2DFDC 8003D7DC 00000000 */   nop
/* 2DFE0 8003D7E0 CD010000 */  break      0, 7
.L8003D7E4:
/* 2DFE4 8003D7E4 380002AE */  sw         $v0, 0x38($s0)
/* 2DFE8 8003D7E8 1BF60008 */  j          .L8003D86C
/* 2DFEC 8003D7EC 01001124 */   addiu     $s1, $zero, 0x1
.L8003D7F0:
/* 2DFF0 8003D7F0 C40B858F */  lw         $a1, %gp_rel(SLIDE_DEC_VALUE)($gp)
/* 2DFF4 8003D7F4 3000038E */  lw         $v1, 0x30($s0)
/* 2DFF8 8003D7F8 2110C500 */  addu       $v0, $a2, $a1
/* 2DFFC 8003D7FC 03004104 */  bgez       $v0, .L8003D80C
/* 2E000 8003D800 18006200 */   mult      $v1, $v0
/* 2E004 8003D804 21100000 */  addu       $v0, $zero, $zero
/* 2E008 8003D808 18006200 */  mult       $v1, $v0
.L8003D80C:
/* 2E00C 8003D80C 12100000 */  mflo       $v0
/* 2E010 8003D810 080C848F */  lw         $a0, %gp_rel(TWEAK_FRICTION_DIV)($gp)
/* 2E014 8003D814 00000000 */  nop
/* 2E018 8003D818 1A004400 */  div        $zero, $v0, $a0
/* 2E01C 8003D81C 12100000 */  mflo       $v0
/* 2E020 8003D820 02008014 */  bnez       $a0, .L8003D82C
/* 2E024 8003D824 00000000 */   nop
/* 2E028 8003D828 CD010000 */  break      0, 7
.L8003D82C:
/* 2E02C 8003D82C 2118C500 */  addu       $v1, $a2, $a1
/* 2E030 8003D830 300002AE */  sw         $v0, 0x30($s0)
/* 2E034 8003D834 3800028E */  lw         $v0, 0x38($s0)
/* 2E038 8003D838 03006104 */  bgez       $v1, .L8003D848
/* 2E03C 8003D83C 18004300 */   mult      $v0, $v1
/* 2E040 8003D840 21180000 */  addu       $v1, $zero, $zero
/* 2E044 8003D844 18004300 */  mult       $v0, $v1
.L8003D848:
/* 2E048 8003D848 12100000 */  mflo       $v0
/* 2E04C 8003D84C 00000000 */  nop
/* 2E050 8003D850 00000000 */  nop
/* 2E054 8003D854 1A004400 */  div        $zero, $v0, $a0
/* 2E058 8003D858 12100000 */  mflo       $v0
/* 2E05C 8003D85C 02008014 */  bnez       $a0, .L8003D868
/* 2E060 8003D860 00000000 */   nop
/* 2E064 8003D864 CD010000 */  break      0, 7
.L8003D868:
/* 2E068 8003D868 380002AE */  sw         $v0, 0x38($s0)
.L8003D86C:
/* 2E06C 8003D86C 4000E230 */  andi       $v0, $a3, 0x40
/* 2E070 8003D870 6F004010 */  beqz       $v0, .L8003DA30
/* 2E074 8003D874 02000231 */   andi      $v0, $t0, 0x2
/* 2E078 8003D878 25004010 */  beqz       $v0, .L8003D910
/* 2E07C 8003D87C 8000023C */   lui       $v0, (0x800040 >> 16)
/* 2E080 8003D880 40004234 */  ori        $v0, $v0, (0x800040 & 0xFFFF)
/* 2E084 8003D884 2418E200 */  and        $v1, $a3, $v0
/* 2E088 8003D888 21006214 */  bne        $v1, $v0, .L8003D910
/* 2E08C 8003D88C 00000000 */   nop
/* 2E090 8003D890 C00B828F */  lw         $v0, %gp_rel(SLIDE_ADD_VALUE)($gp)
/* 2E094 8003D894 3000038E */  lw         $v1, 0x30($s0)
/* 2E098 8003D898 2110C200 */  addu       $v0, $a2, $v0
/* 2E09C 8003D89C 03004104 */  bgez       $v0, .L8003D8AC
/* 2E0A0 8003D8A0 18006200 */   mult      $v1, $v0
/* 2E0A4 8003D8A4 21100000 */  addu       $v0, $zero, $zero
/* 2E0A8 8003D8A8 18006200 */  mult       $v1, $v0
.L8003D8AC:
/* 2E0AC 8003D8AC 12100000 */  mflo       $v0
/* 2E0B0 8003D8B0 080C838F */  lw         $v1, %gp_rel(TWEAK_FRICTION_DIV)($gp)
/* 2E0B4 8003D8B4 00000000 */  nop
/* 2E0B8 8003D8B8 1A004300 */  div        $zero, $v0, $v1
/* 2E0BC 8003D8BC 12100000 */  mflo       $v0
/* 2E0C0 8003D8C0 02006014 */  bnez       $v1, .L8003D8CC
/* 2E0C4 8003D8C4 00000000 */   nop
/* 2E0C8 8003D8C8 CD010000 */  break      0, 7
.L8003D8CC:
/* 2E0CC 8003D8CC 300002AE */  sw         $v0, 0x30($s0)
/* 2E0D0 8003D8D0 3800028E */  lw         $v0, 0x38($s0)
/* 2E0D4 8003D8D4 0200C104 */  bgez       $a2, .L8003D8E0
/* 2E0D8 8003D8D8 2120C000 */   addu      $a0, $a2, $zero
/* 2E0DC 8003D8DC 21200000 */  addu       $a0, $zero, $zero
.L8003D8E0:
/* 2E0E0 8003D8E0 18004400 */  mult       $v0, $a0
/* 2E0E4 8003D8E4 12100000 */  mflo       $v0
/* 2E0E8 8003D8E8 00000000 */  nop
/* 2E0EC 8003D8EC 00000000 */  nop
/* 2E0F0 8003D8F0 1A004300 */  div        $zero, $v0, $v1
/* 2E0F4 8003D8F4 12100000 */  mflo       $v0
/* 2E0F8 8003D8F8 02006014 */  bnez       $v1, .L8003D904
/* 2E0FC 8003D8FC 00000000 */   nop
/* 2E100 8003D900 CD010000 */  break      0, 7
.L8003D904:
/* 2E104 8003D904 380002AE */  sw         $v0, 0x38($s0)
/* 2E108 8003D908 8CF60008 */  j          .L8003DA30
/* 2E10C 8003D90C 01001124 */   addiu     $s1, $zero, 0x1
.L8003D910:
/* 2E110 8003D910 C40B858F */  lw         $a1, %gp_rel(SLIDE_DEC_VALUE)($gp)
/* 2E114 8003D914 3000038E */  lw         $v1, 0x30($s0)
/* 2E118 8003D918 2110C500 */  addu       $v0, $a2, $a1
/* 2E11C 8003D91C 03004104 */  bgez       $v0, .L8003D92C
/* 2E120 8003D920 18006200 */   mult      $v1, $v0
/* 2E124 8003D924 21100000 */  addu       $v0, $zero, $zero
/* 2E128 8003D928 18006200 */  mult       $v1, $v0
.L8003D92C:
/* 2E12C 8003D92C 12100000 */  mflo       $v0
/* 2E130 8003D930 080C848F */  lw         $a0, %gp_rel(TWEAK_FRICTION_DIV)($gp)
/* 2E134 8003D934 00000000 */  nop
/* 2E138 8003D938 1A004400 */  div        $zero, $v0, $a0
/* 2E13C 8003D93C 12100000 */  mflo       $v0
/* 2E140 8003D940 02008014 */  bnez       $a0, .L8003D94C
/* 2E144 8003D944 00000000 */   nop
/* 2E148 8003D948 CD010000 */  break      0, 7
.L8003D94C:
/* 2E14C 8003D94C 2118C500 */  addu       $v1, $a2, $a1
/* 2E150 8003D950 300002AE */  sw         $v0, 0x30($s0)
/* 2E154 8003D954 3800028E */  lw         $v0, 0x38($s0)
/* 2E158 8003D958 2C006104 */  bgez       $v1, .L8003DA0C
/* 2E15C 8003D95C 18004300 */   mult      $v0, $v1
/* 2E160 8003D960 21180000 */  addu       $v1, $zero, $zero
/* 2E164 8003D964 83F60008 */  j          .L8003DA0C
/* 2E168 8003D968 18004300 */   mult      $v0, $v1
.L8003D96C:
/* 2E16C 8003D96C C80B858F */  lw         $a1, %gp_rel(NORMAL_DEC_VALUE)($gp)
/* 2E170 8003D970 3000038E */  lw         $v1, 0x30($s0)
/* 2E174 8003D974 2110C500 */  addu       $v0, $a2, $a1
/* 2E178 8003D978 03004104 */  bgez       $v0, .L8003D988
/* 2E17C 8003D97C 18006200 */   mult      $v1, $v0
/* 2E180 8003D980 21100000 */  addu       $v0, $zero, $zero
/* 2E184 8003D984 18006200 */  mult       $v1, $v0
.L8003D988:
/* 2E188 8003D988 12100000 */  mflo       $v0
/* 2E18C 8003D98C 080C848F */  lw         $a0, %gp_rel(TWEAK_FRICTION_DIV)($gp)
/* 2E190 8003D990 00000000 */  nop
/* 2E194 8003D994 1A004400 */  div        $zero, $v0, $a0
/* 2E198 8003D998 12100000 */  mflo       $v0
/* 2E19C 8003D99C 02008014 */  bnez       $a0, .L8003D9A8
/* 2E1A0 8003D9A0 00000000 */   nop
/* 2E1A4 8003D9A4 CD010000 */  break      0, 7
.L8003D9A8:
/* 2E1A8 8003D9A8 2118C500 */  addu       $v1, $a2, $a1
/* 2E1AC 8003D9AC 300002AE */  sw         $v0, 0x30($s0)
/* 2E1B0 8003D9B0 3800028E */  lw         $v0, 0x38($s0)
/* 2E1B4 8003D9B4 15006104 */  bgez       $v1, .L8003DA0C
/* 2E1B8 8003D9B8 18004300 */   mult      $v0, $v1
/* 2E1BC 8003D9BC 21180000 */  addu       $v1, $zero, $zero
/* 2E1C0 8003D9C0 83F60008 */  j          .L8003DA0C
/* 2E1C4 8003D9C4 18004300 */   mult      $v0, $v1
.L8003D9C8:
/* 2E1C8 8003D9C8 0200C104 */  bgez       $a2, .L8003D9D4
/* 2E1CC 8003D9CC 2110C000 */   addu      $v0, $a2, $zero
/* 2E1D0 8003D9D0 21100000 */  addu       $v0, $zero, $zero
.L8003D9D4:
/* 2E1D4 8003D9D4 18006200 */  mult       $v1, $v0
/* 2E1D8 8003D9D8 12100000 */  mflo       $v0
/* 2E1DC 8003D9DC 080C848F */  lw         $a0, %gp_rel(TWEAK_FRICTION_DIV)($gp)
/* 2E1E0 8003D9E0 00000000 */  nop
/* 2E1E4 8003D9E4 1A004400 */  div        $zero, $v0, $a0
/* 2E1E8 8003D9E8 12100000 */  mflo       $v0
/* 2E1EC 8003D9EC 02008014 */  bnez       $a0, .L8003D9F8
/* 2E1F0 8003D9F0 00000000 */   nop
/* 2E1F4 8003D9F4 CD010000 */  break      0, 7
.L8003D9F8:
/* 2E1F8 8003D9F8 2118C000 */  addu       $v1, $a2, $zero
/* 2E1FC 8003D9FC 02006104 */  bgez       $v1, .L8003DA08
/* 2E200 8003DA00 300002AE */   sw        $v0, 0x30($s0)
/* 2E204 8003DA04 21180000 */  addu       $v1, $zero, $zero
.L8003DA08:
/* 2E208 8003DA08 1800A300 */  mult       $a1, $v1
.L8003DA0C:
/* 2E20C 8003DA0C 12100000 */  mflo       $v0
/* 2E210 8003DA10 00000000 */  nop
/* 2E214 8003DA14 00000000 */  nop
/* 2E218 8003DA18 1A004400 */  div        $zero, $v0, $a0
/* 2E21C 8003DA1C 12100000 */  mflo       $v0
/* 2E220 8003DA20 02008014 */  bnez       $a0, .L8003DA2C
/* 2E224 8003DA24 00000000 */   nop
/* 2E228 8003DA28 CD010000 */  break      0, 7
.L8003DA2C:
/* 2E22C 8003DA2C 380002AE */  sw         $v0, 0x38($s0)
.L8003DA30:
/* 2E230 8003DA30 21102002 */  addu       $v0, $s1, $zero
.L8003DA34:
/* 2E234 8003DA34 1800BF8F */  lw         $ra, 0x18($sp)
/* 2E238 8003DA38 1400B18F */  lw         $s1, 0x14($sp)
/* 2E23C 8003DA3C 1000B08F */  lw         $s0, 0x10($sp)
/* 2E240 8003DA40 0800E003 */  jr         $ra
/* 2E244 8003DA44 2000BD27 */   addiu     $sp, $sp, 0x20
.size CheckGravity, . - CheckGravity
