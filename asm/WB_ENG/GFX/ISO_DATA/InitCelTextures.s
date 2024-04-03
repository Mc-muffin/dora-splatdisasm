.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitCelTextures
/* 3DC00 8004D400 A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 3DC04 8004D404 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 3DC08 8004D408 2000A2AF */  sw         $v0, 0x20($sp)
/* 3DC0C 8004D40C 0880023C */  lui        $v0, %hi(TestWorld)
/* 3DC10 8004D410 8C654624 */  addiu      $a2, $v0, %lo(TestWorld)
/* 3DC14 8004D414 5400BFAF */  sw         $ra, 0x54($sp)
/* 3DC18 8004D418 5000BEAF */  sw         $fp, 0x50($sp)
/* 3DC1C 8004D41C 4C00B7AF */  sw         $s7, 0x4C($sp)
/* 3DC20 8004D420 4800B6AF */  sw         $s6, 0x48($sp)
/* 3DC24 8004D424 4400B5AF */  sw         $s5, 0x44($sp)
/* 3DC28 8004D428 4000B4AF */  sw         $s4, 0x40($sp)
/* 3DC2C 8004D42C 3C00B3AF */  sw         $s3, 0x3C($sp)
/* 3DC30 8004D430 3800B2AF */  sw         $s2, 0x38($sp)
/* 3DC34 8004D434 3400B1AF */  sw         $s1, 0x34($sp)
/* 3DC38 8004D438 3000B0AF */  sw         $s0, 0x30($sp)
/* 3DC3C 8004D43C 2800A0AF */  sw         $zero, 0x28($sp)
/* 3DC40 8004D440 2400A0AF */  sw         $zero, 0x24($sp)
/* 3DC44 8004D444 1800C38C */  lw         $v1, 0x18($a2)
/* 3DC48 8004D448 00000000 */  nop
/* 3DC4C 8004D44C 0000628C */  lw         $v0, 0x0($v1)
/* 3DC50 8004D450 21A00000 */  addu       $s4, $zero, $zero
/* 3DC54 8004D454 2C00538C */  lw         $s3, 0x2C($v0)
/* 3DC58 8004D458 21B80000 */  addu       $s7, $zero, $zero
/* 3DC5C 8004D45C 5C00A5AF */  sw         $a1, 0x5C($sp)
/* 3DC60 8004D460 0400A22C */  sltiu      $v0, $a1, 0x4
/* 3DC64 8004D464 81004014 */  bnez       $v0, .L8004D66C
/* 3DC68 8004D468 5800A4AF */   sw        $a0, 0x58($sp)
.L8004D46C:
/* 3DC6C 8004D46C 82101400 */  srl        $v0, $s4, 2
/* 3DC70 8004D470 80100200 */  sll        $v0, $v0, 2
/* 3DC74 8004D474 5800A38F */  lw         $v1, 0x58($sp)
/* 3DC78 8004D478 08009226 */  addiu      $s2, $s4, 0x8
/* 3DC7C 8004D47C 21886200 */  addu       $s1, $v1, $v0
/* 3DC80 8004D480 00002392 */  lbu        $v1, 0x0($s1)
/* 3DC84 8004D484 0100FE26 */  addiu      $fp, $s7, 0x1
/* 3DC88 8004D488 0F006230 */  andi       $v0, $v1, 0xF
/* 3DC8C 8004D48C 000022A2 */  sb         $v0, 0x0($s1)
/* 3DC90 8004D490 02002296 */  lhu        $v0, 0x2($s1)
/* 3DC94 8004D494 2000A48F */  lw         $a0, 0x20($sp)
/* 3DC98 8004D498 00000000 */  nop
/* 3DC9C 8004D49C 24008210 */  beq        $a0, $v0, .L8004D530
/* 3DCA0 8004D4A0 80007530 */   andi      $s5, $v1, 0x80
/* 3DCA4 8004D4A4 2000A2AF */  sw         $v0, 0x20($sp)
/* 3DCA8 8004D4A8 08002326 */  addiu      $v1, $s1, 0x8
/* 3DCAC 8004D4AC 21206000 */  addu       $a0, $v1, $zero
/* 3DCB0 8004D4B0 00800524 */  addiu      $a1, $zero, -0x8000
/* 3DCB4 8004D4B4 FF001024 */  addiu      $s0, $zero, 0xFF
.L8004D4B8:
/* 3DCB8 8004D4B8 00006294 */  lhu        $v0, 0x0($v1)
/* 3DCBC 8004D4BC FFFF1026 */  addiu      $s0, $s0, -0x1
/* 3DCC0 8004D4C0 25104500 */  or         $v0, $v0, $a1
/* 3DCC4 8004D4C4 000062A4 */  sh         $v0, 0x0($v1)
/* 3DCC8 8004D4C8 FBFF0106 */  bgez       $s0, .L8004D4B8
/* 3DCCC 8004D4CC 02006324 */   addiu     $v1, $v1, 0x2
/* 3DCD0 8004D4D0 21188000 */  addu       $v1, $a0, $zero
/* 3DCD4 8004D4D4 007C0524 */  addiu      $a1, $zero, 0x7C00
/* 3DCD8 8004D4D8 00FC0434 */  ori        $a0, $zero, 0xFC00
/* 3DCDC 8004D4DC FF001024 */  addiu      $s0, $zero, 0xFF
.L8004D4E0:
/* 3DCE0 8004D4E0 00006294 */  lhu        $v0, 0x0($v1)
/* 3DCE4 8004D4E4 00000000 */  nop
/* 3DCE8 8004D4E8 02004014 */  bnez       $v0, .L8004D4F4
/* 3DCEC 8004D4EC 00000000 */   nop
/* 3DCF0 8004D4F0 01000224 */  addiu      $v0, $zero, 0x1
.L8004D4F4:
/* 3DCF4 8004D4F4 03004510 */  beq        $v0, $a1, .L8004D504
/* 3DCF8 8004D4F8 00000000 */   nop
/* 3DCFC 8004D4FC 02004414 */  bne        $v0, $a0, .L8004D508
/* 3DD00 8004D500 00000000 */   nop
.L8004D504:
/* 3DD04 8004D504 21100000 */  addu       $v0, $zero, $zero
.L8004D508:
/* 3DD08 8004D508 000062A4 */  sh         $v0, 0x0($v1)
/* 3DD0C 8004D50C FFFF1026 */  addiu      $s0, $s0, -0x1
/* 3DD10 8004D510 F3FF0106 */  bgez       $s0, .L8004D4E0
/* 3DD14 8004D514 02006324 */   addiu     $v1, $v1, 0x2
/* 3DD18 8004D518 F75E010C */  jal        PaletteToVRAM
/* 3DD1C 8004D51C 21202002 */   addu      $a0, $s1, $zero
/* 3DD20 8004D520 0980053C */  lui        $a1, %hi(TheClutRow)
/* 3DD24 8004D524 9659A594 */  lhu        $a1, %lo(TheClutRow)($a1)
/* 3DD28 8004D528 2800A2AF */  sw         $v0, 0x28($sp)
/* 3DD2C 8004D52C 2400A5AF */  sw         $a1, 0x24($sp)
.L8004D530:
/* 3DD30 8004D530 2400A68F */  lw         $a2, 0x24($sp)
/* 3DD34 8004D534 00000000 */  nop
/* 3DD38 8004D538 020066A6 */  sh         $a2, 0x2($s3)
/* 3DD3C 8004D53C 00002292 */  lbu        $v0, 0x0($s1)
/* 3DD40 8004D540 00000000 */  nop
/* 3DD44 8004D544 05004014 */  bnez       $v0, .L8004D55C
/* 3DD48 8004D548 00025426 */   addiu     $s4, $s2, 0x200
/* 3DD4C 8004D54C 04002296 */  lhu        $v0, 0x4($s1)
/* 3DD50 8004D550 06002396 */  lhu        $v1, 0x6($s1)
/* 3DD54 8004D554 59350108 */  j          .L8004D564
/* 3DD58 8004D558 42100200 */   srl       $v0, $v0, 1
.L8004D55C:
/* 3DD5C 8004D55C 04002296 */  lhu        $v0, 0x4($s1)
/* 3DD60 8004D560 06002396 */  lhu        $v1, 0x6($s1)
.L8004D564:
/* 3DD64 8004D564 00000000 */  nop
/* 3DD68 8004D568 18004300 */  mult       $v0, $v1
/* 3DD6C 8004D56C 12100000 */  mflo       $v0
/* 3DD70 8004D570 21A08202 */  addu       $s4, $s4, $v0
/* 3DD74 8004D574 5C00A28F */  lw         $v0, 0x5C($sp)
/* 3DD78 8004D578 3900A016 */  bnez       $s5, .L8004D660
/* 3DD7C 8004D57C 23B05400 */   subu      $s6, $v0, $s4
/* 3DD80 8004D580 0E5F010C */  jal        TextureToVRAM
/* 3DD84 8004D584 21202002 */   addu      $a0, $s1, $zero
/* 3DD88 8004D588 21904000 */  addu       $s2, $v0, $zero
/* 3DD8C 8004D58C 80101200 */  sll        $v0, $s2, 2
/* 3DD90 8004D590 21105200 */  addu       $v0, $v0, $s2
/* 3DD94 8004D594 80100200 */  sll        $v0, $v0, 2
/* 3DD98 8004D598 0C80033C */  lui        $v1, %hi(VRAMItems)
/* 3DD9C 8004D59C 38AD6324 */  addiu      $v1, $v1, %lo(VRAMItems)
/* 3DDA0 8004D5A0 21104300 */  addu       $v0, $v0, $v1
/* 3DDA4 8004D5A4 03004488 */  lwl        $a0, 0x3($v0)
/* 3DDA8 8004D5A8 00004498 */  lwr        $a0, 0x0($v0)
/* 3DDAC 8004D5AC 07004588 */  lwl        $a1, 0x7($v0)
/* 3DDB0 8004D5B0 04004598 */  lwr        $a1, 0x4($v0)
/* 3DDB4 8004D5B4 1B00A4AB */  swl        $a0, 0x1B($sp)
/* 3DDB8 8004D5B8 1800A4BB */  swr        $a0, 0x18($sp)
/* 3DDBC 8004D5BC 1F00A5AB */  swl        $a1, 0x1F($sp)
/* 3DDC0 8004D5C0 1C00A5BB */  swr        $a1, 0x1C($sp)
/* 3DDC4 8004D5C4 1800A397 */  lhu        $v1, 0x18($sp)
/* 3DDC8 8004D5C8 00000000 */  nop
/* 3DDCC 8004D5CC 040063A6 */  sh         $v1, 0x4($s3)
/* 3DDD0 8004D5D0 1A00A297 */  lhu        $v0, 0x1A($sp)
/* 3DDD4 8004D5D4 00000000 */  nop
/* 3DDD8 8004D5D8 060062A6 */  sh         $v0, 0x6($s3)
/* 3DDDC 8004D5DC 1C00A397 */  lhu        $v1, 0x1C($sp)
/* 3DDE0 8004D5E0 00000000 */  nop
/* 3DDE4 8004D5E4 080063A6 */  sh         $v1, 0x8($s3)
/* 3DDE8 8004D5E8 1E00A497 */  lhu        $a0, 0x1E($sp)
/* 3DDEC 8004D5EC 21800000 */  addu       $s0, $zero, $zero
/* 3DDF0 8004D5F0 000072A6 */  sh         $s2, 0x0($s3)
/* 3DDF4 8004D5F4 0A0064A6 */  sh         $a0, 0xA($s3)
/* 3DDF8 8004D5F8 0880043C */  lui        $a0, %hi(TestWorld)
/* 3DDFC 8004D5FC 8C658424 */  addiu      $a0, $a0, %lo(TestWorld)
/* 3DE00 8004D600 0C00828C */  lw         $v0, 0xC($a0)
/* 3DE04 8004D604 00000000 */  nop
/* 3DE08 8004D608 14004018 */  blez       $v0, .L8004D65C
/* 3DE0C 8004D60C 0C007526 */   addiu     $s5, $s3, 0xC
/* 3DE10 8004D610 0880023C */  lui        $v0, %hi(TestWorld)
/* 3DE14 8004D614 8C655324 */  addiu      $s3, $v0, %lo(TestWorld)
.L8004D618:
/* 3DE18 8004D618 1800638E */  lw         $v1, 0x18($s3)
/* 3DE1C 8004D61C 80101000 */  sll        $v0, $s0, 2
/* 3DE20 8004D620 21104300 */  addu       $v0, $v0, $v1
/* 3DE24 8004D624 0000448C */  lw         $a0, 0x0($v0)
/* 3DE28 8004D628 00000000 */  nop
/* 3DE2C 8004D62C 06008010 */  beqz       $a0, .L8004D648
/* 3DE30 8004D630 21284002 */   addu      $a1, $s2, $zero
/* 3DE34 8004D634 01002292 */  lbu        $v0, 0x1($s1)
/* 3DE38 8004D638 2800A78F */  lw         $a3, 0x28($sp)
/* 3DE3C 8004D63C 2130E002 */  addu       $a2, $s7, $zero
/* 3DE40 8004D640 C133010C */  jal        AssignTexturesToCel
/* 3DE44 8004D644 1000A2AF */   sw        $v0, 0x10($sp)
.L8004D648:
/* 3DE48 8004D648 0C00628E */  lw         $v0, 0xC($s3)
/* 3DE4C 8004D64C 01001026 */  addiu      $s0, $s0, 0x1
/* 3DE50 8004D650 2A100202 */  slt        $v0, $s0, $v0
/* 3DE54 8004D654 F0FF4014 */  bnez       $v0, .L8004D618
/* 3DE58 8004D658 00000000 */   nop
.L8004D65C:
/* 3DE5C 8004D65C 2198A002 */  addu       $s3, $s5, $zero
.L8004D660:
/* 3DE60 8004D660 0400C22E */  sltiu      $v0, $s6, 0x4
/* 3DE64 8004D664 81FF4010 */  beqz       $v0, .L8004D46C
/* 3DE68 8004D668 21B8C003 */   addu      $s7, $fp, $zero
.L8004D66C:
/* 3DE6C 8004D66C 5400BF8F */  lw         $ra, 0x54($sp)
/* 3DE70 8004D670 5000BE8F */  lw         $fp, 0x50($sp)
/* 3DE74 8004D674 4C00B78F */  lw         $s7, 0x4C($sp)
/* 3DE78 8004D678 4800B68F */  lw         $s6, 0x48($sp)
/* 3DE7C 8004D67C 4400B58F */  lw         $s5, 0x44($sp)
/* 3DE80 8004D680 4000B48F */  lw         $s4, 0x40($sp)
/* 3DE84 8004D684 3C00B38F */  lw         $s3, 0x3C($sp)
/* 3DE88 8004D688 3800B28F */  lw         $s2, 0x38($sp)
/* 3DE8C 8004D68C 3400B18F */  lw         $s1, 0x34($sp)
/* 3DE90 8004D690 3000B08F */  lw         $s0, 0x30($sp)
/* 3DE94 8004D694 0800E003 */  jr         $ra
/* 3DE98 8004D698 5800BD27 */   addiu     $sp, $sp, 0x58
.size InitCelTextures, . - InitCelTextures
