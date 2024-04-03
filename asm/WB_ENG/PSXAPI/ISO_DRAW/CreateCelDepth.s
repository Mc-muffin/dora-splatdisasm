.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel CreateCelDepth
/* 541E8 800639E8 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 541EC 800639EC 3400B5AF */  sw         $s5, 0x34($sp)
/* 541F0 800639F0 40009524 */  addiu      $s5, $a0, 0x40
/* 541F4 800639F4 5800A28F */  lw         $v0, 0x58($sp)
/* 541F8 800639F8 3C00B7AF */  sw         $s7, 0x3C($sp)
/* 541FC 800639FC C0FFB724 */  addiu      $s7, $a1, -0x40
/* 54200 80063A00 3000B4AF */  sw         $s4, 0x30($sp)
/* 54204 80063A04 4000D424 */  addiu      $s4, $a2, 0x40
/* 54208 80063A08 4400BFAF */  sw         $ra, 0x44($sp)
/* 5420C 80063A0C 4000BEAF */  sw         $fp, 0x40($sp)
/* 54210 80063A10 3800B6AF */  sw         $s6, 0x38($sp)
/* 54214 80063A14 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 54218 80063A18 2800B2AF */  sw         $s2, 0x28($sp)
/* 5421C 80063A1C 2400B1AF */  sw         $s1, 0x24($sp)
/* 54220 80063A20 2000B0AF */  sw         $s0, 0x20($sp)
/* 54224 80063A24 1800A0AF */  sw         $zero, 0x18($sp)
/* 54228 80063A28 D41795AF */  sw         $s5, %gp_rel(g_cdepthx)($gp)
/* 5422C 80063A2C D81797AF */  sw         $s7, %gp_rel(g_cdepthy)($gp)
/* 54230 80063A30 DC1794AF */  sw         $s4, %gp_rel(g_cdepthz)($gp)
/* 54234 80063A34 9C1787AF */  sw         $a3, %gp_rel(g_CelObj)($gp)
/* 54238 80063A38 6C1782AF */  sw         $v0, %gp_rel(g_celindex)($gp)
/* 5423C 80063A3C 068F010C */  jal        AllocateIsoCel
/* 54240 80063A40 2120E000 */   addu      $a0, $a3, $zero
/* 54244 80063A44 21B04000 */  addu       $s6, $v0, $zero
/* 54248 80063A48 6600C012 */  beqz       $s6, .L80063BE4
/* 5424C 80063A4C 801F123C */   lui       $s2, (0x1F80006C >> 16)
/* 54250 80063A50 6C005236 */  ori        $s2, $s2, (0x1F80006C & 0xFFFF)
/* 54254 80063A54 801F113C */  lui        $s1, (0x1F80006C >> 16)
/* 54258 80063A58 0980133C */  lui        $s3, %hi(DistBuf)
/* 5425C 80063A5C 9057738E */  lw         $s3, %lo(DistBuf)($s3)
/* 54260 80063A60 0980023C */  lui        $v0, %hi(CellInfoDisplayFlag)
/* 54264 80063A64 1454428C */  lw         $v0, %lo(CellInfoDisplayFlag)($v0)
/* 54268 80063A68 3000DE8E */  lw         $fp, 0x30($s6)
/* 5426C 80063A6C 2D004010 */  beqz       $v0, .L80063B24
/* 54270 80063A70 6C003136 */   ori       $s1, $s1, (0x1F80006C & 0xFFFF)
/* 54274 80063A74 8000A226 */  addiu      $v0, $s5, 0x80
/* 54278 80063A78 801F013C */  lui        $at, (0x1F80006C >> 16)
/* 5427C 80063A7C 6C0022A4 */  sh         $v0, (0x1F80006C & 0xFFFF)($at)
/* 54280 80063A80 80008226 */  addiu      $v0, $s4, 0x80
/* 54284 80063A84 801F013C */  lui        $at, (0x1F80006E >> 16)
/* 54288 80063A88 6E0037A4 */  sh         $s7, (0x1F80006E & 0xFFFF)($at)
/* 5428C 80063A8C 801F013C */  lui        $at, (0x1F800070 >> 16)
/* 54290 80063A90 700022A4 */  sh         $v0, (0x1F800070 & 0xFFFF)($at)
/* 54294 80063A94 000020CA */  lwc2       $0, 0x0($s1)
/* 54298 80063A98 040021CA */  lwc2       $1, 0x4($s1)
/* 5429C 80063A9C 00000000 */  nop
/* 542A0 80063AA0 00000000 */  nop
/* 542A4 80063AA4 0100184A */  RTPS
/* 542A8 80063AA8 00004EEA */  swc2       $14, 0x0($s2)
/* 542AC 80063AAC 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
/* 542B0 80063AB0 00000000 */  nop
/* 542B4 80063AB4 C3600C00 */  sra        $t4, $t4, 3
/* 542B8 80063AB8 00006CAE */  sw         $t4, 0x0($s3)
/* 542BC 80063ABC 70000424 */  addiu      $a0, $zero, 0x70
/* 542C0 80063AC0 70000524 */  addiu      $a1, $zero, 0x70
/* 542C4 80063AC4 0000708E */  lw         $s0, 0x0($s3)
/* 542C8 80063AC8 5363010C */  jal        TextSetTextColor
/* 542CC 80063ACC 70000624 */   addiu     $a2, $zero, 0x70
/* 542D0 80063AD0 0980033C */  lui        $v1, %hi(CelDepth)
/* 542D4 80063AD4 0454638C */  lw         $v1, %lo(CelDepth)($v1)
/* 542D8 80063AD8 0980023C */  lui        $v0, %hi(CelDepthInc)
/* 542DC 80063ADC 0854428C */  lw         $v0, %lo(CelDepthInc)($v0)
/* 542E0 80063AE0 00000000 */  nop
/* 542E4 80063AE4 1A006200 */  div        $zero, $v1, $v0
/* 542E8 80063AE8 801F043C */  lui        $a0, (0x1F80006C >> 16)
/* 542EC 80063AEC 6C008484 */  lh         $a0, (0x1F80006C & 0xFFFF)($a0)
/* 542F0 80063AF0 801F053C */  lui        $a1, (0x1F80006E >> 16)
/* 542F4 80063AF4 6E00A584 */  lh         $a1, (0x1F80006E & 0xFFFF)($a1)
/* 542F8 80063AF8 12300000 */  mflo       $a2
/* 542FC 80063AFC 02004014 */  bnez       $v0, .L80063B08
/* 54300 80063B00 00000000 */   nop
/* 54304 80063B04 CD010000 */  break      0, 7
.L80063B08:
/* 54308 80063B08 0980073C */  lui        $a3, %hi(D_800954D0)
/* 5430C 80063B0C D054E724 */  addiu      $a3, $a3, %lo(D_800954D0)
/* 54310 80063B10 9362010C */  jal        PrintC
/* 54314 80063B14 1000A3AF */   sw        $v1, 0x10($sp)
/* 54318 80063B18 2800102A */  slti       $s0, $s0, 0x28
/* 5431C 80063B1C 27000016 */  bnez       $s0, .L80063BBC
/* 54320 80063B20 21100000 */   addu      $v0, $zero, $zero
.L80063B24:
/* 54324 80063B24 0000C68E */  lw         $a2, 0x0($s6)
/* 54328 80063B28 801F053C */  lui        $a1, (0x1F80006C >> 16)
/* 5432C 80063B2C 2200C01B */  blez       $fp, .L80063BB8
/* 54330 80063B30 6C00A534 */   ori       $a1, $a1, (0x1F80006C & 0xFFFF)
/* 54334 80063B34 FFFF093C */  lui        $t1, (0xFFFF0000 >> 16)
/* 54338 80063B38 00441700 */  sll        $t0, $s7, 16
/* 5433C 80063B3C 2138C003 */  addu       $a3, $fp, $zero
.L80063B40:
/* 54340 80063B40 0000C28C */  lw         $v0, 0x0($a2)
/* 54344 80063B44 0400C624 */  addiu      $a2, $a2, 0x4
/* 54348 80063B48 0000C48C */  lw         $a0, 0x0($a2)
/* 5434C 80063B4C 0400C624 */  addiu      $a2, $a2, 0x4
/* 54350 80063B50 24184900 */  and        $v1, $v0, $t1
/* 54354 80063B54 21186800 */  addu       $v1, $v1, $t0
/* 54358 80063B58 FFFF4230 */  andi       $v0, $v0, 0xFFFF
/* 5435C 80063B5C 21105500 */  addu       $v0, $v0, $s5
/* 54360 80063B60 25186200 */  or         $v1, $v1, $v0
/* 54364 80063B64 FFFF8430 */  andi       $a0, $a0, 0xFFFF
/* 54368 80063B68 21109400 */  addu       $v0, $a0, $s4
/* 5436C 80063B6C 0000A3AC */  sw         $v1, 0x0($a1)
/* 54370 80063B70 0400A524 */  addiu      $a1, $a1, 0x4
/* 54374 80063B74 0000A2AC */  sw         $v0, 0x0($a1)
/* 54378 80063B78 0400A524 */  addiu      $a1, $a1, 0x4
/* 5437C 80063B7C 000020CA */  lwc2       $0, 0x0($s1)
/* 54380 80063B80 040021CA */  lwc2       $1, 0x4($s1)
/* 54384 80063B84 00000000 */  nop
/* 54388 80063B88 00000000 */  nop
/* 5438C 80063B8C 0100184A */  RTPS
/* 54390 80063B90 00004EEA */  swc2       $14, 0x0($s2)
/* 54394 80063B94 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
/* 54398 80063B98 00000000 */  nop
/* 5439C 80063B9C C3600C00 */  sra        $t4, $t4, 3
/* 543A0 80063BA0 00006CAE */  sw         $t4, 0x0($s3)
/* 543A4 80063BA4 FFFFE724 */  addiu      $a3, $a3, -0x1
/* 543A8 80063BA8 04007326 */  addiu      $s3, $s3, 0x4
/* 543AC 80063BAC 04005226 */  addiu      $s2, $s2, 0x4
/* 543B0 80063BB0 E3FFE014 */  bnez       $a3, .L80063B40
/* 543B4 80063BB4 08003126 */   addiu     $s1, $s1, 0x8
.L80063BB8:
/* 543B8 80063BB8 01000224 */  addiu      $v0, $zero, 0x1
.L80063BBC:
/* 543BC 80063BBC FFFF4230 */  andi       $v0, $v0, 0xFFFF
/* 543C0 80063BC0 08004010 */  beqz       $v0, .L80063BE4
/* 543C4 80063BC4 2120A002 */   addu      $a0, $s5, $zero
/* 543C8 80063BC8 2128E002 */  addu       $a1, $s7, $zero
/* 543CC 80063BCC 21308002 */  addu       $a2, $s4, $zero
/* 543D0 80063BD0 5800A28F */  lw         $v0, 0x58($sp)
/* 543D4 80063BD4 2138C002 */  addu       $a3, $s6, $zero
/* 543D8 80063BD8 9A82010C */  jal        DrawCelDepth
/* 543DC 80063BDC 1000A2AF */   sw        $v0, 0x10($sp)
/* 543E0 80063BE0 1800A2AF */  sw         $v0, 0x18($sp)
.L80063BE4:
/* 543E4 80063BE4 1800A28F */  lw         $v0, 0x18($sp)
/* 543E8 80063BE8 4400BF8F */  lw         $ra, 0x44($sp)
/* 543EC 80063BEC 4000BE8F */  lw         $fp, 0x40($sp)
/* 543F0 80063BF0 3C00B78F */  lw         $s7, 0x3C($sp)
/* 543F4 80063BF4 3800B68F */  lw         $s6, 0x38($sp)
/* 543F8 80063BF8 3400B58F */  lw         $s5, 0x34($sp)
/* 543FC 80063BFC 3000B48F */  lw         $s4, 0x30($sp)
/* 54400 80063C00 2C00B38F */  lw         $s3, 0x2C($sp)
/* 54404 80063C04 2800B28F */  lw         $s2, 0x28($sp)
/* 54408 80063C08 2400B18F */  lw         $s1, 0x24($sp)
/* 5440C 80063C0C 2000B08F */  lw         $s0, 0x20($sp)
/* 54410 80063C10 0800E003 */  jr         $ra
/* 54414 80063C14 4800BD27 */   addiu     $sp, $sp, 0x48
.size CreateCelDepth, . - CreateCelDepth
