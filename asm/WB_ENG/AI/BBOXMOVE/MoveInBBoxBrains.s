.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MoveInBBoxBrains
/* 359E0 800451E0 A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 359E4 800451E4 4800B2AF */  sw         $s2, 0x48($sp)
/* 359E8 800451E8 21908000 */  addu       $s2, $a0, $zero
/* 359EC 800451EC 0100043C */  lui        $a0, (0x10000 >> 16)
/* 359F0 800451F0 4400B1AF */  sw         $s1, 0x44($sp)
/* 359F4 800451F4 2188A000 */  addu       $s1, $a1, $zero
/* 359F8 800451F8 5400BFAF */  sw         $ra, 0x54($sp)
/* 359FC 800451FC 5000B4AF */  sw         $s4, 0x50($sp)
/* 35A00 80045200 4C00B3AF */  sw         $s3, 0x4C($sp)
/* 35A04 80045204 D140010C */  jal        u32Random
/* 35A08 80045208 4000B0AF */   sw        $s0, 0x40($sp)
/* 35A0C 8004520C 21184000 */  addu       $v1, $v0, $zero
/* 35A10 80045210 1400228E */  lw         $v0, 0x14($s1)
/* 35A14 80045214 00000000 */  nop
/* 35A18 80045218 98004014 */  bnez       $v0, .L8004547C
/* 35A1C 8004521C 6C005026 */   addiu     $s0, $s2, 0x6C
/* 35A20 80045220 0800228E */  lw         $v0, 0x8($s1)
/* 35A24 80045224 00000000 */  nop
/* 35A28 80045228 04004010 */  beqz       $v0, .L8004523C
/* 35A2C 8004522C 00000000 */   nop
/* 35A30 80045230 040022AE */  sw         $v0, 0x4($s1)
/* 35A34 80045234 95140108 */  j          .L80045254
/* 35A38 80045238 080020AE */   sw        $zero, 0x8($s1)
.L8004523C:
/* 35A3C 8004523C FF7F0224 */  addiu      $v0, $zero, 0x7FFF
/* 35A40 80045240 2A104300 */  slt        $v0, $v0, $v1
/* 35A44 80045244 02004014 */  bnez       $v0, .L80045250
/* 35A48 80045248 00100224 */   addiu     $v0, $zero, 0x1000
/* 35A4C 8004524C 01100224 */  addiu      $v0, $zero, 0x1001
.L80045250:
/* 35A50 80045250 040022AE */  sw         $v0, 0x4($s1)
.L80045254:
/* 35A54 80045254 1E000224 */  addiu      $v0, $zero, 0x1E
/* 35A58 80045258 0400238E */  lw         $v1, 0x4($s1)
/* 35A5C 8004525C 01101324 */  addiu      $s3, $zero, 0x1001
/* 35A60 80045260 4B007310 */  beq        $v1, $s3, .L80045390
/* 35A64 80045264 140022AE */   sw        $v0, 0x14($s1)
/* 35A68 80045268 0210622C */  sltiu      $v0, $v1, 0x1002
/* 35A6C 8004526C 05004010 */  beqz       $v0, .L80045284
/* 35A70 80045270 00100224 */   addiu     $v0, $zero, 0x1000
/* 35A74 80045274 08006210 */  beq        $v1, $v0, .L80045298
/* 35A78 80045278 6C005026 */   addiu     $s0, $s2, 0x6C
/* 35A7C 8004527C 10150108 */  j          .L80045440
/* 35A80 80045280 00000000 */   nop
.L80045284:
/* 35A84 80045284 02100224 */  addiu      $v0, $zero, 0x1002
/* 35A88 80045288 18006210 */  beq        $v1, $v0, .L800452EC
/* 35A8C 8004528C 6C005026 */   addiu     $s0, $s2, 0x6C
/* 35A90 80045290 10150108 */  j          .L80045440
/* 35A94 80045294 00000000 */   nop
.L80045298:
/* 35A98 80045298 21204002 */  addu       $a0, $s2, $zero
/* 35A9C 8004529C 21280000 */  addu       $a1, $zero, $zero
/* 35AA0 800452A0 06000624 */  addiu      $a2, $zero, 0x6
/* 35AA4 800452A4 8FE2000C */  jal        SetAnimWithInterp
/* 35AA8 800452A8 2C014726 */   addiu     $a3, $s2, 0x12C
/* 35AAC 800452AC 6C005026 */  addiu      $s0, $s2, 0x6C
/* 35AB0 800452B0 21200002 */  addu       $a0, $s0, $zero
/* 35AB4 800452B4 73FB000C */  jal        MotionPhysics_Halt
/* 35AB8 800452B8 440140AE */   sw        $zero, 0x144($s2)
/* 35ABC 800452BC 11100424 */  addiu      $a0, $zero, 0x1011
/* 35AC0 800452C0 21284002 */  addu       $a1, $s2, $zero
/* 35AC4 800452C4 0C00228E */  lw         $v0, 0xC($s1)
/* 35AC8 800452C8 21300000 */  addu       $a2, $zero, $zero
/* 35ACC 800452CC 180020AE */  sw         $zero, 0x18($s1)
/* 35AD0 800452D0 1C0020AE */  sw         $zero, 0x1C($s1)
/* 35AD4 800452D4 200020AE */  sw         $zero, 0x20($s1)
/* 35AD8 800452D8 080033AE */  sw         $s3, 0x8($s1)
/* 35ADC 800452DC 6F4A010C */  jal        pxm_sendevent
/* 35AE0 800452E0 140022AE */   sw        $v0, 0x14($s1)
/* 35AE4 800452E4 10150108 */  j          .L80045440
/* 35AE8 800452E8 00000000 */   nop
.L800452EC:
/* 35AEC 800452EC 21204002 */  addu       $a0, $s2, $zero
/* 35AF0 800452F0 01000524 */  addiu      $a1, $zero, 0x1
/* 35AF4 800452F4 06000624 */  addiu      $a2, $zero, 0x6
/* 35AF8 800452F8 0000428E */  lw         $v0, 0x0($s2)
/* 35AFC 800452FC 0400438E */  lw         $v1, 0x4($s2)
/* 35B00 80045300 0800488E */  lw         $t0, 0x8($s2)
/* 35B04 80045304 2C014726 */  addiu      $a3, $s2, 0x12C
/* 35B08 80045308 3000A2AF */  sw         $v0, 0x30($sp)
/* 35B0C 8004530C 3400A3AF */  sw         $v1, 0x34($sp)
/* 35B10 80045310 8FE2000C */  jal        SetAnimWithInterp
/* 35B14 80045314 3800A8AF */   sw        $t0, 0x38($sp)
/* 35B18 80045318 3000A427 */  addiu      $a0, $sp, 0x30
/* 35B1C 8004531C 28002526 */  addiu      $a1, $s1, 0x28
/* 35B20 80045320 F4010624 */  addiu      $a2, $zero, 0x1F4
/* 35B24 80045324 2000A727 */  addiu      $a3, $sp, 0x20
/* 35B28 80045328 01000224 */  addiu      $v0, $zero, 0x1
/* 35B2C 8004532C 1E000324 */  addiu      $v1, $zero, 0x1E
/* 35B30 80045330 440142AE */  sw         $v0, 0x144($s2)
/* 35B34 80045334 DE13010C */  jal        GetDirVector
/* 35B38 80045338 140023AE */   sw        $v1, 0x14($s1)
/* 35B3C 8004533C 180020AE */  sw         $zero, 0x18($s1)
/* 35B40 80045340 1C0020AE */  sw         $zero, 0x1C($s1)
/* 35B44 80045344 200020AE */  sw         $zero, 0x20($s1)
/* 35B48 80045348 2000A58F */  lw         $a1, 0x20($sp)
/* 35B4C 8004534C 2800A48F */  lw         $a0, 0x28($sp)
/* 35B50 80045350 0200A104 */  bgez       $a1, .L8004535C
/* 35B54 80045354 2118A000 */   addu      $v1, $a1, $zero
/* 35B58 80045358 23180300 */  negu       $v1, $v1
.L8004535C:
/* 35B5C 8004535C 02008104 */  bgez       $a0, .L80045368
/* 35B60 80045360 21108000 */   addu      $v0, $a0, $zero
/* 35B64 80045364 23100200 */  negu       $v0, $v0
.L80045368:
/* 35B68 80045368 2A104300 */  slt        $v0, $v0, $v1
/* 35B6C 8004536C 03004010 */  beqz       $v0, .L8004537C
/* 35B70 80045370 00000000 */   nop
/* 35B74 80045374 E0140108 */  j          .L80045380
/* 35B78 80045378 180025AE */   sw        $a1, 0x18($s1)
.L8004537C:
/* 35B7C 8004537C 200024AE */  sw         $a0, 0x20($s1)
.L80045380:
/* 35B80 80045380 00100224 */  addiu      $v0, $zero, 0x1000
/* 35B84 80045384 080022AE */  sw         $v0, 0x8($s1)
/* 35B88 80045388 10150108 */  j          .L80045440
/* 35B8C 8004538C 6C005026 */   addiu     $s0, $s2, 0x6C
.L80045390:
/* 35B90 80045390 6C005026 */  addiu      $s0, $s2, 0x6C
/* 35B94 80045394 73FB000C */  jal        MotionPhysics_Halt
/* 35B98 80045398 21200002 */   addu      $a0, $s0, $zero
/* 35B9C 8004539C 21980000 */  addu       $s3, $zero, $zero
/* 35BA0 800453A0 21A00000 */  addu       $s4, $zero, $zero
/* 35BA4 800453A4 D140010C */  jal        u32Random
/* 35BA8 800453A8 00100424 */   addiu     $a0, $zero, 0x1000
/* 35BAC 800453AC 01084228 */  slti       $v0, $v0, 0x801
/* 35BB0 800453B0 07004014 */  bnez       $v0, .L800453D0
/* 35BB4 800453B4 00000000 */   nop
/* 35BB8 800453B8 340D848F */  lw         $a0, %gp_rel(egghedgerandom)($gp)
/* 35BBC 800453BC D140010C */  jal        u32Random
/* 35BC0 800453C0 00000000 */   nop
/* 35BC4 800453C4 300D838F */  lw         $v1, %gp_rel(egghedgebase)($gp)
/* 35BC8 800453C8 FA140108 */  j          .L800453E8
/* 35BCC 800453CC 21986200 */   addu      $s3, $v1, $v0
.L800453D0:
/* 35BD0 800453D0 340D848F */  lw         $a0, %gp_rel(egghedgerandom)($gp)
/* 35BD4 800453D4 D140010C */  jal        u32Random
/* 35BD8 800453D8 00000000 */   nop
/* 35BDC 800453DC 300D838F */  lw         $v1, %gp_rel(egghedgebase)($gp)
/* 35BE0 800453E0 00000000 */  nop
/* 35BE4 800453E4 21A06200 */  addu       $s4, $v1, $v0
.L800453E8:
/* 35BE8 800453E8 D140010C */  jal        u32Random
/* 35BEC 800453EC 00100424 */   addiu     $a0, $zero, 0x1000
/* 35BF0 800453F0 01084228 */  slti       $v0, $v0, 0x801
/* 35BF4 800453F4 03004014 */  bnez       $v0, .L80045404
/* 35BF8 800453F8 00000000 */   nop
/* 35BFC 800453FC 02150108 */  j          .L80045408
/* 35C00 80045400 23981300 */   negu      $s3, $s3
.L80045404:
/* 35C04 80045404 23A01400 */  negu       $s4, $s4
.L80045408:
/* 35C08 80045408 21204002 */  addu       $a0, $s2, $zero
/* 35C0C 8004540C 01000524 */  addiu      $a1, $zero, 0x1
/* 35C10 80045410 06000624 */  addiu      $a2, $zero, 0x6
/* 35C14 80045414 8FE2000C */  jal        SetAnimWithInterp
/* 35C18 80045418 2C014726 */   addiu     $a3, $s2, 0x12C
/* 35C1C 8004541C 01000324 */  addiu      $v1, $zero, 0x1
/* 35C20 80045420 440143AE */  sw         $v1, 0x144($s2)
/* 35C24 80045424 1000238E */  lw         $v1, 0x10($s1)
/* 35C28 80045428 00100224 */  addiu      $v0, $zero, 0x1000
/* 35C2C 8004542C 180033AE */  sw         $s3, 0x18($s1)
/* 35C30 80045430 1C0020AE */  sw         $zero, 0x1C($s1)
/* 35C34 80045434 200034AE */  sw         $s4, 0x20($s1)
/* 35C38 80045438 080022AE */  sw         $v0, 0x8($s1)
/* 35C3C 8004543C 140023AE */  sw         $v1, 0x14($s1)
.L80045440:
/* 35C40 80045440 1800258E */  lw         $a1, 0x18($s1)
/* 35C44 80045444 1C00268E */  lw         $a2, 0x1C($s1)
/* 35C48 80045448 2000278E */  lw         $a3, 0x20($s1)
/* 35C4C 8004544C 7BFB000C */  jal        MotionPhysics_AddVectorForce
/* 35C50 80045450 21200002 */   addu      $a0, $s0, $zero
/* 35C54 80045454 2025010C */  jal        CommonActorPostBrains
/* 35C58 80045458 21204002 */   addu      $a0, $s2, $zero
/* 35C5C 8004545C 24004010 */  beqz       $v0, .L800454F0
/* 35C60 80045460 00000000 */   nop
/* 35C64 80045464 1800238E */  lw         $v1, 0x18($s1)
/* 35C68 80045468 1C0020AE */  sw         $zero, 0x1C($s1)
/* 35C6C 8004546C 23100300 */  negu       $v0, $v1
/* 35C70 80045470 180022AE */  sw         $v0, 0x18($s1)
/* 35C74 80045474 3C150108 */  j          .L800454F0
/* 35C78 80045478 200023AE */   sw        $v1, 0x20($s1)
.L8004547C:
/* 35C7C 8004547C 21200002 */  addu       $a0, $s0, $zero
/* 35C80 80045480 1800258E */  lw         $a1, 0x18($s1)
/* 35C84 80045484 1C00268E */  lw         $a2, 0x1C($s1)
/* 35C88 80045488 2000278E */  lw         $a3, 0x20($s1)
/* 35C8C 8004548C FFFF4224 */  addiu      $v0, $v0, -0x1
/* 35C90 80045490 7BFB000C */  jal        MotionPhysics_AddVectorForce
/* 35C94 80045494 140022AE */   sw        $v0, 0x14($s1)
/* 35C98 80045498 0000438E */  lw         $v1, 0x0($s2)
/* 35C9C 8004549C 0400428E */  lw         $v0, 0x4($s2)
/* 35CA0 800454A0 0800458E */  lw         $a1, 0x8($s2)
/* 35CA4 800454A4 21204002 */  addu       $a0, $s2, $zero
/* 35CA8 800454A8 1000A3AF */  sw         $v1, 0x10($sp)
/* 35CAC 800454AC 1400A2AF */  sw         $v0, 0x14($sp)
/* 35CB0 800454B0 2025010C */  jal        CommonActorPostBrains
/* 35CB4 800454B4 1800A5AF */   sw        $a1, 0x18($sp)
/* 35CB8 800454B8 06004014 */  bnez       $v0, .L800454D4
/* 35CBC 800454BC 00000000 */   nop
/* 35CC0 800454C0 3800248E */  lw         $a0, 0x38($s1)
/* 35CC4 800454C4 0F14010C */  jal        PointInPoly
/* 35CC8 800454C8 1000A527 */   addiu     $a1, $sp, 0x10
/* 35CCC 800454CC 08004014 */  bnez       $v0, .L800454F0
/* 35CD0 800454D0 00000000 */   nop
.L800454D4:
/* 35CD4 800454D4 0400228E */  lw         $v0, 0x4($s1)
/* 35CD8 800454D8 02100324 */  addiu      $v1, $zero, 0x1002
/* 35CDC 800454DC 04004310 */  beq        $v0, $v1, .L800454F0
/* 35CE0 800454E0 21200002 */   addu      $a0, $s0, $zero
/* 35CE4 800454E4 140020AE */  sw         $zero, 0x14($s1)
/* 35CE8 800454E8 73FB000C */  jal        MotionPhysics_Halt
/* 35CEC 800454EC 080023AE */   sw        $v1, 0x8($s1)
.L800454F0:
/* 35CF0 800454F0 5400BF8F */  lw         $ra, 0x54($sp)
/* 35CF4 800454F4 5000B48F */  lw         $s4, 0x50($sp)
/* 35CF8 800454F8 4C00B38F */  lw         $s3, 0x4C($sp)
/* 35CFC 800454FC 4800B28F */  lw         $s2, 0x48($sp)
/* 35D00 80045500 4400B18F */  lw         $s1, 0x44($sp)
/* 35D04 80045504 4000B08F */  lw         $s0, 0x40($sp)
/* 35D08 80045508 0800E003 */  jr         $ra
/* 35D0C 8004550C 5800BD27 */   addiu     $sp, $sp, 0x58
.size MoveInBBoxBrains, . - MoveInBBoxBrains
