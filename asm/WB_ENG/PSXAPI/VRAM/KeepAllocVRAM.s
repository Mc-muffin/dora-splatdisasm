.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel KeepAllocVRAM
/* 4D3D4 8005CBD4 00240400 */  sll        $a0, $a0, 16
/* 4D3D8 8005CBD8 03240400 */  sra        $a0, $a0, 16
/* 4D3DC 8005CBDC 0C80033C */  lui        $v1, %hi(VRAMItems)
/* 4D3E0 8005CBE0 38AD6324 */  addiu      $v1, $v1, %lo(VRAMItems)
/* 4D3E4 8005CBE4 80100400 */  sll        $v0, $a0, 2
/* 4D3E8 8005CBE8 21104400 */  addu       $v0, $v0, $a0
/* 4D3EC 8005CBEC 80100200 */  sll        $v0, $v0, 2
/* 4D3F0 8005CBF0 21104300 */  addu       $v0, $v0, $v1
/* 4D3F4 8005CBF4 0A004790 */  lbu        $a3, 0xA($v0)
/* 4D3F8 8005CBF8 0C004490 */  lbu        $a0, 0xC($v0)
/* 4D3FC 8005CBFC 0D004D90 */  lbu        $t5, 0xD($v0)
/* 4D400 8005CC00 0B004C90 */  lbu        $t4, 0xB($v0)
/* 4D404 8005CC04 01000324 */  addiu      $v1, $zero, 0x1
/* 4D408 8005CC08 100043A0 */  sb         $v1, 0x10($v0)
/* 4D40C 8005CC0C 2120E400 */  addu       $a0, $a3, $a0
/* 4D410 8005CC10 2A18E400 */  slt        $v1, $a3, $a0
/* 4D414 8005CC14 18006010 */  beqz       $v1, .L8005CC78
/* 4D418 8005CC18 21588000 */   addu      $t3, $a0, $zero
/* 4D41C 8005CC1C 18178A8F */  lw         $t2, %gp_rel(XCnt)($gp)
/* 4D420 8005CC20 0C80023C */  lui        $v0, %hi(VRAMGrid)
/* 4D424 8005CC24 38974E24 */  addiu      $t6, $v0, %lo(VRAMGrid)
/* 4D428 8005CC28 21208001 */  addu       $a0, $t4, $zero
.L8005CC2C:
/* 4D42C 8005CC2C 21288D00 */  addu       $a1, $a0, $t5
/* 4D430 8005CC30 2A108500 */  slt        $v0, $a0, $a1
/* 4D434 8005CC34 0C004010 */  beqz       $v0, .L8005CC68
/* 4D438 8005CC38 0100E924 */   addiu     $t1, $a3, 0x1
/* 4D43C 8005CC3C 21304001 */  addu       $a2, $t2, $zero
/* 4D440 8005CC40 18008600 */  mult       $a0, $a2
/* 4D444 8005CC44 01000824 */  addiu      $t0, $zero, 0x1
/* 4D448 8005CC48 2320A400 */  subu       $a0, $a1, $a0
/* 4D44C 8005CC4C 2110EE00 */  addu       $v0, $a3, $t6
/* 4D450 8005CC50 12180000 */  mflo       $v1
/* 4D454 8005CC54 21106200 */  addu       $v0, $v1, $v0
.L8005CC58:
/* 4D458 8005CC58 000048A0 */  sb         $t0, 0x0($v0)
/* 4D45C 8005CC5C FFFF8424 */  addiu      $a0, $a0, -0x1
/* 4D460 8005CC60 FDFF8014 */  bnez       $a0, .L8005CC58
/* 4D464 8005CC64 21104600 */   addu      $v0, $v0, $a2
.L8005CC68:
/* 4D468 8005CC68 21382001 */  addu       $a3, $t1, $zero
/* 4D46C 8005CC6C 2A10EB00 */  slt        $v0, $a3, $t3
/* 4D470 8005CC70 EEFF4014 */  bnez       $v0, .L8005CC2C
/* 4D474 8005CC74 21208001 */   addu      $a0, $t4, $zero
.L8005CC78:
/* 4D478 8005CC78 0800E003 */  jr         $ra
/* 4D47C 8005CC7C 00000000 */   nop
.size KeepAllocVRAM, . - KeepAllocVRAM
