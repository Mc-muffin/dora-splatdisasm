.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CountSpecialCells
/* 10FF0 800207F0 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 10FF4 800207F4 3400BFAF */  sw         $ra, 0x34($sp)
/* 10FF8 800207F8 3000BEAF */  sw         $fp, 0x30($sp)
/* 10FFC 800207FC 2C00B7AF */  sw         $s7, 0x2C($sp)
/* 11000 80020800 2800B6AF */  sw         $s6, 0x28($sp)
/* 11004 80020804 2400B5AF */  sw         $s5, 0x24($sp)
/* 11008 80020808 2000B4AF */  sw         $s4, 0x20($sp)
/* 1100C 8002080C 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 11010 80020810 1800B2AF */  sw         $s2, 0x18($sp)
/* 11014 80020814 1400B1AF */  sw         $s1, 0x14($sp)
/* 11018 80020818 1000B0AF */  sw         $s0, 0x10($sp)
/* 1101C 8002081C 701380AF */  sw         $zero, %gp_rel(g_totaldig)($gp)
/* 11020 80020820 801380AF */  sw         $zero, %gp_rel(g_totalspringboard)($gp)
/* 11024 80020824 781380AF */  sw         $zero, %gp_rel(g_totalcrate)($gp)
/* 11028 80020828 0980013C */  lui        $at, %hi(g_totalnumcellanims)
/* 1102C 8002082C B85520AC */  sw         $zero, %lo(g_totalnumcellanims)($at)
/* 11030 80020830 C86A000C */  jal        CalcMallocEnvRadiusCollisions
/* 11034 80020834 08801E3C */   lui       $fp, %hi(TestWorld)
/* 11038 80020838 8C65C28F */  lw         $v0, %lo(TestWorld)($fp)
/* 1103C 8002083C 00000000 */  nop
/* 11040 80020840 5F004010 */  beqz       $v0, .L800209C0
/* 11044 80020844 21980000 */   addu      $s3, $zero, $zero
.L80020848:
/* 11048 80020848 21900000 */  addu       $s2, $zero, $zero
/* 1104C 8002084C 0880033C */  lui        $v1, %hi(TestWorld)
/* 11050 80020850 8C656324 */  addiu      $v1, $v1, %lo(TestWorld)
/* 11054 80020854 0400628C */  lw         $v0, 0x4($v1)
/* 11058 80020858 00000000 */  nop
/* 1105C 8002085C 53004010 */  beqz       $v0, .L800209AC
/* 11060 80020860 01007726 */   addiu     $s7, $s3, 0x1
/* 11064 80020864 0880023C */  lui        $v0, %hi(TestWorld)
/* 11068 80020868 8C655424 */  addiu      $s4, $v0, %lo(TestWorld)
.L8002086C:
/* 1106C 8002086C 21880000 */  addu       $s1, $zero, $zero
/* 11070 80020870 0800828E */  lw         $v0, 0x8($s4)
/* 11074 80020874 00000000 */  nop
/* 11078 80020878 47004010 */  beqz       $v0, .L80020998
/* 1107C 8002087C 01005626 */   addiu     $s6, $s2, 0x1
/* 11080 80020880 C0A91300 */  sll        $s5, $s3, 7
/* 11084 80020884 21206002 */  addu       $a0, $s3, $zero
.L80020888:
/* 11088 80020888 21284002 */  addu       $a1, $s2, $zero
/* 1108C 8002088C 1694010C */  jal        GetCelIndex
/* 11090 80020890 21302002 */   addu      $a2, $s1, $zero
/* 11094 80020894 FF034330 */  andi       $v1, $v0, 0x3FF
/* 11098 80020898 FF030224 */  addiu      $v0, $zero, 0x3FF
/* 1109C 8002089C 39006210 */  beq        $v1, $v0, .L80020984
/* 110A0 800208A0 80100300 */   sll       $v0, $v1, 2
/* 110A4 800208A4 21104300 */  addu       $v0, $v0, $v1
/* 110A8 800208A8 0980043C */  lui        $a0, %hi(CellAttributesPtr)
/* 110AC 800208AC 6C50848C */  lw         $a0, %lo(CellAttributesPtr)($a0)
/* 110B0 800208B0 C0100200 */  sll        $v0, $v0, 3
/* 110B4 800208B4 21808200 */  addu       $s0, $a0, $v0
/* 110B8 800208B8 20000396 */  lhu        $v1, 0x20($s0)
/* 110BC 800208BC 00000000 */  nop
/* 110C0 800208C0 0A006010 */  beqz       $v1, .L800208EC
/* 110C4 800208C4 C0291200 */   sll       $a1, $s2, 7
/* 110C8 800208C8 C0111100 */  sll        $v0, $s1, 7
/* 110CC 800208CC 21386000 */  addu       $a3, $v1, $zero
/* 110D0 800208D0 1C000486 */  lh         $a0, 0x1C($s0)
/* 110D4 800208D4 1E000686 */  lh         $a2, 0x1E($s0)
/* 110D8 800208D8 40008424 */  addiu      $a0, $a0, 0x40
/* 110DC 800208DC 2120A402 */  addu       $a0, $s5, $a0
/* 110E0 800208E0 4000C624 */  addiu      $a2, $a2, 0x40
/* 110E4 800208E4 BC6A000C */  jal        AddToEnvCollisions
/* 110E8 800208E8 21304600 */   addu      $a2, $v0, $a2
.L800208EC:
/* 110EC 800208EC 0800048E */  lw         $a0, 0x8($s0)
/* 110F0 800208F0 0002023C */  lui        $v0, (0x2000000 >> 16)
/* 110F4 800208F4 24108200 */  and        $v0, $a0, $v0
/* 110F8 800208F8 0A004010 */  beqz       $v0, .L80020924
/* 110FC 800208FC 0004023C */   lui       $v0, (0x4000000 >> 16)
/* 11100 80020900 0980023C */  lui        $v0, %hi(g_totalnumcellanims)
/* 11104 80020904 B855428C */  lw         $v0, %lo(g_totalnumcellanims)($v0)
/* 11108 80020908 7013838F */  lw         $v1, %gp_rel(g_totaldig)($gp)
/* 1110C 8002090C 01004224 */  addiu      $v0, $v0, 0x1
/* 11110 80020910 01006324 */  addiu      $v1, $v1, 0x1
/* 11114 80020914 0980013C */  lui        $at, %hi(g_totalnumcellanims)
/* 11118 80020918 B85522AC */  sw         $v0, %lo(g_totalnumcellanims)($at)
/* 1111C 8002091C 701383AF */  sw         $v1, %gp_rel(g_totaldig)($gp)
/* 11120 80020920 0004023C */  lui        $v0, (0x4000000 >> 16)
.L80020924:
/* 11124 80020924 24108200 */  and        $v0, $a0, $v0
/* 11128 80020928 0A004010 */  beqz       $v0, .L80020954
/* 1112C 8002092C 0108023C */   lui       $v0, (0x801E000 >> 16)
/* 11130 80020930 0980023C */  lui        $v0, %hi(g_totalnumcellanims)
/* 11134 80020934 B855428C */  lw         $v0, %lo(g_totalnumcellanims)($v0)
/* 11138 80020938 7813838F */  lw         $v1, %gp_rel(g_totalcrate)($gp)
/* 1113C 8002093C 01004224 */  addiu      $v0, $v0, 0x1
/* 11140 80020940 01006324 */  addiu      $v1, $v1, 0x1
/* 11144 80020944 0980013C */  lui        $at, %hi(g_totalnumcellanims)
/* 11148 80020948 B85522AC */  sw         $v0, %lo(g_totalnumcellanims)($at)
/* 1114C 8002094C 781383AF */  sw         $v1, %gp_rel(g_totalcrate)($gp)
/* 11150 80020950 0108023C */  lui        $v0, (0x801E000 >> 16)
.L80020954:
/* 11154 80020954 00E04234 */  ori        $v0, $v0, (0x801E000 & 0xFFFF)
/* 11158 80020958 24108200 */  and        $v0, $a0, $v0
/* 1115C 8002095C 09004010 */  beqz       $v0, .L80020984
/* 11160 80020960 00000000 */   nop
/* 11164 80020964 0980023C */  lui        $v0, %hi(g_totalnumcellanims)
/* 11168 80020968 B855428C */  lw         $v0, %lo(g_totalnumcellanims)($v0)
/* 1116C 8002096C 8013838F */  lw         $v1, %gp_rel(g_totalspringboard)($gp)
/* 11170 80020970 01004224 */  addiu      $v0, $v0, 0x1
/* 11174 80020974 01006324 */  addiu      $v1, $v1, 0x1
/* 11178 80020978 0980013C */  lui        $at, %hi(g_totalnumcellanims)
/* 1117C 8002097C B85522AC */  sw         $v0, %lo(g_totalnumcellanims)($at)
/* 11180 80020980 801383AF */  sw         $v1, %gp_rel(g_totalspringboard)($gp)
.L80020984:
/* 11184 80020984 0800828E */  lw         $v0, 0x8($s4)
/* 11188 80020988 01003126 */  addiu      $s1, $s1, 0x1
/* 1118C 8002098C 2B102202 */  sltu       $v0, $s1, $v0
/* 11190 80020990 BDFF4014 */  bnez       $v0, .L80020888
/* 11194 80020994 21206002 */   addu      $a0, $s3, $zero
.L80020998:
/* 11198 80020998 0400828E */  lw         $v0, 0x4($s4)
/* 1119C 8002099C 2190C002 */  addu       $s2, $s6, $zero
/* 111A0 800209A0 2B104202 */  sltu       $v0, $s2, $v0
/* 111A4 800209A4 B1FF4014 */  bnez       $v0, .L8002086C
/* 111A8 800209A8 00000000 */   nop
.L800209AC:
/* 111AC 800209AC 8C65C28F */  lw         $v0, %lo(TestWorld)($fp)
/* 111B0 800209B0 2198E002 */  addu       $s3, $s7, $zero
/* 111B4 800209B4 2B106202 */  sltu       $v0, $s3, $v0
/* 111B8 800209B8 A3FF4014 */  bnez       $v0, .L80020848
/* 111BC 800209BC 00000000 */   nop
.L800209C0:
/* 111C0 800209C0 7013828F */  lw         $v0, %gp_rel(g_totaldig)($gp)
/* 111C4 800209C4 00000000 */  nop
/* 111C8 800209C8 07004010 */  beqz       $v0, .L800209E8
/* 111CC 800209CC 40200200 */   sll       $a0, $v0, 1
/* 111D0 800209D0 21208200 */  addu       $a0, $a0, $v0
/* 111D4 800209D4 2B3F010C */  jal        new_malloc
/* 111D8 800209D8 00210400 */   sll       $a0, $a0, 4
/* 111DC 800209DC 741382AF */  sw         $v0, %gp_rel(WorldDigPtr)($gp)
/* 111E0 800209E0 7B820008 */  j          .L800209EC
/* 111E4 800209E4 00000000 */   nop
.L800209E8:
/* 111E8 800209E8 741380AF */  sw         $zero, %gp_rel(WorldDigPtr)($gp)
.L800209EC:
/* 111EC 800209EC 7813828F */  lw         $v0, %gp_rel(g_totalcrate)($gp)
/* 111F0 800209F0 00000000 */  nop
/* 111F4 800209F4 07004010 */  beqz       $v0, .L80020A14
/* 111F8 800209F8 40200200 */   sll       $a0, $v0, 1
/* 111FC 800209FC 21208200 */  addu       $a0, $a0, $v0
/* 11200 80020A00 2B3F010C */  jal        new_malloc
/* 11204 80020A04 00210400 */   sll       $a0, $a0, 4
/* 11208 80020A08 7C1382AF */  sw         $v0, %gp_rel(WorldCratePtr)($gp)
/* 1120C 80020A0C 86820008 */  j          .L80020A18
/* 11210 80020A10 00000000 */   nop
.L80020A14:
/* 11214 80020A14 7C1380AF */  sw         $zero, %gp_rel(WorldCratePtr)($gp)
.L80020A18:
/* 11218 80020A18 8013828F */  lw         $v0, %gp_rel(g_totalspringboard)($gp)
/* 1121C 80020A1C 00000000 */  nop
/* 11220 80020A20 07004010 */  beqz       $v0, .L80020A40
/* 11224 80020A24 80200200 */   sll       $a0, $v0, 2
/* 11228 80020A28 21208200 */  addu       $a0, $a0, $v0
/* 1122C 80020A2C 2B3F010C */  jal        new_malloc
/* 11230 80020A30 C0200400 */   sll       $a0, $a0, 3
/* 11234 80020A34 841382AF */  sw         $v0, %gp_rel(WorldSpringBoardPtr)($gp)
/* 11238 80020A38 91820008 */  j          .L80020A44
/* 1123C 80020A3C 00000000 */   nop
.L80020A40:
/* 11240 80020A40 841380AF */  sw         $zero, %gp_rel(WorldSpringBoardPtr)($gp)
.L80020A44:
/* 11244 80020A44 3400BF8F */  lw         $ra, 0x34($sp)
/* 11248 80020A48 3000BE8F */  lw         $fp, 0x30($sp)
/* 1124C 80020A4C 2C00B78F */  lw         $s7, 0x2C($sp)
/* 11250 80020A50 2800B68F */  lw         $s6, 0x28($sp)
/* 11254 80020A54 2400B58F */  lw         $s5, 0x24($sp)
/* 11258 80020A58 2000B48F */  lw         $s4, 0x20($sp)
/* 1125C 80020A5C 1C00B38F */  lw         $s3, 0x1C($sp)
/* 11260 80020A60 1800B28F */  lw         $s2, 0x18($sp)
/* 11264 80020A64 1400B18F */  lw         $s1, 0x14($sp)
/* 11268 80020A68 1000B08F */  lw         $s0, 0x10($sp)
/* 1126C 80020A6C 0800E003 */  jr         $ra
/* 11270 80020A70 3800BD27 */   addiu     $sp, $sp, 0x38
.size CountSpecialCells, . - CountSpecialCells
