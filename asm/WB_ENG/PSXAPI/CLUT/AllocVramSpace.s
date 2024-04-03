.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AllocVramSpace
/* 4D744 8005CF44 0C80023C */  lui        $v0, %hi(VRAMItems)
/* 4D748 8005CF48 38AD4224 */  addiu      $v0, $v0, %lo(VRAMItems)
/* 4D74C 8005CF4C 90014824 */  addiu      $t0, $v0, 0x190
/* 4D750 8005CF50 01000324 */  addiu      $v1, $zero, 0x1
/* 4D754 8005CF54 0200C104 */  bgez       $a2, .L8005CF60
/* 4D758 8005CF58 100003A1 */   sb        $v1, 0x10($t0)
/* 4D75C 8005CF5C 0700C624 */  addiu      $a2, $a2, 0x7
.L8005CF60:
/* 4D760 8005CF60 C3100600 */  sra        $v0, $a2, 3
/* 4D764 8005CF64 0C0002A1 */  sb         $v0, 0xC($t0)
/* 4D768 8005CF68 0200E104 */  bgez       $a3, .L8005CF74
/* 4D76C 8005CF6C FF004630 */   andi      $a2, $v0, 0xFF
/* 4D770 8005CF70 0700E724 */  addiu      $a3, $a3, 0x7
.L8005CF74:
/* 4D774 8005CF74 C3100700 */  sra        $v0, $a3, 3
/* 4D778 8005CF78 0D0002A1 */  sb         $v0, 0xD($t0)
/* 4D77C 8005CF7C 21188000 */  addu       $v1, $a0, $zero
/* 4D780 8005CF80 02008104 */  bgez       $a0, .L8005CF8C
/* 4D784 8005CF84 FF004730 */   andi      $a3, $v0, 0xFF
/* 4D788 8005CF88 07008324 */  addiu      $v1, $a0, 0x7
.L8005CF8C:
/* 4D78C 8005CF8C C3100300 */  sra        $v0, $v1, 3
/* 4D790 8005CF90 0A0002A1 */  sb         $v0, 0xA($t0)
/* 4D794 8005CF94 0200A104 */  bgez       $a1, .L8005CFA0
/* 4D798 8005CF98 2110A000 */   addu      $v0, $a1, $zero
/* 4D79C 8005CF9C 0700A224 */  addiu      $v0, $a1, 0x7
.L8005CFA0:
/* 4D7A0 8005CFA0 0A000991 */  lbu        $t1, 0xA($t0)
/* 4D7A4 8005CFA4 C3100200 */  sra        $v0, $v0, 3
/* 4D7A8 8005CFA8 0B0002A1 */  sb         $v0, 0xB($t0)
/* 4D7AC 8005CFAC 21302601 */  addu       $a2, $t1, $a2
/* 4D7B0 8005CFB0 2A102601 */  slt        $v0, $t1, $a2
/* 4D7B4 8005CFB4 1E004010 */  beqz       $v0, .L8005D030
/* 4D7B8 8005CFB8 0C80023C */   lui       $v0, %hi(VRAMGrid)
/* 4D7BC 8005CFBC 0980033C */  lui        $v1, %hi(XCnt)
/* 4D7C0 8005CFC0 7C59638C */  lw         $v1, %lo(XCnt)($v1)
/* 4D7C4 8005CFC4 00000000 */  nop
/* 4D7C8 8005CFC8 1800A300 */  mult       $a1, $v1
/* 4D7CC 8005CFCC 38974D24 */  addiu      $t5, $v0, %lo(VRAMGrid)
/* 4D7D0 8005CFD0 21600001 */  addu       $t4, $t0, $zero
/* 4D7D4 8005CFD4 21288001 */  addu       $a1, $t4, $zero
/* 4D7D8 8005CFD8 12180000 */  mflo       $v1
/* 4D7DC 8005CFDC 21188300 */  addu       $v1, $a0, $v1
.L8005CFE0:
/* 4D7E0 8005CFE0 0B008891 */  lbu        $t0, 0xB($t4)
/* 4D7E4 8005CFE4 00000000 */  nop
/* 4D7E8 8005CFE8 21100701 */  addu       $v0, $t0, $a3
/* 4D7EC 8005CFEC 2A100201 */  slt        $v0, $t0, $v0
/* 4D7F0 8005CFF0 0B004010 */  beqz       $v0, .L8005D020
/* 4D7F4 8005CFF4 01002A25 */   addiu     $t2, $t1, 0x1
/* 4D7F8 8005CFF8 21486D00 */  addu       $t1, $v1, $t5
/* 4D7FC 8005CFFC 0B00A290 */  lbu        $v0, 0xB($a1)
/* 4D800 8005D000 01000B24 */  addiu      $t3, $zero, 0x1
/* 4D804 8005D004 21104700 */  addu       $v0, $v0, $a3
/* 4D808 8005D008 23404800 */  subu       $t0, $v0, $t0
/* 4D80C 8005D00C FFFF0825 */  addiu      $t0, $t0, -0x1
.L8005D010:
/* 4D810 8005D010 FFFF0015 */  bnez       $t0, .L8005D010
/* 4D814 8005D014 FFFF0825 */   addiu     $t0, $t0, -0x1
/* 4D818 8005D018 01000825 */  addiu      $t0, $t0, 0x1
/* 4D81C 8005D01C 00002BA1 */  sb         $t3, 0x0($t1)
.L8005D020:
/* 4D820 8005D020 21484001 */  addu       $t1, $t2, $zero
/* 4D824 8005D024 2A102601 */  slt        $v0, $t1, $a2
/* 4D828 8005D028 EDFF4014 */  bnez       $v0, .L8005CFE0
/* 4D82C 8005D02C 00000000 */   nop
.L8005D030:
/* 4D830 8005D030 0800E003 */  jr         $ra
/* 4D834 8005D034 00000000 */   nop
.size AllocVramSpace, . - AllocVramSpace
