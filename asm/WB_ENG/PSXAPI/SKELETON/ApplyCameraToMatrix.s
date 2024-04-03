.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel ApplyCameraToMatrix
/* 582F8 80067AF8 801F093C */  lui        $t1, (0x1F800020 >> 16)
/* 582FC 80067AFC 20002935 */  ori        $t1, $t1, (0x1F800020 & 0xFFFF)
/* 58300 80067B00 801F073C */  lui        $a3, (0x1F8000A0 >> 16)
/* 58304 80067B04 A000E734 */  ori        $a3, $a3, (0x1F8000A0 & 0xFFFF)
/* 58308 80067B08 801F083C */  lui        $t0, (0x1F8000B0 >> 16)
/* 5830C 80067B0C B0000835 */  ori        $t0, $t0, (0x1F8000B0 & 0xFFFF)
/* 58310 80067B10 0A80063C */  lui        $a2, %hi(GeomEnv + 0x18)
/* 58314 80067B14 58B1C624 */  addiu      $a2, $a2, %lo(GeomEnv + 0x18)
/* 58318 80067B18 0000CC8C */  lw         $t4, 0x0($a2)
/* 5831C 80067B1C 0400CD8C */  lw         $t5, 0x4($a2)
/* 58320 80067B20 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
/* 58324 80067B24 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
/* 58328 80067B28 0800CC8C */  lw         $t4, 0x8($a2)
/* 5832C 80067B2C 0C00CD8C */  lw         $t5, 0xC($a2)
/* 58330 80067B30 1000CE8C */  lw         $t6, 0x10($a2)
/* 58334 80067B34 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
/* 58338 80067B38 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
/* 5833C 80067B3C 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
/* 58340 80067B40 00008C94 */  lhu        $t4, 0x0($a0)
/* 58344 80067B44 06008D94 */  lhu        $t5, 0x6($a0)
/* 58348 80067B48 0C008E94 */  lhu        $t6, 0xC($a0)
/* 5834C 80067B4C 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
/* 58350 80067B50 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
/* 58354 80067B54 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
/* 58358 80067B58 00000000 */  nop
/* 5835C 80067B5C 00000000 */  nop
/* 58360 80067B60 12E0494A */  MVMVA      1, 0, 3, 3, 0
/* 58364 80067B64 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
/* 58368 80067B68 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
/* 5836C 80067B6C 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
/* 58370 80067B70 00002CA5 */  sh         $t4, 0x0($t1)
/* 58374 80067B74 06002DA5 */  sh         $t5, 0x6($t1)
/* 58378 80067B78 0C002EA5 */  sh         $t6, 0xC($t1)
/* 5837C 80067B7C 02008224 */  addiu      $v0, $a0, 0x2
/* 58380 80067B80 00004C94 */  lhu        $t4, 0x0($v0)
/* 58384 80067B84 06004D94 */  lhu        $t5, 0x6($v0)
/* 58388 80067B88 0C004E94 */  lhu        $t6, 0xC($v0)
/* 5838C 80067B8C 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
/* 58390 80067B90 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
/* 58394 80067B94 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
/* 58398 80067B98 00000000 */  nop
/* 5839C 80067B9C 00000000 */  nop
/* 583A0 80067BA0 12E0494A */  MVMVA      1, 0, 3, 3, 0
/* 583A4 80067BA4 801F023C */  lui        $v0, (0x1F800022 >> 16)
/* 583A8 80067BA8 22004234 */  ori        $v0, $v0, (0x1F800022 & 0xFFFF)
/* 583AC 80067BAC 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
/* 583B0 80067BB0 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
/* 583B4 80067BB4 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
/* 583B8 80067BB8 00004CA4 */  sh         $t4, 0x0($v0)
/* 583BC 80067BBC 06004DA4 */  sh         $t5, 0x6($v0)
/* 583C0 80067BC0 0C004EA4 */  sh         $t6, 0xC($v0)
/* 583C4 80067BC4 04008324 */  addiu      $v1, $a0, 0x4
/* 583C8 80067BC8 00006C94 */  lhu        $t4, 0x0($v1)
/* 583CC 80067BCC 06006D94 */  lhu        $t5, 0x6($v1)
/* 583D0 80067BD0 0C006E94 */  lhu        $t6, 0xC($v1)
/* 583D4 80067BD4 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
/* 583D8 80067BD8 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
/* 583DC 80067BDC 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
/* 583E0 80067BE0 00000000 */  nop
/* 583E4 80067BE4 00000000 */  nop
/* 583E8 80067BE8 12E0494A */  MVMVA      1, 0, 3, 3, 0
/* 583EC 80067BEC 801F023C */  lui        $v0, (0x1F800024 >> 16)
/* 583F0 80067BF0 24004234 */  ori        $v0, $v0, (0x1F800024 & 0xFFFF)
/* 583F4 80067BF4 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
/* 583F8 80067BF8 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
/* 583FC 80067BFC 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
/* 58400 80067C00 00004CA4 */  sh         $t4, 0x0($v0)
/* 58404 80067C04 06004DA4 */  sh         $t5, 0x6($v0)
/* 58408 80067C08 0C004EA4 */  sh         $t6, 0xC($v0)
/* 5840C 80067C0C E8FFC524 */  addiu      $a1, $a2, -0x18
/* 58410 80067C10 14008294 */  lhu        $v0, 0x14($a0)
/* 58414 80067C14 0800A394 */  lhu        $v1, 0x8($a1)
/* 58418 80067C18 00000000 */  nop
/* 5841C 80067C1C 23104300 */  subu       $v0, $v0, $v1
/* 58420 80067C20 0000E2A4 */  sh         $v0, 0x0($a3)
/* 58424 80067C24 18008394 */  lhu        $v1, 0x18($a0)
/* 58428 80067C28 0C00A294 */  lhu        $v0, 0xC($a1)
/* 5842C 80067C2C 00000000 */  nop
/* 58430 80067C30 23186200 */  subu       $v1, $v1, $v0
/* 58434 80067C34 0200E3A4 */  sh         $v1, 0x2($a3)
/* 58438 80067C38 1C008294 */  lhu        $v0, 0x1C($a0)
/* 5843C 80067C3C 1000A394 */  lhu        $v1, 0x10($a1)
/* 58440 80067C40 00000000 */  nop
/* 58444 80067C44 23104300 */  subu       $v0, $v0, $v1
/* 58448 80067C48 0400E2A4 */  sh         $v0, 0x4($a3)
/* 5844C 80067C4C 0000CC8C */  lw         $t4, 0x0($a2)
/* 58450 80067C50 0400CD8C */  lw         $t5, 0x4($a2)
/* 58454 80067C54 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
/* 58458 80067C58 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
/* 5845C 80067C5C 0800CC8C */  lw         $t4, 0x8($a2)
/* 58460 80067C60 0C00CD8C */  lw         $t5, 0xC($a2)
/* 58464 80067C64 1000CE8C */  lw         $t6, 0x10($a2)
/* 58468 80067C68 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
/* 5846C 80067C6C 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
/* 58470 80067C70 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
/* 58474 80067C74 0000E0C8 */  lwc2       $0, 0x0($a3)
/* 58478 80067C78 0400E1C8 */  lwc2       $1, 0x4($a3)
/* 5847C 80067C7C 00000000 */  nop
/* 58480 80067C80 00000000 */  nop
/* 58484 80067C84 1260484A */  MVMVA      1, 0, 0, 3, 0
/* 58488 80067C88 000019E9 */  swc2       $25, 0x0($t0)
/* 5848C 80067C8C 04001AE9 */  swc2       $26, 0x4($t0) /* handwritten instruction */
/* 58490 80067C90 08001BE9 */  swc2       $27, 0x8($t0) /* handwritten instruction */
/* 58494 80067C94 00000C8D */  lw         $t4, 0x0($t0)
/* 58498 80067C98 04000D8D */  lw         $t5, 0x4($t0)
/* 5849C 80067C9C 08000E8D */  lw         $t6, 0x8($t0)
/* 584A0 80067CA0 0028CC48 */  ctc2       $t4, $5 /* handwritten instruction */
/* 584A4 80067CA4 0030CD48 */  ctc2       $t5, $6 /* handwritten instruction */
/* 584A8 80067CA8 0038CE48 */  ctc2       $t6, $7 /* handwritten instruction */
/* 584AC 80067CAC 00002C8D */  lw         $t4, 0x0($t1)
/* 584B0 80067CB0 04002D8D */  lw         $t5, 0x4($t1)
/* 584B4 80067CB4 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
/* 584B8 80067CB8 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
/* 584BC 80067CBC 08002C8D */  lw         $t4, 0x8($t1)
/* 584C0 80067CC0 0C002D8D */  lw         $t5, 0xC($t1)
/* 584C4 80067CC4 10002E8D */  lw         $t6, 0x10($t1)
/* 584C8 80067CC8 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
/* 584CC 80067CCC 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
/* 584D0 80067CD0 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
/* 584D4 80067CD4 0800E003 */  jr         $ra
/* 584D8 80067CD8 00000000 */   nop
.size ApplyCameraToMatrix, . - ApplyCameraToMatrix
