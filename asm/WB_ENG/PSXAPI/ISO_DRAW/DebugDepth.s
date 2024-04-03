.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DebugDepth
/* 539AC 800631AC D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 539B0 800631B0 88000424 */  addiu      $a0, $zero, 0x88
/* 539B4 800631B4 66000524 */  addiu      $a1, $zero, 0x66
/* 539B8 800631B8 02000224 */  addiu      $v0, $zero, 0x2
/* 539BC 800631BC 06000324 */  addiu      $v1, $zero, 0x6
/* 539C0 800631C0 181282AF */  sw         $v0, %gp_rel(ScrollXOffset)($gp)
/* 539C4 800631C4 201282AF */  sw         $v0, %gp_rel(ScrollZOffset)($gp)
/* 539C8 800631C8 04000224 */  addiu      $v0, $zero, 0x4
/* 539CC 800631CC 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 539D0 800631D0 2800B2AF */  sw         $s2, 0x28($sp)
/* 539D4 800631D4 2400B1AF */  sw         $s1, 0x24($sp)
/* 539D8 800631D8 2000B0AF */  sw         $s0, 0x20($sp)
/* 539DC 800631DC 1C1280AF */  sw         $zero, %gp_rel(ScrollYOffset)($gp)
/* 539E0 800631E0 701783AF */  sw         $v1, %gp_rel(ScrollXSize)($gp)
/* 539E4 800631E4 741782AF */  sw         $v0, %gp_rel(ScrollYSize)($gp)
/* 539E8 800631E8 781783AF */  sw         $v1, %gp_rel(ScrollZSize)($gp)
/* 539EC 800631EC 5363010C */  jal        TextSetTextColor
/* 539F0 800631F0 FF000624 */   addiu     $a2, $zero, 0xFF
/* 539F4 800631F4 4C12838F */  lw         $v1, %gp_rel(B1_X_OFFSET)($gp)
/* 539F8 800631F8 5012828F */  lw         $v0, %gp_rel(B1_Y_OFFSET)($gp)
/* 539FC 800631FC C0810300 */  sll        $s0, $v1, 7
/* 53A00 80063200 21200002 */  addu       $a0, $s0, $zero
/* 53A04 80063204 C0890200 */  sll        $s1, $v0, 7
/* 53A08 80063208 5412838F */  lw         $v1, %gp_rel(B1_Z_OFFSET)($gp)
/* 53A0C 8006320C 21102002 */  addu       $v0, $s1, $zero
/* 53A10 80063210 C0910300 */  sll        $s2, $v1, 7
/* 53A14 80063214 02000106 */  bgez       $s0, .L80063220
/* 53A18 80063218 21184002 */   addu      $v1, $s2, $zero
/* 53A1C 8006321C 21200000 */  addu       $a0, $zero, $zero
.L80063220:
/* 53A20 80063220 02002106 */  bgez       $s1, .L8006322C
/* 53A24 80063224 00000000 */   nop
/* 53A28 80063228 21100000 */  addu       $v0, $zero, $zero
.L8006322C:
/* 53A2C 8006322C 02004106 */  bgez       $s2, .L80063238
/* 53A30 80063230 C3510400 */   sra       $t2, $a0, 7
/* 53A34 80063234 21180000 */  addu       $v1, $zero, $zero
.L80063238:
/* 53A38 80063238 C3410200 */  sra        $t0, $v0, 7
/* 53A3C 8006323C C3310300 */  sra        $a2, $v1, 7
/* 53A40 80063240 0C12898F */  lw         $t1, %gp_rel(ScrollXPos)($gp)
/* 53A44 80063244 7017878F */  lw         $a3, %gp_rel(ScrollXSize)($gp)
/* 53A48 80063248 1012858F */  lw         $a1, %gp_rel(ScrollYPos)($gp)
/* 53A4C 8006324C 7417848F */  lw         $a0, %gp_rel(ScrollYSize)($gp)
/* 53A50 80063250 1412838F */  lw         $v1, %gp_rel(ScrollZPos)($gp)
/* 53A54 80063254 78178B8F */  lw         $t3, %gp_rel(ScrollZSize)($gp)
/* 53A58 80063258 2A104901 */  slt        $v0, $t2, $t1
/* 53A5C 8006325C 0E004014 */  bnez       $v0, .L80063298
/* 53A60 80063260 21102701 */   addu      $v0, $t1, $a3
/* 53A64 80063264 2A104201 */  slt        $v0, $t2, $v0
/* 53A68 80063268 0B004010 */  beqz       $v0, .L80063298
/* 53A6C 8006326C 2A100501 */   slt       $v0, $t0, $a1
/* 53A70 80063270 09004014 */  bnez       $v0, .L80063298
/* 53A74 80063274 2110A400 */   addu      $v0, $a1, $a0
/* 53A78 80063278 2A100201 */  slt        $v0, $t0, $v0
/* 53A7C 8006327C 06004010 */  beqz       $v0, .L80063298
/* 53A80 80063280 2A10C300 */   slt       $v0, $a2, $v1
/* 53A84 80063284 04004014 */  bnez       $v0, .L80063298
/* 53A88 80063288 21106B00 */   addu      $v0, $v1, $t3
/* 53A8C 8006328C 2A10C200 */  slt        $v0, $a2, $v0
/* 53A90 80063290 03004014 */  bnez       $v0, .L800632A0
/* 53A94 80063294 1800E400 */   mult      $a3, $a0
.L80063298:
/* 53A98 80063298 BA8C0108 */  j          .L800632E8
/* 53A9C 8006329C FFFF0824 */   addiu     $t0, $zero, -0x1
.L800632A0:
/* 53AA0 800632A0 12200000 */  mflo       $a0
/* 53AA4 800632A4 2318C300 */  subu       $v1, $a2, $v1
/* 53AA8 800632A8 00000000 */  nop
/* 53AAC 800632AC 18006400 */  mult       $v1, $a0
/* 53AB0 800632B0 12180000 */  mflo       $v1
/* 53AB4 800632B4 23100501 */  subu       $v0, $t0, $a1
/* 53AB8 800632B8 00000000 */  nop
/* 53ABC 800632BC 18004700 */  mult       $v0, $a3
/* 53AC0 800632C0 A017858F */  lw         $a1, %gp_rel(IsoDepthTable)($gp)
/* 53AC4 800632C4 23204901 */  subu       $a0, $t2, $t1
/* 53AC8 800632C8 12100000 */  mflo       $v0
/* 53ACC 800632CC 21186200 */  addu       $v1, $v1, $v0
/* 53AD0 800632D0 21186400 */  addu       $v1, $v1, $a0
/* 53AD4 800632D4 40180300 */  sll        $v1, $v1, 1
/* 53AD8 800632D8 21186500 */  addu       $v1, $v1, $a1
/* 53ADC 800632DC 00006284 */  lh         $v0, 0x0($v1)
/* 53AE0 800632E0 00000000 */  nop
/* 53AE4 800632E4 FFFF4824 */  addiu      $t0, $v0, -0x1
.L800632E8:
/* 53AE8 800632E8 10000424 */  addiu      $a0, $zero, 0x10
/* 53AEC 800632EC 50000524 */  addiu      $a1, $zero, 0x50
/* 53AF0 800632F0 21300000 */  addu       $a2, $zero, $zero
/* 53AF4 800632F4 0180073C */  lui        $a3, %hi(D_8001350C)
/* 53AF8 800632F8 0C35E724 */  addiu      $a3, $a3, %lo(D_8001350C)
/* 53AFC 800632FC C3111000 */  sra        $v0, $s0, 7
/* 53B00 80063300 C3191100 */  sra        $v1, $s1, 7
/* 53B04 80063304 1000A2AF */  sw         $v0, 0x10($sp)
/* 53B08 80063308 C3111200 */  sra        $v0, $s2, 7
/* 53B0C 8006330C 1400A3AF */  sw         $v1, 0x14($sp)
/* 53B10 80063310 1800A2AF */  sw         $v0, 0x18($sp)
/* 53B14 80063314 3063010C */  jal        Print
/* 53B18 80063318 1C00A8AF */   sw        $t0, 0x1C($sp)
/* 53B1C 8006331C 21200000 */  addu       $a0, $zero, $zero
/* 53B20 80063320 FF000524 */  addiu      $a1, $zero, 0xFF
/* 53B24 80063324 C989010C */  jal        SetLineColor
/* 53B28 80063328 21300000 */   addu      $a2, $zero, $zero
/* 53B2C 8006332C 21100002 */  addu       $v0, $s0, $zero
/* 53B30 80063330 02004104 */  bgez       $v0, .L8006333C
/* 53B34 80063334 21182002 */   addu      $v1, $s1, $zero
/* 53B38 80063338 7F004224 */  addiu      $v0, $v0, 0x7F
.L8006333C:
/* 53B3C 8006333C C3110200 */  sra        $v0, $v0, 7
/* 53B40 80063340 02006104 */  bgez       $v1, .L8006334C
/* 53B44 80063344 C0210200 */   sll       $a0, $v0, 7
/* 53B48 80063348 7F006324 */  addiu      $v1, $v1, 0x7F
.L8006334C:
/* 53B4C 8006334C 21304002 */  addu       $a2, $s2, $zero
/* 53B50 80063350 C3110300 */  sra        $v0, $v1, 7
/* 53B54 80063354 0200C104 */  bgez       $a2, .L80063360
/* 53B58 80063358 C0290200 */   sll       $a1, $v0, 7
/* 53B5C 8006335C 7F00C624 */  addiu      $a2, $a2, 0x7F
.L80063360:
/* 53B60 80063360 C3310600 */  sra        $a2, $a2, 7
/* 53B64 80063364 C0310600 */  sll        $a2, $a2, 7
/* 53B68 80063368 80000724 */  addiu      $a3, $zero, 0x80
/* 53B6C 8006336C 80000224 */  addiu      $v0, $zero, 0x80
/* 53B70 80063370 1000A2AF */  sw         $v0, 0x10($sp)
/* 53B74 80063374 CF89010C */  jal        DrawBox
/* 53B78 80063378 1400A2AF */   sw        $v0, 0x14($sp)
/* 53B7C 8006337C FF000424 */  addiu      $a0, $zero, 0xFF
/* 53B80 80063380 FF000524 */  addiu      $a1, $zero, 0xFF
/* 53B84 80063384 5363010C */  jal        TextSetTextColor
/* 53B88 80063388 FF000624 */   addiu     $a2, $zero, 0xFF
/* 53B8C 8006338C 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 53B90 80063390 2800B28F */  lw         $s2, 0x28($sp)
/* 53B94 80063394 2400B18F */  lw         $s1, 0x24($sp)
/* 53B98 80063398 2000B08F */  lw         $s0, 0x20($sp)
/* 53B9C 8006339C 0800E003 */  jr         $ra
/* 53BA0 800633A0 3000BD27 */   addiu     $sp, $sp, 0x30
.size DebugDepth, . - DebugDepth
