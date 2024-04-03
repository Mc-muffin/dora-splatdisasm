.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel FillinCellAnimIndex
/* 2FBE4 8003F3E4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 2FBE8 8003F3E8 C414828F */  lw         $v0, %gp_rel(gnumpressuretriggers)($gp)
/* 2FBEC 8003F3EC 21200000 */  addu       $a0, $zero, $zero
/* 2FBF0 8003F3F0 2400BFAF */  sw         $ra, 0x24($sp)
/* 2FBF4 8003F3F4 2000B2AF */  sw         $s2, 0x20($sp)
/* 2FBF8 8003F3F8 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 2FBFC 8003F3FC 4E004018 */  blez       $v0, .L8003F538
/* 2FC00 8003F400 1800B0AF */   sw        $s0, 0x18($sp)
/* 2FC04 8003F404 00110400 */  sll        $v0, $a0, 4
.L8003F408:
/* 2FC08 8003F408 21104400 */  addu       $v0, $v0, $a0
/* 2FC0C 8003F40C C014838F */  lw         $v1, %gp_rel(PressureTrigger)($gp)
/* 2FC10 8003F410 C0100200 */  sll        $v0, $v0, 3
/* 2FC14 8003F414 21886200 */  addu       $s1, $v1, $v0
/* 2FC18 8003F418 6800308E */  lw         $s0, 0x68($s1)
/* 2FC1C 8003F41C 00000000 */  nop
/* 2FC20 8003F420 40000012 */  beqz       $s0, .L8003F524
/* 2FC24 8003F424 01009224 */   addiu     $s2, $a0, 0x1
.L8003F428:
/* 2FC28 8003F428 0000048E */  lw         $a0, 0x0($s0)
/* 2FC2C 8003F42C 2D95010C */  jal        LookupCelAnimbyTrigger
/* 2FC30 8003F430 00000000 */   nop
/* 2FC34 8003F434 06004004 */  bltz       $v0, .L8003F450
/* 2FC38 8003F438 040002AE */   sw        $v0, 0x4($s0)
/* 2FC3C 8003F43C 21204000 */  addu       $a0, $v0, $zero
/* 2FC40 8003F440 DB94010C */  jal        GetSoundCellAnimation
/* 2FC44 8003F444 1000A527 */   addiu     $a1, $sp, 0x10
/* 2FC48 8003F448 15FD0008 */  j          .L8003F454
/* 2FC4C 8003F44C 00000000 */   nop
.L8003F450:
/* 2FC50 8003F450 21100000 */  addu       $v0, $zero, $zero
.L8003F454:
/* 2FC54 8003F454 02004004 */  bltz       $v0, .L8003F460
/* 2FC58 8003F458 00000000 */   nop
/* 2FC5C 8003F45C 800022AE */  sw         $v0, 0x80($s1)
.L8003F460:
/* 2FC60 8003F460 3800238E */  lw         $v1, 0x38($s1)
/* 2FC64 8003F464 05000224 */  addiu      $v0, $zero, 0x5
/* 2FC68 8003F468 1E006214 */  bne        $v1, $v0, .L8003F4E4
/* 2FC6C 8003F46C 00000000 */   nop
/* 2FC70 8003F470 0000228E */  lw         $v0, 0x0($s1)
/* 2FC74 8003F474 00000000 */  nop
/* 2FC78 8003F478 0800438C */  lw         $v1, 0x8($v0)
/* 2FC7C 8003F47C 00000000 */  nop
/* 2FC80 8003F480 0000648C */  lw         $a0, 0x0($v1)
/* 2FC84 8003F484 0400658C */  lw         $a1, 0x4($v1)
/* 2FC88 8003F488 0800668C */  lw         $a2, 0x8($v1)
/* 2FC8C 8003F48C C3210400 */  sra        $a0, $a0, 7
/* 2FC90 8003F490 C3290500 */  sra        $a1, $a1, 7
/* 2FC94 8003F494 0100A524 */  addiu      $a1, $a1, 0x1
/* 2FC98 8003F498 1694010C */  jal        GetCelIndex
/* 2FC9C 8003F49C C3310600 */   sra       $a2, $a2, 7
/* 2FCA0 8003F4A0 FF034230 */  andi       $v0, $v0, 0x3FF
/* 2FCA4 8003F4A4 80180200 */  sll        $v1, $v0, 2
/* 2FCA8 8003F4A8 21186200 */  addu       $v1, $v1, $v0
/* 2FCAC 8003F4AC 0980043C */  lui        $a0, %hi(CellAttributesPtr)
/* 2FCB0 8003F4B0 6C50848C */  lw         $a0, %lo(CellAttributesPtr)($a0)
/* 2FCB4 8003F4B4 C0180300 */  sll        $v1, $v1, 3
/* 2FCB8 8003F4B8 21208300 */  addu       $a0, $a0, $v1
/* 2FCBC 8003F4BC 1C008284 */  lh         $v0, 0x1C($a0)
/* 2FCC0 8003F4C0 00000000 */  nop
/* 2FCC4 8003F4C4 740022AE */  sw         $v0, 0x74($s1)
/* 2FCC8 8003F4C8 1E008584 */  lh         $a1, 0x1E($a0)
/* 2FCCC 8003F4CC 0100033C */  lui        $v1, (0x1E000 >> 16)
/* 2FCD0 8003F4D0 780025AE */  sw         $a1, 0x78($s1)
/* 2FCD4 8003F4D4 0800828C */  lw         $v0, 0x8($a0)
/* 2FCD8 8003F4D8 00E06334 */  ori        $v1, $v1, (0x1E000 & 0xFFFF)
/* 2FCDC 8003F4DC 24104300 */  and        $v0, $v0, $v1
/* 2FCE0 8003F4E0 7C0022AE */  sw         $v0, 0x7C($s1)
.L8003F4E4:
/* 2FCE4 8003F4E4 0800028E */  lw         $v0, 0x8($s0)
/* 2FCE8 8003F4E8 00000000 */  nop
/* 2FCEC 8003F4EC 01004230 */  andi       $v0, $v0, 0x1
/* 2FCF0 8003F4F0 02004010 */  beqz       $v0, .L8003F4FC
/* 2FCF4 8003F4F4 00000000 */   nop
/* 2FCF8 8003F4F8 6C0030AE */  sw         $s0, 0x6C($s1)
.L8003F4FC:
/* 2FCFC 8003F4FC 0800028E */  lw         $v0, 0x8($s0)
/* 2FD00 8003F500 00000000 */  nop
/* 2FD04 8003F504 02004230 */  andi       $v0, $v0, 0x2
/* 2FD08 8003F508 02004010 */  beqz       $v0, .L8003F514
/* 2FD0C 8003F50C 00000000 */   nop
/* 2FD10 8003F510 700030AE */  sw         $s0, 0x70($s1)
.L8003F514:
/* 2FD14 8003F514 0C00108E */  lw         $s0, 0xC($s0)
/* 2FD18 8003F518 00000000 */  nop
/* 2FD1C 8003F51C C2FF0016 */  bnez       $s0, .L8003F428
/* 2FD20 8003F520 00000000 */   nop
.L8003F524:
/* 2FD24 8003F524 C414828F */  lw         $v0, %gp_rel(gnumpressuretriggers)($gp)
/* 2FD28 8003F528 21204002 */  addu       $a0, $s2, $zero
/* 2FD2C 8003F52C 2A108200 */  slt        $v0, $a0, $v0
/* 2FD30 8003F530 B5FF4014 */  bnez       $v0, .L8003F408
/* 2FD34 8003F534 00110400 */   sll       $v0, $a0, 4
.L8003F538:
/* 2FD38 8003F538 2400BF8F */  lw         $ra, 0x24($sp)
/* 2FD3C 8003F53C 2000B28F */  lw         $s2, 0x20($sp)
/* 2FD40 8003F540 1C00B18F */  lw         $s1, 0x1C($sp)
/* 2FD44 8003F544 1800B08F */  lw         $s0, 0x18($sp)
/* 2FD48 8003F548 0800E003 */  jr         $ra
/* 2FD4C 8003F54C 2800BD27 */   addiu     $sp, $sp, 0x28
.size FillinCellAnimIndex, . - FillinCellAnimIndex
