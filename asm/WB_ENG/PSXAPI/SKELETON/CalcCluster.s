.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel CalcCluster
/* 581D4 800679D4 5555073C */  lui        $a3, (0x55555556 >> 16)
/* 581D8 800679D8 0200A994 */  lhu        $t1, 0x2($a1)
/* 581DC 800679DC 5655E734 */  ori        $a3, $a3, (0x55555556 & 0xFFFF)
/* 581E0 800679E0 18002701 */  mult       $t1, $a3
/* 581E4 800679E4 0000A394 */  lhu        $v1, 0x0($a1)
/* 581E8 800679E8 0980053C */  lui        $a1, %hi(DistBuf)
/* 581EC 800679EC 9057A58C */  lw         $a1, %lo(DistBuf)($a1)
/* 581F0 800679F0 80100300 */  sll        $v0, $v1, 2
/* 581F4 800679F4 2140A200 */  addu       $t0, $a1, $v0
/* 581F8 800679F8 2130C200 */  addu       $a2, $a2, $v0
/* 581FC 800679FC C0180300 */  sll        $v1, $v1, 3
/* 58200 80067A00 1000858C */  lw         $a1, 0x10($a0)
/* 58204 80067A04 C3170900 */  sra        $v0, $t1, 31
/* 58208 80067A08 2128A300 */  addu       $a1, $a1, $v1
/* 5820C 80067A0C 10380000 */  mfhi       $a3
/* 58210 80067A10 2338E200 */  subu       $a3, $a3, $v0
/* 58214 80067A14 40180700 */  sll        $v1, $a3, 1
/* 58218 80067A18 21386700 */  addu       $a3, $v1, $a3
/* 5821C 80067A1C C0100700 */  sll        $v0, $a3, 3
/* 58220 80067A20 2120A200 */  addu       $a0, $a1, $v0
/* 58224 80067A24 2B18A400 */  sltu       $v1, $a1, $a0
/* 58228 80067A28 1F006010 */  beqz       $v1, .L80067AA8
/* 5822C 80067A2C 2118E000 */   addu      $v1, $a3, $zero
.L80067A30:
/* 58230 80067A30 0000A0C8 */  lwc2       $0, 0x0($a1)
/* 58234 80067A34 0400A1C8 */  lwc2       $1, 0x4($a1)
/* 58238 80067A38 0800A2C8 */  lwc2       $2, 0x8($a1)
/* 5823C 80067A3C 0C00A3C8 */  lwc2       $3, 0xC($a1)
/* 58240 80067A40 1000A4C8 */  lwc2       $4, 0x10($a1)
/* 58244 80067A44 1400A5C8 */  lwc2       $5, 0x14($a1)
/* 58248 80067A48 00000000 */  nop
/* 5824C 80067A4C 00000000 */  nop
/* 58250 80067A50 3000284A */  RTPT
/* 58254 80067A54 0000CCE8 */  swc2       $12, 0x0($a2)
/* 58258 80067A58 0400CDE8 */  swc2       $13, 0x4($a2)
/* 5825C 80067A5C 0800CEE8 */  swc2       $14, 0x8($a2)
/* 58260 80067A60 00880C48 */  mfc2       $t4, $17 /* handwritten instruction */
/* 58264 80067A64 00000000 */  nop
/* 58268 80067A68 C3600C00 */  sra        $t4, $t4, 3
/* 5826C 80067A6C 00000CAD */  sw         $t4, 0x0($t0)
/* 58270 80067A70 00900C48 */  mfc2       $t4, $18 /* handwritten instruction */
/* 58274 80067A74 00000000 */  nop
/* 58278 80067A78 C3600C00 */  sra        $t4, $t4, 3
/* 5827C 80067A7C 04000CAD */  sw         $t4, 0x4($t0)
/* 58280 80067A80 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
/* 58284 80067A84 00000000 */  nop
/* 58288 80067A88 C3600C00 */  sra        $t4, $t4, 3
/* 5828C 80067A8C 08000CAD */  sw         $t4, 0x8($t0)
/* 58290 80067A90 1800A524 */  addiu      $a1, $a1, 0x18
/* 58294 80067A94 0C000825 */  addiu      $t0, $t0, 0xC
/* 58298 80067A98 2B10A400 */  sltu       $v0, $a1, $a0
/* 5829C 80067A9C E4FF4014 */  bnez       $v0, .L80067A30
/* 582A0 80067AA0 0C00C624 */   addiu     $a2, $a2, 0xC
/* 582A4 80067AA4 2118E000 */  addu       $v1, $a3, $zero
.L80067AA8:
/* 582A8 80067AA8 2A106900 */  slt        $v0, $v1, $t1
/* 582AC 80067AAC 10004010 */  beqz       $v0, .L80067AF0
/* 582B0 80067AB0 23182301 */   subu      $v1, $t1, $v1
.L80067AB4:
/* 582B4 80067AB4 0000A0C8 */  lwc2       $0, 0x0($a1)
/* 582B8 80067AB8 0400A1C8 */  lwc2       $1, 0x4($a1)
/* 582BC 80067ABC 00000000 */  nop
/* 582C0 80067AC0 00000000 */  nop
/* 582C4 80067AC4 0100184A */  RTPS
/* 582C8 80067AC8 0000CEE8 */  swc2       $14, 0x0($a2)
/* 582CC 80067ACC 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
/* 582D0 80067AD0 00000000 */  nop
/* 582D4 80067AD4 C3600C00 */  sra        $t4, $t4, 3
/* 582D8 80067AD8 00000CAD */  sw         $t4, 0x0($t0)
/* 582DC 80067ADC FFFF6324 */  addiu      $v1, $v1, -0x1
/* 582E0 80067AE0 0800A524 */  addiu      $a1, $a1, 0x8
/* 582E4 80067AE4 04000825 */  addiu      $t0, $t0, 0x4
/* 582E8 80067AE8 F2FF6014 */  bnez       $v1, .L80067AB4
/* 582EC 80067AEC 0400C624 */   addiu     $a2, $a2, 0x4
.L80067AF0:
/* 582F0 80067AF0 0800E003 */  jr         $ra
/* 582F4 80067AF4 00000000 */   nop
.size CalcCluster, . - CalcCluster
