.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckCollisionWall
/* 2D52C 8003CD2C 0880093C */  lui        $t1, %hi(TestWorld)
/* 2D530 8003CD30 8C652B8D */  lw         $t3, %lo(TestWorld)($t1)
/* 2D534 8003CD34 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 2D538 8003CD38 2C00B7AF */  sw         $s7, 0x2C($sp)
/* 2D53C 8003CD3C 21B8E000 */  addu       $s7, $a3, $zero
/* 2D540 8003CD40 2000B4AF */  sw         $s4, 0x20($sp)
/* 2D544 8003CD44 C3A11700 */  sra        $s4, $s7, 7
/* 2D548 8003CD48 18008B02 */  mult       $s4, $t3
/* 2D54C 8003CD4C 1000B0AF */  sw         $s0, 0x10($sp)
/* 2D550 8003CD50 12400000 */  mflo       $t0
/* 2D554 8003CD54 7F00D024 */  addiu      $s0, $a2, 0x7F
/* 2D558 8003CD58 C3191000 */  sra        $v1, $s0, 7
/* 2D55C 8003CD5C 18006B00 */  mult       $v1, $t3
/* 2D560 8003CD60 5000A28F */  lw         $v0, 0x50($sp)
/* 2D564 8003CD64 12500000 */  mflo       $t2
/* 2D568 8003CD68 2400B5AF */  sw         $s5, 0x24($sp)
/* 2D56C 8003CD6C C3A90200 */  sra        $s5, $v0, 7
/* 2D570 8003CD70 1800AB02 */  mult       $s5, $t3
/* 2D574 8003CD74 4C00A28F */  lw         $v0, 0x4C($sp)
/* 2D578 8003CD78 12300000 */  mflo       $a2
/* 2D57C 8003CD7C 7F004224 */  addiu      $v0, $v0, 0x7F
/* 2D580 8003CD80 C3110200 */  sra        $v0, $v0, 7
/* 2D584 8003CD84 18004B00 */  mult       $v0, $t3
/* 2D588 8003CD88 8C652925 */  addiu      $t1, $t1, %lo(TestWorld)
/* 2D58C 8003CD8C 3000BFAF */  sw         $ra, 0x30($sp)
/* 2D590 8003CD90 2800B6AF */  sw         $s6, 0x28($sp)
/* 2D594 8003CD94 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 2D598 8003CD98 1800B2AF */  sw         $s2, 0x18($sp)
/* 2D59C 8003CD9C 1400B1AF */  sw         $s1, 0x14($sp)
/* 2D5A0 8003CDA0 12100000 */  mflo       $v0
/* 2D5A4 8003CDA4 04002C8D */  lw         $t4, 0x4($t1)
/* 2D5A8 8003CDA8 00000000 */  nop
/* 2D5AC 8003CDAC 1800CC00 */  mult       $a2, $t4
/* 2D5B0 8003CDB0 21B0A000 */  addu       $s6, $a1, $zero
/* 2D5B4 8003CDB4 C3891600 */  sra        $s1, $s6, 7
/* 2D5B8 8003CDB8 1400298D */  lw         $t1, 0x14($t1)
/* 2D5BC 8003CDBC 4800A38F */  lw         $v1, 0x48($sp)
/* 2D5C0 8003CDC0 12300000 */  mflo       $a2
/* 2D5C4 8003CDC4 5800AF8F */  lw         $t7, 0x58($sp)
/* 2D5C8 8003CDC8 C3910300 */  sra        $s2, $v1, 7
/* 2D5CC 8003CDCC 18000C01 */  mult       $t0, $t4
/* 2D5D0 8003CDD0 40381200 */  sll        $a3, $s2, 1
/* 2D5D4 8003CDD4 7F00032A */  slti       $v1, $s0, 0x7F
/* 2D5D8 8003CDD8 40500A00 */  sll        $t2, $t2, 1
/* 2D5DC 8003CDDC 40100200 */  sll        $v0, $v0, 1
/* 2D5E0 8003CDE0 40300600 */  sll        $a2, $a2, 1
/* 2D5E4 8003CDE4 2130C900 */  addu       $a2, $a2, $t1
/* 2D5E8 8003CDE8 21104600 */  addu       $v0, $v0, $a2
/* 2D5EC 8003CDEC 2138E200 */  addu       $a3, $a3, $v0
/* 2D5F0 8003CDF0 40101100 */  sll        $v0, $s1, 1
/* 2D5F4 8003CDF4 0000ED84 */  lh         $t5, 0x0($a3)
/* 2D5F8 8003CDF8 5400A78F */  lw         $a3, 0x54($sp)
/* 2D5FC 8003CDFC 12400000 */  mflo       $t0
/* 2D600 8003CE00 40400800 */  sll        $t0, $t0, 1
/* 2D604 8003CE04 21400901 */  addu       $t0, $t0, $t1
/* 2D608 8003CE08 21504801 */  addu       $t2, $t2, $t0
/* 2D60C 8003CE0C 21104A00 */  addu       $v0, $v0, $t2
/* 2D610 8003CE10 00004A84 */  lh         $t2, 0x0($v0)
/* 2D614 8003CE14 03006010 */  beqz       $v1, .L8003CE24
/* 2D618 8003CE18 21708000 */   addu      $t6, $a0, $zero
/* 2D61C 8003CE1C 8BF30008 */  j          .L8003CE2C
/* 2D620 8003CE20 21180000 */   addu      $v1, $zero, $zero
.L8003CE24:
/* 2D624 8003CE24 81FF0226 */  addiu      $v0, $s0, -0x7F
/* 2D628 8003CE28 C3190200 */  sra        $v1, $v0, 7
.L8003CE2C:
/* 2D62C 8003CE2C 18008B02 */  mult       $s4, $t3
/* 2D630 8003CE30 12100000 */  mflo       $v0
/* 2D634 8003CE34 00000000 */  nop
/* 2D638 8003CE38 00000000 */  nop
/* 2D63C 8003CE3C 18006B00 */  mult       $v1, $t3
/* 2D640 8003CE40 12180000 */  mflo       $v1
/* 2D644 8003CE44 00000000 */  nop
/* 2D648 8003CE48 00000000 */  nop
/* 2D64C 8003CE4C 18004C00 */  mult       $v0, $t4
/* 2D650 8003CE50 40201100 */  sll        $a0, $s1, 1
/* 2D654 8003CE54 FF034631 */  andi       $a2, $t2, 0x3FF
/* 2D658 8003CE58 40180300 */  sll        $v1, $v1, 1
/* 2D65C 8003CE5C 12100000 */  mflo       $v0
/* 2D660 8003CE60 40100200 */  sll        $v0, $v0, 1
/* 2D664 8003CE64 21104900 */  addu       $v0, $v0, $t1
/* 2D668 8003CE68 21186200 */  addu       $v1, $v1, $v0
/* 2D66C 8003CE6C 21208300 */  addu       $a0, $a0, $v1
/* 2D670 8003CE70 00008584 */  lh         $a1, 0x0($a0)
/* 2D674 8003CE74 FF030224 */  addiu      $v0, $zero, 0x3FF
/* 2D678 8003CE78 1200C210 */  beq        $a2, $v0, .L8003CEC4
/* 2D67C 8003CE7C 80100600 */   sll       $v0, $a2, 2
/* 2D680 8003CE80 21104600 */  addu       $v0, $v0, $a2
/* 2D684 8003CE84 0980033C */  lui        $v1, %hi(CellAttributesPtr)
/* 2D688 8003CE88 6C50638C */  lw         $v1, %lo(CellAttributesPtr)($v1)
/* 2D68C 8003CE8C C0100200 */  sll        $v0, $v0, 3
/* 2D690 8003CE90 21186200 */  addu       $v1, $v1, $v0
/* 2D694 8003CE94 0800648C */  lw         $a0, 0x8($v1)
/* 2D698 8003CE98 0006023C */  lui        $v0, (0x6000000 >> 16)
/* 2D69C 8003CE9C 24208200 */  and        $a0, $a0, $v0
/* 2D6A0 8003CEA0 08008014 */  bnez       $a0, .L8003CEC4
/* 2D6A4 8003CEA4 00000000 */   nop
/* 2D6A8 8003CEA8 0300C011 */  beqz       $t6, .L8003CEB8
/* 2D6AC 8003CEAC 00104231 */   andi      $v0, $t2, 0x1000
/* 2D6B0 8003CEB0 C1004014 */  bnez       $v0, .L8003D1B8
/* 2D6B4 8003CEB4 01000224 */   addiu     $v0, $zero, 0x1
.L8003CEB8:
/* 2D6B8 8003CEB8 00084231 */  andi       $v0, $t2, 0x800
/* 2D6BC 8003CEBC BE004014 */  bnez       $v0, .L8003D1B8
/* 2D6C0 8003CEC0 01000224 */   addiu     $v0, $zero, 0x1
.L8003CEC4:
/* 2D6C4 8003CEC4 FF0B4331 */  andi       $v1, $t2, 0xBFF
/* 2D6C8 8003CEC8 FF0B0224 */  addiu      $v0, $zero, 0xBFF
/* 2D6CC 8003CECC BA006210 */  beq        $v1, $v0, .L8003D1B8
/* 2D6D0 8003CED0 01000224 */   addiu     $v0, $zero, 0x1
/* 2D6D4 8003CED4 0400C011 */  beqz       $t6, .L8003CEE8
/* 2D6D8 8003CED8 FF134331 */   andi      $v1, $t2, 0x13FF
/* 2D6DC 8003CEDC FF130224 */  addiu      $v0, $zero, 0x13FF
/* 2D6E0 8003CEE0 B5006210 */  beq        $v1, $v0, .L8003D1B8
/* 2D6E4 8003CEE4 01000224 */   addiu     $v0, $zero, 0x1
.L8003CEE8:
/* 2D6E8 8003CEE8 FF030224 */  addiu      $v0, $zero, 0x3FF
/* 2D6EC 8003CEEC 0300C214 */  bne        $a2, $v0, .L8003CEFC
/* 2D6F0 8003CEF0 80100600 */   sll       $v0, $a2, 2
/* 2D6F4 8003CEF4 C5F30008 */  j          .L8003CF14
/* 2D6F8 8003CEF8 21980000 */   addu      $s3, $zero, $zero
.L8003CEFC:
/* 2D6FC 8003CEFC 21104600 */  addu       $v0, $v0, $a2
/* 2D700 8003CF00 0980033C */  lui        $v1, %hi(CellAttributesPtr)
/* 2D704 8003CF04 6C50638C */  lw         $v1, %lo(CellAttributesPtr)($v1)
/* 2D708 8003CF08 C0100200 */  sll        $v0, $v0, 3
/* 2D70C 8003CF0C 21104300 */  addu       $v0, $v0, $v1
/* 2D710 8003CF10 0800538C */  lw         $s3, 0x8($v0)
.L8003CF14:
/* 2D714 8003CF14 FF03AD31 */  andi       $t5, $t5, 0x3FF
/* 2D718 8003CF18 FF030224 */  addiu      $v0, $zero, 0x3FF
/* 2D71C 8003CF1C 0300A215 */  bne        $t5, $v0, .L8003CF2C
/* 2D720 8003CF20 FF03A231 */   andi      $v0, $t5, 0x3FF
/* 2D724 8003CF24 D2F30008 */  j          .L8003CF48
/* 2D728 8003CF28 21400000 */   addu      $t0, $zero, $zero
.L8003CF2C:
/* 2D72C 8003CF2C 80180200 */  sll        $v1, $v0, 2
/* 2D730 8003CF30 21186200 */  addu       $v1, $v1, $v0
/* 2D734 8003CF34 0980043C */  lui        $a0, %hi(CellAttributesPtr)
/* 2D738 8003CF38 6C50848C */  lw         $a0, %lo(CellAttributesPtr)($a0)
/* 2D73C 8003CF3C C0180300 */  sll        $v1, $v1, 3
/* 2D740 8003CF40 21186400 */  addu       $v1, $v1, $a0
/* 2D744 8003CF44 0800688C */  lw         $t0, 0x8($v1)
.L8003CF48:
/* 2D748 8003CF48 FF03A530 */  andi       $a1, $a1, 0x3FF
/* 2D74C 8003CF4C FF030224 */  addiu      $v0, $zero, 0x3FF
/* 2D750 8003CF50 0300A214 */  bne        $a1, $v0, .L8003CF60
/* 2D754 8003CF54 FF03A230 */   andi      $v0, $a1, 0x3FF
/* 2D758 8003CF58 DFF30008 */  j          .L8003CF7C
/* 2D75C 8003CF5C 21180000 */   addu      $v1, $zero, $zero
.L8003CF60:
/* 2D760 8003CF60 80180200 */  sll        $v1, $v0, 2
/* 2D764 8003CF64 21186200 */  addu       $v1, $v1, $v0
/* 2D768 8003CF68 0980043C */  lui        $a0, %hi(CellAttributesPtr)
/* 2D76C 8003CF6C 6C50848C */  lw         $a0, %lo(CellAttributesPtr)($a0)
/* 2D770 8003CF70 C0180300 */  sll        $v1, $v1, 3
/* 2D774 8003CF74 21186400 */  addu       $v1, $v1, $a0
/* 2D778 8003CF78 0800638C */  lw         $v1, 0x8($v1)
.L8003CF7C:
/* 2D77C 8003CF7C 0200023C */  lui        $v0, (0x20000 >> 16)
/* 2D780 8003CF80 24106202 */  and        $v0, $s3, $v0
/* 2D784 8003CF84 8C004014 */  bnez       $v0, .L8003D1B8
/* 2D788 8003CF88 03000224 */   addiu     $v0, $zero, 0x3
/* 2D78C 8003CF8C 0001E431 */  andi       $a0, $t7, 0x100
/* 2D790 8003CF90 59008010 */  beqz       $a0, .L8003D0F8
/* 2D794 8003CF94 0A00E230 */   andi      $v0, $a3, 0xA
/* 2D798 8003CF98 5700E011 */  beqz       $t7, .L8003D0F8
/* 2D79C 8003CF9C 00000000 */   nop
/* 2D7A0 8003CFA0 2B004010 */  beqz       $v0, .L8003D050
/* 2D7A4 8003CFA4 0500E230 */   andi      $v0, $a3, 0x5
/* 2D7A8 8003CFA8 83003212 */  beq        $s1, $s2, .L8003D1B8
/* 2D7AC 8003CFAC 21100000 */   addu      $v0, $zero, $zero
/* 2D7B0 8003CFB0 2A103202 */  slt        $v0, $s1, $s2
/* 2D7B4 8003CFB4 05004010 */  beqz       $v0, .L8003CFCC
/* 2D7B8 8003CFB8 0200E230 */   andi      $v0, $a3, 0x2
/* 2D7BC 8003CFBC 03004010 */  beqz       $v0, .L8003CFCC
/* 2D7C0 8003CFC0 02006232 */   andi      $v0, $s3, 0x2
/* 2D7C4 8003CFC4 35004010 */  beqz       $v0, .L8003D09C
/* 2D7C8 8003CFC8 FF030224 */   addiu     $v0, $zero, 0x3FF
.L8003CFCC:
/* 2D7CC 8003CFCC 2A105102 */  slt        $v0, $s2, $s1
/* 2D7D0 8003CFD0 05004010 */  beqz       $v0, .L8003CFE8
/* 2D7D4 8003CFD4 0800E230 */   andi      $v0, $a3, 0x8
/* 2D7D8 8003CFD8 03004010 */  beqz       $v0, .L8003CFE8
/* 2D7DC 8003CFDC 08006232 */   andi      $v0, $s3, 0x8
/* 2D7E0 8003CFE0 2E004010 */  beqz       $v0, .L8003D09C
/* 2D7E4 8003CFE4 FF030224 */   addiu     $v0, $zero, 0x3FF
.L8003CFE8:
/* 2D7E8 8003CFE8 00016232 */  andi       $v0, $s3, 0x100
/* 2D7EC 8003CFEC 72004014 */  bnez       $v0, .L8003D1B8
/* 2D7F0 8003CFF0 21100000 */   addu      $v0, $zero, $zero
/* 2D7F4 8003CFF4 C0000231 */  andi       $v0, $t0, 0xC0
/* 2D7F8 8003CFF8 0E004010 */  beqz       $v0, .L8003D034
/* 2D7FC 8003CFFC 00016230 */   andi      $v0, $v1, 0x100
/* 2D800 8003D000 03004010 */  beqz       $v0, .L8003D010
/* 2D804 8003D004 FF030224 */   addiu     $v0, $zero, 0x3FF
/* 2D808 8003D008 6B00A214 */  bne        $a1, $v0, .L8003D1B8
/* 2D80C 8003D00C 21100000 */   addu      $v0, $zero, $zero
.L8003D010:
/* 2D810 8003D010 08008010 */  beqz       $a0, .L8003D034
/* 2D814 8003D014 FF030224 */   addiu     $v0, $zero, 0x3FF
/* 2D818 8003D018 0700A214 */  bne        $a1, $v0, .L8003D038
/* 2D81C 8003D01C 00000000 */   nop
/* 2D820 8003D020 0F006232 */  andi       $v0, $s3, 0xF
/* 2D824 8003D024 04004014 */  bnez       $v0, .L8003D038
/* 2D828 8003D028 FF030224 */   addiu     $v0, $zero, 0x3FF
.L8003D02C:
/* 2D82C 8003D02C 6EF40008 */  j          .L8003D1B8
/* 2D830 8003D030 21100000 */   addu      $v0, $zero, $zero
.L8003D034:
/* 2D834 8003D034 FF030224 */  addiu      $v0, $zero, 0x3FF
.L8003D038:
/* 2D838 8003D038 5F00C214 */  bne        $a2, $v0, .L8003D1B8
/* 2D83C 8003D03C 01000224 */   addiu     $v0, $zero, 0x1
/* 2D840 8003D040 5D00A611 */  beq        $t5, $a2, .L8003D1B8
/* 2D844 8003D044 21100000 */   addu      $v0, $zero, $zero
/* 2D848 8003D048 6EF40008 */  j          .L8003D1B8
/* 2D84C 8003D04C 01000224 */   addiu     $v0, $zero, 0x1
.L8003D050:
/* 2D850 8003D050 59004010 */  beqz       $v0, .L8003D1B8
/* 2D854 8003D054 01000224 */   addiu     $v0, $zero, 0x1
/* 2D858 8003D058 57009512 */  beq        $s4, $s5, .L8003D1B8
/* 2D85C 8003D05C 21100000 */   addu      $v0, $zero, $zero
/* 2D860 8003D060 2A109502 */  slt        $v0, $s4, $s5
/* 2D864 8003D064 05004010 */  beqz       $v0, .L8003D07C
/* 2D868 8003D068 0100E230 */   andi      $v0, $a3, 0x1
/* 2D86C 8003D06C 03004010 */  beqz       $v0, .L8003D07C
/* 2D870 8003D070 01006232 */   andi      $v0, $s3, 0x1
/* 2D874 8003D074 09004010 */  beqz       $v0, .L8003D09C
/* 2D878 8003D078 FF030224 */   addiu     $v0, $zero, 0x3FF
.L8003D07C:
/* 2D87C 8003D07C 2A10B402 */  slt        $v0, $s5, $s4
/* 2D880 8003D080 0A004010 */  beqz       $v0, .L8003D0AC
/* 2D884 8003D084 0400E230 */   andi      $v0, $a3, 0x4
/* 2D888 8003D088 08004010 */  beqz       $v0, .L8003D0AC
/* 2D88C 8003D08C 04006232 */   andi      $v0, $s3, 0x4
/* 2D890 8003D090 07004014 */  bnez       $v0, .L8003D0B0
/* 2D894 8003D094 00016232 */   andi      $v0, $s3, 0x100
/* 2D898 8003D098 FF030224 */  addiu      $v0, $zero, 0x3FF
.L8003D09C:
/* 2D89C 8003D09C E3FFA210 */  beq        $a1, $v0, .L8003D02C
/* 2D8A0 8003D0A0 00016230 */   andi      $v0, $v1, 0x100
/* 2D8A4 8003D0A4 6EF40008 */  j          .L8003D1B8
/* 2D8A8 8003D0A8 0100422C */   sltiu     $v0, $v0, 0x1
.L8003D0AC:
/* 2D8AC 8003D0AC 00016232 */  andi       $v0, $s3, 0x100
.L8003D0B0:
/* 2D8B0 8003D0B0 41004014 */  bnez       $v0, .L8003D1B8
/* 2D8B4 8003D0B4 21100000 */   addu      $v0, $zero, $zero
/* 2D8B8 8003D0B8 30000231 */  andi       $v0, $t0, 0x30
/* 2D8BC 8003D0BC 3D004010 */  beqz       $v0, .L8003D1B4
/* 2D8C0 8003D0C0 00016230 */   andi      $v0, $v1, 0x100
/* 2D8C4 8003D0C4 03004010 */  beqz       $v0, .L8003D0D4
/* 2D8C8 8003D0C8 FF030224 */   addiu     $v0, $zero, 0x3FF
/* 2D8CC 8003D0CC 3A00A214 */  bne        $a1, $v0, .L8003D1B8
/* 2D8D0 8003D0D0 21100000 */   addu      $v0, $zero, $zero
.L8003D0D4:
/* 2D8D4 8003D0D4 37008010 */  beqz       $a0, .L8003D1B4
/* 2D8D8 8003D0D8 FF030224 */   addiu     $v0, $zero, 0x3FF
/* 2D8DC 8003D0DC 3600A214 */  bne        $a1, $v0, .L8003D1B8
/* 2D8E0 8003D0E0 01000224 */   addiu     $v0, $zero, 0x1
/* 2D8E4 8003D0E4 0F006332 */  andi       $v1, $s3, 0xF
/* 2D8E8 8003D0E8 33006010 */  beqz       $v1, .L8003D1B8
/* 2D8EC 8003D0EC 21100000 */   addu      $v0, $zero, $zero
/* 2D8F0 8003D0F0 6EF40008 */  j          .L8003D1B8
/* 2D8F4 8003D0F4 01000224 */   addiu     $v0, $zero, 0x1
.L8003D0F8:
/* 2D8F8 8003D0F8 13004010 */  beqz       $v0, .L8003D148
/* 2D8FC 8003D0FC 81FF1026 */   addiu     $s0, $s0, -0x7F
/* 2D900 8003D100 2D003212 */  beq        $s1, $s2, .L8003D1B8
/* 2D904 8003D104 21100000 */   addu      $v0, $zero, $zero
/* 2D908 8003D108 2A103202 */  slt        $v0, $s1, $s2
/* 2D90C 8003D10C 09004010 */  beqz       $v0, .L8003D134
/* 2D910 8003D110 02006232 */   andi      $v0, $s3, 0x2
/* 2D914 8003D114 C5FF4010 */  beqz       $v0, .L8003D02C
/* 2D918 8003D118 2120C002 */   addu      $a0, $s6, $zero
/* 2D91C 8003D11C 21280002 */  addu       $a1, $s0, $zero
/* 2D920 8003D120 CDEF000C */  jal        GetHeight
/* 2D924 8003D124 2130E002 */   addu      $a2, $s7, $zero
/* 2D928 8003D128 2A100202 */  slt        $v0, $s0, $v0
/* 2D92C 8003D12C 22004014 */  bnez       $v0, .L8003D1B8
/* 2D930 8003D130 21100000 */   addu      $v0, $zero, $zero
.L8003D134:
/* 2D934 8003D134 2A105102 */  slt        $v0, $s2, $s1
/* 2D938 8003D138 1E004010 */  beqz       $v0, .L8003D1B4
/* 2D93C 8003D13C 08006232 */   andi      $v0, $s3, 0x8
/* 2D940 8003D140 65F40008 */  j          .L8003D194
/* 2D944 8003D144 00000000 */   nop
.L8003D148:
/* 2D948 8003D148 0500E230 */  andi       $v0, $a3, 0x5
/* 2D94C 8003D14C 1A004010 */  beqz       $v0, .L8003D1B8
/* 2D950 8003D150 01000224 */   addiu     $v0, $zero, 0x1
/* 2D954 8003D154 18009512 */  beq        $s4, $s5, .L8003D1B8
/* 2D958 8003D158 21100000 */   addu      $v0, $zero, $zero
/* 2D95C 8003D15C 2A109502 */  slt        $v0, $s4, $s5
/* 2D960 8003D160 09004010 */  beqz       $v0, .L8003D188
/* 2D964 8003D164 01006232 */   andi      $v0, $s3, 0x1
/* 2D968 8003D168 B0FF4010 */  beqz       $v0, .L8003D02C
/* 2D96C 8003D16C 2120C002 */   addu      $a0, $s6, $zero
/* 2D970 8003D170 21280002 */  addu       $a1, $s0, $zero
/* 2D974 8003D174 CDEF000C */  jal        GetHeight
/* 2D978 8003D178 2130E002 */   addu      $a2, $s7, $zero
/* 2D97C 8003D17C 2A100202 */  slt        $v0, $s0, $v0
/* 2D980 8003D180 0D004014 */  bnez       $v0, .L8003D1B8
/* 2D984 8003D184 21100000 */   addu      $v0, $zero, $zero
.L8003D188:
/* 2D988 8003D188 2A10B402 */  slt        $v0, $s5, $s4
/* 2D98C 8003D18C 09004010 */  beqz       $v0, .L8003D1B4
/* 2D990 8003D190 04006232 */   andi      $v0, $s3, 0x4
.L8003D194:
/* 2D994 8003D194 A5FF4010 */  beqz       $v0, .L8003D02C
/* 2D998 8003D198 2120C002 */   addu      $a0, $s6, $zero
/* 2D99C 8003D19C 21280002 */  addu       $a1, $s0, $zero
/* 2D9A0 8003D1A0 CDEF000C */  jal        GetHeight
/* 2D9A4 8003D1A4 2130E002 */   addu      $a2, $s7, $zero
/* 2D9A8 8003D1A8 2A180202 */  slt        $v1, $s0, $v0
/* 2D9AC 8003D1AC 02006014 */  bnez       $v1, .L8003D1B8
/* 2D9B0 8003D1B0 21100000 */   addu      $v0, $zero, $zero
.L8003D1B4:
/* 2D9B4 8003D1B4 01000224 */  addiu      $v0, $zero, 0x1
.L8003D1B8:
/* 2D9B8 8003D1B8 3000BF8F */  lw         $ra, 0x30($sp)
/* 2D9BC 8003D1BC 2C00B78F */  lw         $s7, 0x2C($sp)
/* 2D9C0 8003D1C0 2800B68F */  lw         $s6, 0x28($sp)
/* 2D9C4 8003D1C4 2400B58F */  lw         $s5, 0x24($sp)
/* 2D9C8 8003D1C8 2000B48F */  lw         $s4, 0x20($sp)
/* 2D9CC 8003D1CC 1C00B38F */  lw         $s3, 0x1C($sp)
/* 2D9D0 8003D1D0 1800B28F */  lw         $s2, 0x18($sp)
/* 2D9D4 8003D1D4 1400B18F */  lw         $s1, 0x14($sp)
/* 2D9D8 8003D1D8 1000B08F */  lw         $s0, 0x10($sp)
/* 2D9DC 8003D1DC 0800E003 */  jr         $ra
/* 2D9E0 8003D1E0 3800BD27 */   addiu     $sp, $sp, 0x38
.size CheckCollisionWall, . - CheckCollisionWall
