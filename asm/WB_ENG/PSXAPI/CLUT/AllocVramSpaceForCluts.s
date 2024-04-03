.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AllocVramSpaceForCluts
/* 4D678 8005CE78 18000A24 */  addiu      $t2, $zero, 0x18
/* 4D67C 8005CE7C 38000F24 */  addiu      $t7, $zero, 0x38
/* 4D680 8005CE80 0C80033C */  lui        $v1, %hi(VRAMGrid)
/* 4D684 8005CE84 38976E24 */  addiu      $t6, $v1, %lo(VRAMGrid)
/* 4D688 8005CE88 0C80023C */  lui        $v0, %hi(VRAMItems)
/* 4D68C 8005CE8C 38AD4224 */  addiu      $v0, $v0, %lo(VRAMItems)
/* 4D690 8005CE90 90014224 */  addiu      $v0, $v0, 0x190
/* 4D694 8005CE94 21604000 */  addu       $t4, $v0, $zero
/* 4D698 8005CE98 21688001 */  addu       $t5, $t4, $zero
/* 4D69C 8005CE9C 01000324 */  addiu      $v1, $zero, 0x1
/* 4D6A0 8005CEA0 20000424 */  addiu      $a0, $zero, 0x20
/* 4D6A4 8005CEA4 100043A0 */  sb         $v1, 0x10($v0)
/* 4D6A8 8005CEA8 08000324 */  addiu      $v1, $zero, 0x8
/* 4D6AC 8005CEAC 0C0044A0 */  sb         $a0, 0xC($v0)
/* 4D6B0 8005CEB0 18000424 */  addiu      $a0, $zero, 0x18
/* 4D6B4 8005CEB4 0D0043A0 */  sb         $v1, 0xD($v0)
/* 4D6B8 8005CEB8 38000324 */  addiu      $v1, $zero, 0x38
/* 4D6BC 8005CEBC 0A0044A0 */  sb         $a0, 0xA($v0)
/* 4D6C0 8005CEC0 0B0043A0 */  sb         $v1, 0xB($v0)
.L8005CEC4:
/* 4D6C4 8005CEC4 0B008391 */  lbu        $v1, 0xB($t4)
/* 4D6C8 8005CEC8 01000224 */  addiu      $v0, $zero, 0x1
/* 4D6CC 8005CECC 16004010 */  beqz       $v0, .L8005CF28
/* 4D6D0 8005CED0 01004925 */   addiu     $t1, $t2, 0x1
/* 4D6D4 8005CED4 0980073C */  lui        $a3, %hi(XCnt)
/* 4D6D8 8005CED8 7C59E78C */  lw         $a3, %lo(XCnt)($a3)
/* 4D6DC 8005CEDC 00000000 */  nop
/* 4D6E0 8005CEE0 18006700 */  mult       $v1, $a3
/* 4D6E4 8005CEE4 01000B24 */  addiu      $t3, $zero, 0x1
/* 4D6E8 8005CEE8 0100023C */  lui        $v0, (0x10000 >> 16)
/* 4D6EC 8005CEEC 0100083C */  lui        $t0, (0x10000 >> 16)
/* 4D6F0 8005CEF0 0B00A491 */  lbu        $a0, 0xB($t5)
/* 4D6F4 8005CEF4 001C0300 */  sll        $v1, $v1, 16
/* 4D6F8 8005CEF8 21306200 */  addu       $a2, $v1, $v0
/* 4D6FC 8005CEFC 08008424 */  addiu      $a0, $a0, 0x8
/* 4D700 8005CF00 21104E01 */  addu       $v0, $t2, $t6
/* 4D704 8005CF04 12280000 */  mflo       $a1
/* 4D708 8005CF08 2128A200 */  addu       $a1, $a1, $v0
.L8005CF0C:
/* 4D70C 8005CF0C 0000ABA0 */  sb         $t3, 0x0($a1)
/* 4D710 8005CF10 2118C000 */  addu       $v1, $a2, $zero
/* 4D714 8005CF14 2130C800 */  addu       $a2, $a2, $t0
/* 4D718 8005CF18 031C0300 */  sra        $v1, $v1, 16
/* 4D71C 8005CF1C 2A106400 */  slt        $v0, $v1, $a0
/* 4D720 8005CF20 FAFF4014 */  bnez       $v0, .L8005CF0C
/* 4D724 8005CF24 2128A700 */   addu      $a1, $a1, $a3
.L8005CF28:
/* 4D728 8005CF28 00140900 */  sll        $v0, $t1, 16
/* 4D72C 8005CF2C 03540200 */  sra        $t2, $v0, 16
/* 4D730 8005CF30 2A184F01 */  slt        $v1, $t2, $t7
/* 4D734 8005CF34 E3FF6014 */  bnez       $v1, .L8005CEC4
/* 4D738 8005CF38 00000000 */   nop
/* 4D73C 8005CF3C 0800E003 */  jr         $ra
/* 4D740 8005CF40 00000000 */   nop
.size AllocVramSpaceForCluts, . - AllocVramSpaceForCluts
