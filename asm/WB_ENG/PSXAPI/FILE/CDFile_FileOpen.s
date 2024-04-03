.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CDFile_FileOpen
/* 47354 80056B54 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 47358 80056B58 2800B0AF */  sw         $s0, 0x28($sp)
/* 4735C 80056B5C 21808000 */  addu       $s0, $a0, $zero
/* 47360 80056B60 3000B2AF */  sw         $s2, 0x30($sp)
/* 47364 80056B64 1000B227 */  addiu      $s2, $sp, 0x10
/* 47368 80056B68 3800BFAF */  sw         $ra, 0x38($sp)
/* 4736C 80056B6C 3400B3AF */  sw         $s3, 0x34($sp)
/* 47370 80056B70 A3C2010C */  jal        strlen
/* 47374 80056B74 2C00B1AF */   sw        $s1, 0x2C($sp)
/* 47378 80056B78 21204000 */  addu       $a0, $v0, $zero
/* 4737C 80056B7C 21100402 */  addu       $v0, $s0, $a0
/* 47380 80056B80 00004590 */  lbu        $a1, 0x0($v0)
/* 47384 80056B84 5C000324 */  addiu      $v1, $zero, 0x5C
/* 47388 80056B88 1400A310 */  beq        $a1, $v1, .L80056BDC
/* 4738C 80056B8C 0B80133C */   lui       $s3, %hi(gCdOpenInfo)
/* 47390 80056B90 2F000224 */  addiu      $v0, $zero, 0x2F
/* 47394 80056B94 1600A210 */  beq        $a1, $v0, .L80056BF0
/* 47398 80056B98 00000000 */   nop
/* 4739C 80056B9C 0D008018 */  blez       $a0, .L80056BD4
/* 473A0 80056BA0 5C000524 */   addiu     $a1, $zero, 0x5C
/* 473A4 80056BA4 2F000324 */  addiu      $v1, $zero, 0x2F
/* 473A8 80056BA8 FFFF8424 */  addiu      $a0, $a0, -0x1
.L80056BAC:
/* 473AC 80056BAC 21100402 */  addu       $v0, $s0, $a0
/* 473B0 80056BB0 00004290 */  lbu        $v0, 0x0($v0)
/* 473B4 80056BB4 00000000 */  nop
/* 473B8 80056BB8 06004510 */  beq        $v0, $a1, .L80056BD4
/* 473BC 80056BBC 00000000 */   nop
/* 473C0 80056BC0 0B004310 */  beq        $v0, $v1, .L80056BF0
/* 473C4 80056BC4 00000000 */   nop
/* 473C8 80056BC8 F8FF801C */  bgtz       $a0, .L80056BAC
/* 473CC 80056BCC FFFF8424 */   addiu     $a0, $a0, -0x1
/* 473D0 80056BD0 01008424 */  addiu      $a0, $a0, 0x1
.L80056BD4:
/* 473D4 80056BD4 21100402 */  addu       $v0, $s0, $a0
/* 473D8 80056BD8 00004590 */  lbu        $a1, 0x0($v0)
.L80056BDC:
/* 473DC 80056BDC 2F000324 */  addiu      $v1, $zero, 0x2F
/* 473E0 80056BE0 0300A310 */  beq        $a1, $v1, .L80056BF0
/* 473E4 80056BE4 5C000224 */   addiu     $v0, $zero, 0x5C
/* 473E8 80056BE8 0200A214 */  bne        $a1, $v0, .L80056BF4
/* 473EC 80056BEC 00000000 */   nop
.L80056BF0:
/* 473F0 80056BF0 01008424 */  addiu      $a0, $a0, 0x1
.L80056BF4:
/* 473F4 80056BF4 21200402 */  addu       $a0, $s0, $a0
/* 473F8 80056BF8 00008290 */  lbu        $v0, 0x0($a0)
/* 473FC 80056BFC 00000000 */  nop
/* 47400 80056C00 0A004010 */  beqz       $v0, .L80056C2C
/* 47404 80056C04 21880000 */   addu      $s1, $zero, $zero
/* 47408 80056C08 21808000 */  addu       $s0, $a0, $zero
.L80056C0C:
/* 4740C 80056C0C 00000492 */  lbu        $a0, 0x0($s0)
/* 47410 80056C10 8FC7010C */  jal        toupper
/* 47414 80056C14 01001026 */   addiu     $s0, $s0, 0x1
/* 47418 80056C18 21185102 */  addu       $v1, $s2, $s1
/* 4741C 80056C1C 00000492 */  lbu        $a0, 0x0($s0)
/* 47420 80056C20 01003126 */  addiu      $s1, $s1, 0x1
/* 47424 80056C24 F9FF8014 */  bnez       $a0, .L80056C0C
/* 47428 80056C28 000062A0 */   sb        $v0, 0x0($v1)
.L80056C2C:
/* 4742C 80056C2C 0980053C */  lui        $a1, %hi(gCDCallback)
/* 47430 80056C30 21185102 */  addu       $v1, $s2, $s1
/* 47434 80056C34 3B000224 */  addiu      $v0, $zero, 0x3B
/* 47438 80056C38 21203202 */  addu       $a0, $s1, $s2
/* 4743C 80056C3C 000062A0 */  sb         $v0, 0x0($v1)
/* 47440 80056C40 31000224 */  addiu      $v0, $zero, 0x31
/* 47444 80056C44 21188000 */  addu       $v1, $a0, $zero
/* 47448 80056C48 010082A0 */  sb         $v0, 0x1($a0)
/* 4744C 80056C4C 020060A0 */  sb         $zero, 0x2($v1)
.L80056C50:
/* 47450 80056C50 5C82A28C */  lw         $v0, %lo(gCDCallback)($a1)
/* 47454 80056C54 00000000 */  nop
/* 47458 80056C58 FDFF4014 */  bnez       $v0, .L80056C50
/* 4745C 80056C5C 00000000 */   nop
/* 47460 80056C60 90AA7026 */  addiu      $s0, $s3, %lo(gCdOpenInfo)
/* 47464 80056C64 21200002 */  addu       $a0, $s0, $zero
/* 47468 80056C68 0957010C */  jal        CDFile_CdSearchFile
/* 4746C 80056C6C 1000A527 */   addiu     $a1, $sp, 0x10
/* 47470 80056C70 0A004004 */  bltz       $v0, .L80056C9C
/* 47474 80056C74 0B80053C */   lui       $a1, %hi(gCDFileInfo)
/* 47478 80056C78 78AAA324 */  addiu      $v1, $a1, %lo(gCDFileInfo)
/* 4747C 80056C7C 040062AC */  sw         $v0, 0x4($v1)
/* 47480 80056C80 100062AC */  sw         $v0, 0x10($v1)
/* 47484 80056C84 0400048E */  lw         $a0, 0x4($s0)
/* 47488 80056C88 01000224 */  addiu      $v0, $zero, 0x1
/* 4748C 80056C8C 78AAA2AC */  sw         $v0, %lo(gCDFileInfo)($a1)
/* 47490 80056C90 21108000 */  addu       $v0, $a0, $zero
/* 47494 80056C94 285B0108 */  j          .L80056CA0
/* 47498 80056C98 080064AC */   sw        $a0, 0x8($v1)
.L80056C9C:
/* 4749C 80056C9C FFFF0224 */  addiu      $v0, $zero, -0x1
.L80056CA0:
/* 474A0 80056CA0 3800BF8F */  lw         $ra, 0x38($sp)
/* 474A4 80056CA4 3400B38F */  lw         $s3, 0x34($sp)
/* 474A8 80056CA8 3000B28F */  lw         $s2, 0x30($sp)
/* 474AC 80056CAC 2C00B18F */  lw         $s1, 0x2C($sp)
/* 474B0 80056CB0 2800B08F */  lw         $s0, 0x28($sp)
/* 474B4 80056CB4 0800E003 */  jr         $ra
/* 474B8 80056CB8 4000BD27 */   addiu     $sp, $sp, 0x40
.size CDFile_FileOpen, . - CDFile_FileOpen
