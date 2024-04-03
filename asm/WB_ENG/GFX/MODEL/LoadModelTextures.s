.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LoadModelTextures
/* 3C204 8004BA04 A0FFBD27 */  addiu      $sp, $sp, -0x60
/* 3C208 8004BA08 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 3C20C 8004BA0C 5000B6AF */  sw         $s6, 0x50($sp)
/* 3C210 8004BA10 21B00000 */  addu       $s6, $zero, $zero
/* 3C214 8004BA14 3800B0AF */  sw         $s0, 0x38($sp)
/* 3C218 8004BA18 21808000 */  addu       $s0, $a0, $zero
/* 3C21C 8004BA1C 5C00BFAF */  sw         $ra, 0x5C($sp)
/* 3C220 8004BA20 5800BEAF */  sw         $fp, 0x58($sp)
/* 3C224 8004BA24 5400B7AF */  sw         $s7, 0x54($sp)
/* 3C228 8004BA28 4C00B5AF */  sw         $s5, 0x4C($sp)
/* 3C22C 8004BA2C 4800B4AF */  sw         $s4, 0x48($sp)
/* 3C230 8004BA30 4400B3AF */  sw         $s3, 0x44($sp)
/* 3C234 8004BA34 4000B2AF */  sw         $s2, 0x40($sp)
/* 3C238 8004BA38 3C00B1AF */  sw         $s1, 0x3C($sp)
/* 3C23C 8004BA3C 4C1580AF */  sw         $zero, %gp_rel(ModelNumPalettes)($gp)
/* 3C240 8004BA40 2000A2AF */  sw         $v0, 0x20($sp)
/* 3C244 8004BA44 2800A0AF */  sw         $zero, 0x28($sp)
/* 3C248 8004BA48 2400A0AF */  sw         $zero, 0x24($sp)
/* 3C24C 8004BA4C B35C010C */  jal        GetSizeOfFile
/* 3C250 8004BA50 6400A5AF */   sw        $a1, 0x64($sp)
/* 3C254 8004BA54 2B3F010C */  jal        new_malloc
/* 3C258 8004BA58 21204000 */   addu      $a0, $v0, $zero
/* 3C25C 8004BA5C 21F04000 */  addu       $fp, $v0, $zero
/* 3C260 8004BA60 9500C013 */  beqz       $fp, .L8004BCB8
/* 3C264 8004BA64 00000000 */   nop
/* 3C268 8004BA68 21200002 */  addu       $a0, $s0, $zero
/* 3C26C 8004BA6C 6400A38F */  lw         $v1, 0x64($sp)
/* 3C270 8004BA70 00000000 */  nop
/* 3C274 8004BA74 1C00728C */  lw         $s2, 0x1C($v1)
/* 3C278 8004BA78 495C010C */  jal        LoadFile
/* 3C27C 8004BA7C 2128C003 */   addu      $a1, $fp, $zero
/* 3C280 8004BA80 6400A48F */  lw         $a0, 0x64($sp)
/* 3C284 8004BA84 00000000 */  nop
/* 3C288 8004BA88 0A008394 */  lhu        $v1, 0xA($a0)
/* 3C28C 8004BA8C 00000000 */  nop
/* 3C290 8004BA90 87006010 */  beqz       $v1, .L8004BCB0
/* 3C294 8004BA94 21A80000 */   addu      $s5, $zero, $zero
/* 3C298 8004BA98 82101600 */  srl        $v0, $s6, 2
.L8004BA9C:
/* 3C29C 8004BA9C 80100200 */  sll        $v0, $v0, 2
/* 3C2A0 8004BAA0 040E838F */  lw         $v1, %gp_rel(TPageAlign)($gp)
/* 3C2A4 8004BAA4 00000000 */  nop
/* 3C2A8 8004BAA8 07006010 */  beqz       $v1, .L8004BAC8
/* 3C2AC 8004BAAC 2180C203 */   addu      $s0, $fp, $v0
/* 3C2B0 8004BAB0 21200002 */  addu       $a0, $s0, $zero
/* 3C2B4 8004BAB4 40000524 */  addiu      $a1, $zero, 0x40
/* 3C2B8 8004BAB8 3D5F010C */  jal        TextureToVRAMTPageAlign
/* 3C2BC 8004BABC 21300000 */   addu      $a2, $zero, $zero
/* 3C2C0 8004BAC0 B52E0108 */  j          .L8004BAD4
/* 3C2C4 8004BAC4 21984000 */   addu      $s3, $v0, $zero
.L8004BAC8:
/* 3C2C8 8004BAC8 0E5F010C */  jal        TextureToVRAM
/* 3C2CC 8004BACC 21200002 */   addu      $a0, $s0, $zero
/* 3C2D0 8004BAD0 21984000 */  addu       $s3, $v0, $zero
.L8004BAD4:
/* 3C2D4 8004BAD4 0C80143C */  lui        $s4, %hi(VRAMItems)
/* 3C2D8 8004BAD8 0800D126 */  addiu      $s1, $s6, 0x8
/* 3C2DC 8004BADC 80B81300 */  sll        $s7, $s3, 2
/* 3C2E0 8004BAE0 0C004526 */  addiu      $a1, $s2, 0xC
/* 3C2E4 8004BAE4 3000A5AF */  sw         $a1, 0x30($sp)
/* 3C2E8 8004BAE8 02000296 */  lhu        $v0, 0x2($s0)
/* 3C2EC 8004BAEC 2000A38F */  lw         $v1, 0x20($sp)
/* 3C2F0 8004BAF0 0100A626 */  addiu      $a2, $s5, 0x1
/* 3C2F4 8004BAF4 441593AF */  sw         $s3, %gp_rel(Global_VramIndex)($gp)
/* 3C2F8 8004BAF8 2A006210 */  beq        $v1, $v0, .L8004BBA4
/* 3C2FC 8004BAFC 2C00A6AF */   sw        $a2, 0x2C($sp)
/* 3C300 8004BB00 2000A2AF */  sw         $v0, 0x20($sp)
/* 3C304 8004BB04 08000326 */  addiu      $v1, $s0, 0x8
/* 3C308 8004BB08 21286000 */  addu       $a1, $v1, $zero
/* 3C30C 8004BB0C 00800624 */  addiu      $a2, $zero, -0x8000
/* 3C310 8004BB10 FF000424 */  addiu      $a0, $zero, 0xFF
.L8004BB14:
/* 3C314 8004BB14 00006294 */  lhu        $v0, 0x0($v1)
/* 3C318 8004BB18 FFFF8424 */  addiu      $a0, $a0, -0x1
/* 3C31C 8004BB1C 25104600 */  or         $v0, $v0, $a2
/* 3C320 8004BB20 000062A4 */  sh         $v0, 0x0($v1)
/* 3C324 8004BB24 FBFF8104 */  bgez       $a0, .L8004BB14
/* 3C328 8004BB28 02006324 */   addiu     $v1, $v1, 0x2
/* 3C32C 8004BB2C 2118A000 */  addu       $v1, $a1, $zero
/* 3C330 8004BB30 007C0624 */  addiu      $a2, $zero, 0x7C00
/* 3C334 8004BB34 00FC0534 */  ori        $a1, $zero, 0xFC00
/* 3C338 8004BB38 FF000424 */  addiu      $a0, $zero, 0xFF
.L8004BB3C:
/* 3C33C 8004BB3C 00006294 */  lhu        $v0, 0x0($v1)
/* 3C340 8004BB40 00000000 */  nop
/* 3C344 8004BB44 02004014 */  bnez       $v0, .L8004BB50
/* 3C348 8004BB48 00000000 */   nop
/* 3C34C 8004BB4C 01000224 */  addiu      $v0, $zero, 0x1
.L8004BB50:
/* 3C350 8004BB50 03004610 */  beq        $v0, $a2, .L8004BB60
/* 3C354 8004BB54 00000000 */   nop
/* 3C358 8004BB58 02004514 */  bne        $v0, $a1, .L8004BB64
/* 3C35C 8004BB5C 00000000 */   nop
.L8004BB60:
/* 3C360 8004BB60 21100000 */  addu       $v0, $zero, $zero
.L8004BB64:
/* 3C364 8004BB64 000062A4 */  sh         $v0, 0x0($v1)
/* 3C368 8004BB68 FFFF8424 */  addiu      $a0, $a0, -0x1
/* 3C36C 8004BB6C F3FF8104 */  bgez       $a0, .L8004BB3C
/* 3C370 8004BB70 02006324 */   addiu     $v1, $v1, 0x2
/* 3C374 8004BB74 4C15828F */  lw         $v0, %gp_rel(ModelNumPalettes)($gp)
/* 3C378 8004BB78 00000000 */  nop
/* 3C37C 8004BB7C 01004224 */  addiu      $v0, $v0, 0x1
/* 3C380 8004BB80 4C1582AF */  sw         $v0, %gp_rel(ModelNumPalettes)($gp)
/* 3C384 8004BB84 F75E010C */  jal        PaletteToVRAM
/* 3C388 8004BB88 21200002 */   addu      $a0, $s0, $zero
/* 3C38C 8004BB8C 0980043C */  lui        $a0, %hi(TheClutRow)
/* 3C390 8004BB90 96598494 */  lhu        $a0, %lo(TheClutRow)($a0)
/* 3C394 8004BB94 FFFF4230 */  andi       $v0, $v0, 0xFFFF
/* 3C398 8004BB98 2800A2AF */  sw         $v0, 0x28($sp)
/* 3C39C 8004BB9C 481582AF */  sw         $v0, %gp_rel(Global_Clut)($gp)
/* 3C3A0 8004BBA0 2400A4AF */  sw         $a0, 0x24($sp)
.L8004BBA4:
/* 3C3A4 8004BBA4 2400A58F */  lw         $a1, 0x24($sp)
/* 3C3A8 8004BBA8 00000000 */  nop
/* 3C3AC 8004BBAC 020045A6 */  sh         $a1, 0x2($s2)
/* 3C3B0 8004BBB0 00000292 */  lbu        $v0, 0x0($s0)
/* 3C3B4 8004BBB4 00000000 */  nop
/* 3C3B8 8004BBB8 05004014 */  bnez       $v0, .L8004BBD0
/* 3C3BC 8004BBBC 00023626 */   addiu     $s6, $s1, 0x200
/* 3C3C0 8004BBC0 04000296 */  lhu        $v0, 0x4($s0)
/* 3C3C4 8004BBC4 06000396 */  lhu        $v1, 0x6($s0)
/* 3C3C8 8004BBC8 F62E0108 */  j          .L8004BBD8
/* 3C3CC 8004BBCC 42100200 */   srl       $v0, $v0, 1
.L8004BBD0:
/* 3C3D0 8004BBD0 04000296 */  lhu        $v0, 0x4($s0)
/* 3C3D4 8004BBD4 06000396 */  lhu        $v1, 0x6($s0)
.L8004BBD8:
/* 3C3D8 8004BBD8 00000000 */  nop
/* 3C3DC 8004BBDC 18004300 */  mult       $v0, $v1
/* 3C3E0 8004BBE0 12100000 */  mflo       $v0
/* 3C3E4 8004BBE4 21B0C202 */  addu       $s6, $s6, $v0
/* 3C3E8 8004BBE8 38AD9426 */  addiu      $s4, $s4, %lo(VRAMItems)
/* 3C3EC 8004BBEC 2110F302 */  addu       $v0, $s7, $s3
/* 3C3F0 8004BBF0 80880200 */  sll        $s1, $v0, 2
/* 3C3F4 8004BBF4 21183402 */  addu       $v1, $s1, $s4
/* 3C3F8 8004BBF8 03006288 */  lwl        $v0, 0x3($v1)
/* 3C3FC 8004BBFC 00006298 */  lwr        $v0, 0x0($v1)
/* 3C400 8004BC00 07006488 */  lwl        $a0, 0x7($v1)
/* 3C404 8004BC04 04006498 */  lwr        $a0, 0x4($v1)
/* 3C408 8004BC08 1B00A2AB */  swl        $v0, 0x1B($sp)
/* 3C40C 8004BC0C 1800A2BB */  swr        $v0, 0x18($sp)
/* 3C410 8004BC10 1F00A4AB */  swl        $a0, 0x1F($sp)
/* 3C414 8004BC14 1C00A4BB */  swr        $a0, 0x1C($sp)
/* 3C418 8004BC18 0E006290 */  lbu        $v0, 0xE($v1)
/* 3C41C 8004BC1C 0F006490 */  lbu        $a0, 0xF($v1)
/* 3C420 8004BC20 1800A597 */  lhu        $a1, 0x18($sp)
/* 3C424 8004BC24 541582AF */  sw         $v0, %gp_rel(TESTU)($gp)
/* 3C428 8004BC28 581584AF */  sw         $a0, %gp_rel(TESTV)($gp)
/* 3C42C 8004BC2C 040045A6 */  sh         $a1, 0x4($s2)
/* 3C430 8004BC30 1A00A297 */  lhu        $v0, 0x1A($sp)
/* 3C434 8004BC34 00000000 */  nop
/* 3C438 8004BC38 060042A6 */  sh         $v0, 0x6($s2)
/* 3C43C 8004BC3C 1C00A397 */  lhu        $v1, 0x1C($sp)
/* 3C440 8004BC40 6400A48F */  lw         $a0, 0x64($sp)
/* 3C444 8004BC44 080043A6 */  sh         $v1, 0x8($s2)
/* 3C448 8004BC48 1E00A697 */  lhu        $a2, 0x1E($sp)
/* 3C44C 8004BC4C 21286002 */  addu       $a1, $s3, $zero
/* 3C450 8004BC50 000053A6 */  sh         $s3, 0x0($s2)
/* 3C454 8004BC54 0A0046A6 */  sh         $a2, 0xA($s2)
/* 3C458 8004BC58 01000292 */  lbu        $v0, 0x1($s0)
/* 3C45C 8004BC5C 2800A78F */  lw         $a3, 0x28($sp)
/* 3C460 8004BC60 2130A002 */  addu       $a2, $s5, $zero
/* 3C464 8004BC64 3E2D010C */  jal        AssignTexturesToObj
/* 3C468 8004BC68 1000A2AF */   sw        $v0, 0x10($sp)
/* 3C46C 8004BC6C 0600A016 */  bnez       $s5, .L8004BC88
/* 3C470 8004BC70 21109102 */   addu      $v0, $s4, $s1
/* 3C474 8004BC74 08004394 */  lhu        $v1, 0x8($v0)
/* 3C478 8004BC78 00000000 */  nop
/* 3C47C 8004BC7C FC0D83AF */  sw         $v1, %gp_rel(Global_TPage1)($gp)
/* 3C480 8004BC80 252F0108 */  j          .L8004BC94
/* 3C484 8004BC84 00000000 */   nop
.L8004BC88:
/* 3C488 8004BC88 08004394 */  lhu        $v1, 0x8($v0)
/* 3C48C 8004BC8C 00000000 */  nop
/* 3C490 8004BC90 000E83AF */  sw         $v1, %gp_rel(Global_TPage2)($gp)
.L8004BC94:
/* 3C494 8004BC94 6400A38F */  lw         $v1, 0x64($sp)
/* 3C498 8004BC98 2C00B58F */  lw         $s5, 0x2C($sp)
/* 3C49C 8004BC9C 0A006294 */  lhu        $v0, 0xA($v1)
/* 3C4A0 8004BCA0 3000B28F */  lw         $s2, 0x30($sp)
/* 3C4A4 8004BCA4 2A10A202 */  slt        $v0, $s5, $v0
/* 3C4A8 8004BCA8 7CFF4014 */  bnez       $v0, .L8004BA9C
/* 3C4AC 8004BCAC 82101600 */   srl       $v0, $s6, 2
.L8004BCB0:
/* 3C4B0 8004BCB0 1C40010C */  jal        new_free
/* 3C4B4 8004BCB4 2120C003 */   addu      $a0, $fp, $zero
.L8004BCB8:
/* 3C4B8 8004BCB8 5C00BF8F */  lw         $ra, 0x5C($sp)
/* 3C4BC 8004BCBC 5800BE8F */  lw         $fp, 0x58($sp)
/* 3C4C0 8004BCC0 5400B78F */  lw         $s7, 0x54($sp)
/* 3C4C4 8004BCC4 5000B68F */  lw         $s6, 0x50($sp)
/* 3C4C8 8004BCC8 4C00B58F */  lw         $s5, 0x4C($sp)
/* 3C4CC 8004BCCC 4800B48F */  lw         $s4, 0x48($sp)
/* 3C4D0 8004BCD0 4400B38F */  lw         $s3, 0x44($sp)
/* 3C4D4 8004BCD4 4000B28F */  lw         $s2, 0x40($sp)
/* 3C4D8 8004BCD8 3C00B18F */  lw         $s1, 0x3C($sp)
/* 3C4DC 8004BCDC 3800B08F */  lw         $s0, 0x38($sp)
/* 3C4E0 8004BCE0 21100000 */  addu       $v0, $zero, $zero
/* 3C4E4 8004BCE4 0800E003 */  jr         $ra
/* 3C4E8 8004BCE8 6000BD27 */   addiu     $sp, $sp, 0x60
.size LoadModelTextures, . - LoadModelTextures
