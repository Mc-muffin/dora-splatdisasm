.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel CalcCellVerticesRotation
/* 518F0 800610F0 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 518F4 800610F4 2800B6AF */  sw         $s6, 0x28($sp)
/* 518F8 800610F8 21B08000 */  addu       $s6, $a0, $zero
/* 518FC 800610FC 2C00B7AF */  sw         $s7, 0x2C($sp)
/* 51900 80061100 21B8A000 */  addu       $s7, $a1, $zero
/* 51904 80061104 3000BEAF */  sw         $fp, 0x30($sp)
/* 51908 80061108 21F0C000 */  addu       $fp, $a2, $zero
/* 5190C 8006110C 1000B0AF */  sw         $s0, 0x10($sp)
/* 51910 80061110 801F103C */  lui        $s0, (0x1F80005C >> 16)
/* 51914 80061114 5C001036 */  ori        $s0, $s0, (0x1F80005C & 0xFFFF)
/* 51918 80061118 1400B1AF */  sw         $s1, 0x14($sp)
/* 5191C 8006111C 801F113C */  lui        $s1, (0x1F80004C >> 16)
/* 51920 80061120 4C003136 */  ori        $s1, $s1, (0x1F80004C & 0xFFFF)
/* 51924 80061124 1800B2AF */  sw         $s2, 0x18($sp)
/* 51928 80061128 801F123C */  lui        $s2, (0x1F800044 >> 16)
/* 5192C 8006112C 44005236 */  ori        $s2, $s2, (0x1F800044 & 0xFFFF)
/* 51930 80061130 801F033C */  lui        $v1, (0x1F800000 >> 16)
/* 51934 80061134 2000B4AF */  sw         $s4, 0x20($sp)
/* 51938 80061138 0980143C */  lui        $s4, %hi(DistBuf)
/* 5193C 8006113C 9057948E */  lw         $s4, %lo(DistBuf)($s4)
/* 51940 80061140 801F043C */  lui        $a0, (0x1F8003FF >> 16)
/* 51944 80061144 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 51948 80061148 0000F38C */  lw         $s3, 0x0($a3)
/* 5194C 8006114C FF038434 */  ori        $a0, $a0, (0x1F8003FF & 0xFFFF)
/* 51950 80061150 3400BFAF */  sw         $ra, 0x34($sp)
/* 51954 80061154 2400B5AF */  sw         $s5, 0x24($sp)
/* 51958 80061158 3000F58C */  lw         $s5, 0x30($a3)
.L8006115C:
/* 5195C 8006115C 000060AC */  sw         $zero, (0x1F800000 & 0xFFFF)($v1)
/* 51960 80061160 04006324 */  addiu      $v1, $v1, %lo(D_1F800004)
/* 51964 80061164 2B108300 */  sltu       $v0, $a0, $v1
/* 51968 80061168 FCFF4010 */  beqz       $v0, .L8006115C
/* 5196C 8006116C 00100224 */   addiu     $v0, $zero, 0x1000
/* 51970 80061170 21200000 */  addu       $a0, $zero, $zero
/* 51974 80061174 801F013C */  lui        $at, (0x1F800000 >> 16)
/* 51978 80061178 000022A4 */  sh         $v0, (0x1F800000 & 0xFFFF)($at)
/* 5197C 8006117C 801F013C */  lui        $at, (0x1F800008 >> 16)
/* 51980 80061180 080022A4 */  sh         $v0, (0x1F800008 & 0xFFFF)($at)
/* 51984 80061184 801F013C */  lui        $at, (0x1F800010 >> 16)
/* 51988 80061188 100022A4 */  sh         $v0, (0x1F800010 & 0xFFFF)($at)
/* 5198C 8006118C FBEE010C */  jal        RotMatrixY
/* 51990 80061190 801F053C */   lui       $a1, (0x1F800000 >> 16)
/* 51994 80061194 0A80043C */  lui        $a0, %hi(GeomEnv)
/* 51998 80061198 40B18424 */  addiu      $a0, $a0, %lo(GeomEnv)
/* 5199C 8006119C 08008294 */  lhu        $v0, 0x8($a0)
/* 519A0 800611A0 00000000 */  nop
/* 519A4 800611A4 2310C202 */  subu       $v0, $s6, $v0
/* 519A8 800611A8 801F013C */  lui        $at, (0x1F800044 >> 16)
/* 519AC 800611AC 440022A4 */  sh         $v0, (0x1F800044 & 0xFFFF)($at)
/* 519B0 800611B0 0C008394 */  lhu        $v1, 0xC($a0)
/* 519B4 800611B4 10008294 */  lhu        $v0, 0x10($a0)
/* 519B8 800611B8 18008424 */  addiu      $a0, $a0, 0x18
/* 519BC 800611BC 2318E302 */  subu       $v1, $s7, $v1
/* 519C0 800611C0 2310C203 */  subu       $v0, $fp, $v0
/* 519C4 800611C4 801F013C */  lui        $at, (0x1F800046 >> 16)
/* 519C8 800611C8 460023A4 */  sh         $v1, (0x1F800046 & 0xFFFF)($at)
/* 519CC 800611CC 801F013C */  lui        $at, (0x1F800048 >> 16)
/* 519D0 800611D0 480022A4 */  sh         $v0, (0x1F800048 & 0xFFFF)($at)
/* 519D4 800611D4 00008C8C */  lw         $t4, 0x0($a0)
/* 519D8 800611D8 04008D8C */  lw         $t5, 0x4($a0)
/* 519DC 800611DC 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
/* 519E0 800611E0 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
/* 519E4 800611E4 08008C8C */  lw         $t4, 0x8($a0)
/* 519E8 800611E8 0C008D8C */  lw         $t5, 0xC($a0)
/* 519EC 800611EC 10008E8C */  lw         $t6, 0x10($a0)
/* 519F0 800611F0 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
/* 519F4 800611F4 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
/* 519F8 800611F8 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
/* 519FC 800611FC 000040CA */  lwc2       $0, 0x0($s2)
/* 51A00 80061200 040041CA */  lwc2       $1, 0x4($s2)
/* 51A04 80061204 00000000 */  nop
/* 51A08 80061208 00000000 */  nop
/* 51A0C 8006120C 1260484A */  MVMVA      1, 0, 0, 3, 0
/* 51A10 80061210 000039EA */  swc2       $25, 0x0($s1)
/* 51A14 80061214 04003AEA */  swc2       $26, 0x4($s1) /* handwritten instruction */
/* 51A18 80061218 08003BEA */  swc2       $27, 0x8($s1) /* handwritten instruction */
/* 51A1C 8006121C 00002C8E */  lw         $t4, 0x0($s1)
/* 51A20 80061220 04002D8E */  lw         $t5, 0x4($s1)
/* 51A24 80061224 08002E8E */  lw         $t6, 0x8($s1)
/* 51A28 80061228 0028CC48 */  ctc2       $t4, $5 /* handwritten instruction */
/* 51A2C 8006122C 0030CD48 */  ctc2       $t5, $6 /* handwritten instruction */
/* 51A30 80061230 0038CE48 */  ctc2       $t6, $7 /* handwritten instruction */
/* 51A34 80061234 0A80023C */  lui        $v0, %hi(GeomEnv + 0x18)
/* 51A38 80061238 58B14224 */  addiu      $v0, $v0, %lo(GeomEnv + 0x18)
/* 51A3C 8006123C 00004C8C */  lw         $t4, 0x0($v0)
/* 51A40 80061240 04004D8C */  lw         $t5, 0x4($v0)
/* 51A44 80061244 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
/* 51A48 80061248 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
/* 51A4C 8006124C 08004C8C */  lw         $t4, 0x8($v0)
/* 51A50 80061250 0C004D8C */  lw         $t5, 0xC($v0)
/* 51A54 80061254 10004E8C */  lw         $t6, 0x10($v0)
/* 51A58 80061258 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
/* 51A5C 8006125C 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
/* 51A60 80061260 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
/* 51A64 80061264 801F033C */  lui        $v1, (0x1F800002 >> 16)
/* 51A68 80061268 00006C94 */  lhu        $t4, (0x1F800000 & 0xFFFF)($v1)
/* 51A6C 8006126C 06006D94 */  lhu        $t5, (0x1F800006 & 0xFFFF)($v1)
/* 51A70 80061270 0C006E94 */  lhu        $t6, (0x1F80000C & 0xFFFF)($v1)
/* 51A74 80061274 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
/* 51A78 80061278 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
/* 51A7C 8006127C 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
/* 51A80 80061280 00000000 */  nop
/* 51A84 80061284 00000000 */  nop
/* 51A88 80061288 12E0494A */  MVMVA      1, 0, 3, 3, 0
/* 51A8C 8006128C 801F023C */  lui        $v0, (0x1F800020 >> 16)
/* 51A90 80061290 20004234 */  ori        $v0, $v0, (0x1F800020 & 0xFFFF)
/* 51A94 80061294 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
/* 51A98 80061298 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
/* 51A9C 8006129C 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
/* 51AA0 800612A0 00004CA4 */  sh         $t4, 0x0($v0)
/* 51AA4 800612A4 06004DA4 */  sh         $t5, 0x6($v0)
/* 51AA8 800612A8 0C004EA4 */  sh         $t6, 0xC($v0)
/* 51AAC 800612AC 02006334 */  ori        $v1, $v1, (0x1F800002 & 0xFFFF)
/* 51AB0 800612B0 00006C94 */  lhu        $t4, 0x0($v1)
/* 51AB4 800612B4 06006D94 */  lhu        $t5, 0x6($v1)
/* 51AB8 800612B8 0C006E94 */  lhu        $t6, 0xC($v1)
/* 51ABC 800612BC 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
/* 51AC0 800612C0 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
/* 51AC4 800612C4 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
/* 51AC8 800612C8 00000000 */  nop
/* 51ACC 800612CC 00000000 */  nop
/* 51AD0 800612D0 12E0494A */  MVMVA      1, 0, 3, 3, 0
/* 51AD4 800612D4 801F023C */  lui        $v0, (0x1F800022 >> 16)
/* 51AD8 800612D8 22004234 */  ori        $v0, $v0, (0x1F800022 & 0xFFFF)
/* 51ADC 800612DC 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
/* 51AE0 800612E0 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
/* 51AE4 800612E4 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
/* 51AE8 800612E8 00004CA4 */  sh         $t4, 0x0($v0)
/* 51AEC 800612EC 06004DA4 */  sh         $t5, 0x6($v0)
/* 51AF0 800612F0 0C004EA4 */  sh         $t6, 0xC($v0)
/* 51AF4 800612F4 801F033C */  lui        $v1, (0x1F800004 >> 16)
/* 51AF8 800612F8 04006334 */  ori        $v1, $v1, (0x1F800004 & 0xFFFF)
/* 51AFC 800612FC 00006C94 */  lhu        $t4, 0x0($v1)
/* 51B00 80061300 06006D94 */  lhu        $t5, 0x6($v1)
/* 51B04 80061304 0C006E94 */  lhu        $t6, 0xC($v1)
/* 51B08 80061308 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
/* 51B0C 8006130C 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
/* 51B10 80061310 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
/* 51B14 80061314 00000000 */  nop
/* 51B18 80061318 00000000 */  nop
/* 51B1C 8006131C 12E0494A */  MVMVA      1, 0, 3, 3, 0
/* 51B20 80061320 801F023C */  lui        $v0, (0x1F800024 >> 16)
/* 51B24 80061324 24004234 */  ori        $v0, $v0, (0x1F800024 & 0xFFFF)
/* 51B28 80061328 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
/* 51B2C 8006132C 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
/* 51B30 80061330 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
/* 51B34 80061334 00004CA4 */  sh         $t4, 0x0($v0)
/* 51B38 80061338 06004DA4 */  sh         $t5, 0x6($v0)
/* 51B3C 8006133C 0C004EA4 */  sh         $t6, 0xC($v0)
/* 51B40 80061340 801F033C */  lui        $v1, (0x1F800020 >> 16)
/* 51B44 80061344 20006334 */  ori        $v1, $v1, (0x1F800020 & 0xFFFF)
/* 51B48 80061348 00006C8C */  lw         $t4, 0x0($v1)
/* 51B4C 8006134C 04006D8C */  lw         $t5, 0x4($v1)
/* 51B50 80061350 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
/* 51B54 80061354 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
/* 51B58 80061358 08006C8C */  lw         $t4, 0x8($v1)
/* 51B5C 8006135C 0C006D8C */  lw         $t5, 0xC($v1)
/* 51B60 80061360 10006E8C */  lw         $t6, 0x10($v1)
/* 51B64 80061364 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
/* 51B68 80061368 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
/* 51B6C 8006136C 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
/* 51B70 80061370 1000A01A */  blez       $s5, .L800613B4
/* 51B74 80061374 2110A002 */   addu      $v0, $s5, $zero
.L80061378:
/* 51B78 80061378 000060CA */  lwc2       $0, 0x0($s3)
/* 51B7C 8006137C 040061CA */  lwc2       $1, 0x4($s3)
/* 51B80 80061380 00000000 */  nop
/* 51B84 80061384 00000000 */  nop
/* 51B88 80061388 0100184A */  RTPS
/* 51B8C 8006138C 00000EEA */  swc2       $14, 0x0($s0)
/* 51B90 80061390 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
/* 51B94 80061394 00000000 */  nop
/* 51B98 80061398 C3600C00 */  sra        $t4, $t4, 3
/* 51B9C 8006139C 00008CAE */  sw         $t4, 0x0($s4)
/* 51BA0 800613A0 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 51BA4 800613A4 04009426 */  addiu      $s4, $s4, 0x4
/* 51BA8 800613A8 04001026 */  addiu      $s0, $s0, 0x4
/* 51BAC 800613AC F2FF4014 */  bnez       $v0, .L80061378
/* 51BB0 800613B0 08007326 */   addiu     $s3, $s3, 0x8
.L800613B4:
/* 51BB4 800613B4 3400BF8F */  lw         $ra, 0x34($sp)
/* 51BB8 800613B8 3000BE8F */  lw         $fp, 0x30($sp)
/* 51BBC 800613BC 2C00B78F */  lw         $s7, 0x2C($sp)
/* 51BC0 800613C0 2800B68F */  lw         $s6, 0x28($sp)
/* 51BC4 800613C4 2400B58F */  lw         $s5, 0x24($sp)
/* 51BC8 800613C8 2000B48F */  lw         $s4, 0x20($sp)
/* 51BCC 800613CC 1C00B38F */  lw         $s3, 0x1C($sp)
/* 51BD0 800613D0 1800B28F */  lw         $s2, 0x18($sp)
/* 51BD4 800613D4 1400B18F */  lw         $s1, 0x14($sp)
/* 51BD8 800613D8 1000B08F */  lw         $s0, 0x10($sp)
/* 51BDC 800613DC 01000224 */  addiu      $v0, $zero, 0x1
/* 51BE0 800613E0 0800E003 */  jr         $ra
/* 51BE4 800613E4 3800BD27 */   addiu     $sp, $sp, 0x38
.size CalcCellVerticesRotation, . - CalcCellVerticesRotation
