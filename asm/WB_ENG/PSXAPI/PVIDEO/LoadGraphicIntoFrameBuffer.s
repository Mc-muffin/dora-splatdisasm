.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LoadGraphicIntoFrameBuffer
/* 4C280 8005BA80 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 4C284 8005BA84 1800B2AF */  sw         $s2, 0x18($sp)
/* 4C288 8005BA88 21908000 */  addu       $s2, $a0, $zero
/* 4C28C 8005BA8C 21200000 */  addu       $a0, $zero, $zero
/* 4C290 8005BA90 1000B0AF */  sw         $s0, 0x10($sp)
/* 4C294 8005BA94 2180A000 */  addu       $s0, $a1, $zero
/* 4C298 8005BA98 1400B1AF */  sw         $s1, 0x14($sp)
/* 4C29C 8005BA9C 2188C000 */  addu       $s1, $a2, $zero
/* 4C2A0 8005BAA0 2000BFAF */  sw         $ra, 0x20($sp)
/* 4C2A4 8005BAA4 EBD6010C */  jal        VSync
/* 4C2A8 8005BAA8 1C00B3AF */   sw        $s3, 0x1C($sp)
/* 4C2AC 8005BAAC 21200000 */  addu       $a0, $zero, $zero
/* 4C2B0 8005BAB0 DC1080AF */  sw         $zero, %gp_rel(RenderState)($gp)
/* 4C2B4 8005BAB4 EBD6010C */  jal        VSync
/* 4C2B8 8005BAB8 00000000 */   nop
/* 4C2BC 8005BABC 0B80033C */  lui        $v1, %hi(gDoubleBuffer)
/* 4C2C0 8005BAC0 21986000 */  addu       $s3, $v1, $zero
/* 4C2C4 8005BAC4 06000224 */  addiu      $v0, $zero, 0x6
/* 4C2C8 8005BAC8 E81080AF */  sw         $zero, %gp_rel(UpdateScreenFlag)($gp)
/* 4C2CC 8005BACC E8108497 */  lhu        $a0, %gp_rel(UpdateScreenFlag)($gp)
/* 4C2D0 8005BAD0 78B96324 */  addiu      $v1, $v1, %lo(gDoubleBuffer)
/* 4C2D4 8005BAD4 EC1080AF */  sw         $zero, %gp_rel(UpdateScreenFlag2)($gp)
/* 4C2D8 8005BAD8 F01082AF */  sw         $v0, %gp_rel(RestartScreenCount)($gp)
/* 4C2DC 8005BADC 980064A0 */  sb         $a0, 0x98($v1)
/* 4C2E0 8005BAE0 180064A0 */  sb         $a0, 0x18($v1)
.L8005BAE4:
/* 4C2E4 8005BAE4 36DB010C */  jal        DrawSync
/* 4C2E8 8005BAE8 01000424 */   addiu     $a0, $zero, 0x1
/* 4C2EC 8005BAEC FDFF4014 */  bnez       $v0, .L8005BAE4
/* 4C2F0 8005BAF0 00000000 */   nop
/* 4C2F4 8005BAF4 5D67010C */  jal        InitOrderingTables
/* 4C2F8 8005BAF8 00000000 */   nop
/* 4C2FC 8005BAFC 10DB010C */  jal        SetDispMask
/* 4C300 8005BB00 21200000 */   addu      $a0, $zero, $zero
/* 4C304 8005BB04 21204002 */  addu       $a0, $s2, $zero
/* 4C308 8005BB08 21280002 */  addu       $a1, $s0, $zero
/* 4C30C 8005BB0C EE6B010C */  jal        LoadGraphicIntoFrameBufferX
/* 4C310 8005BB10 21302002 */   addu      $a2, $s1, $zero
/* 4C314 8005BB14 EBD6010C */  jal        VSync
/* 4C318 8005BB18 21200000 */   addu      $a0, $zero, $zero
/* 4C31C 8005BB1C 21200000 */  addu       $a0, $zero, $zero
/* 4C320 8005BB20 DC1080AF */  sw         $zero, %gp_rel(RenderState)($gp)
/* 4C324 8005BB24 EBD6010C */  jal        VSync
/* 4C328 8005BB28 00000000 */   nop
/* 4C32C 8005BB2C E81080AF */  sw         $zero, %gp_rel(UpdateScreenFlag)($gp)
/* 4C330 8005BB30 E8108397 */  lhu        $v1, %gp_rel(UpdateScreenFlag)($gp)
/* 4C334 8005BB34 06000224 */  addiu      $v0, $zero, 0x6
/* 4C338 8005BB38 F01082AF */  sw         $v0, %gp_rel(RestartScreenCount)($gp)
/* 4C33C 8005BB3C 78B96226 */  addiu      $v0, $s3, %lo(gDoubleBuffer)
/* 4C340 8005BB40 EC1080AF */  sw         $zero, %gp_rel(UpdateScreenFlag2)($gp)
/* 4C344 8005BB44 980043A0 */  sb         $v1, 0x98($v0)
/* 4C348 8005BB48 180043A0 */  sb         $v1, 0x18($v0)
.L8005BB4C:
/* 4C34C 8005BB4C 36DB010C */  jal        DrawSync
/* 4C350 8005BB50 01000424 */   addiu     $a0, $zero, 0x1
/* 4C354 8005BB54 FDFF4014 */  bnez       $v0, .L8005BB4C
/* 4C358 8005BB58 00000000 */   nop
/* 4C35C 8005BB5C 5D67010C */  jal        InitOrderingTables
/* 4C360 8005BB60 00000000 */   nop
/* 4C364 8005BB64 E8108293 */  lbu        $v0, %gp_rel(UpdateScreenFlag)($gp)
/* 4C368 8005BB68 F010838F */  lw         $v1, %gp_rel(RestartScreenCount)($gp)
/* 4C36C 8005BB6C 78B96426 */  addiu      $a0, $s3, %lo(gDoubleBuffer)
/* 4C370 8005BB70 980082A0 */  sb         $v0, 0x98($a0)
/* 4C374 8005BB74 08006014 */  bnez       $v1, .L8005BB98
/* 4C378 8005BB78 180082A0 */   sb        $v0, 0x18($a0)
/* 4C37C 8005BB7C 01000224 */  addiu      $v0, $zero, 0x1
/* 4C380 8005BB80 E81082AF */  sw         $v0, %gp_rel(UpdateScreenFlag)($gp)
/* 4C384 8005BB84 E8108397 */  lhu        $v1, %gp_rel(UpdateScreenFlag)($gp)
/* 4C388 8005BB88 00000000 */  nop
/* 4C38C 8005BB8C 980083A0 */  sb         $v1, 0x98($a0)
/* 4C390 8005BB90 EA6E0108 */  j          .L8005BBA8
/* 4C394 8005BB94 180083A0 */   sb        $v1, 0x18($a0)
.L8005BB98:
/* 4C398 8005BB98 FFFF6224 */  addiu      $v0, $v1, -0x1
/* 4C39C 8005BB9C F01082AF */  sw         $v0, %gp_rel(RestartScreenCount)($gp)
/* 4C3A0 8005BBA0 EBD6010C */  jal        VSync
/* 4C3A4 8005BBA4 21200000 */   addu      $a0, $zero, $zero
.L8005BBA8:
/* 4C3A8 8005BBA8 9769010C */  jal        updateScreen
/* 4C3AC 8005BBAC 00000000 */   nop
/* 4C3B0 8005BBB0 10DB010C */  jal        SetDispMask
/* 4C3B4 8005BBB4 01000424 */   addiu     $a0, $zero, 0x1
/* 4C3B8 8005BBB8 2000BF8F */  lw         $ra, 0x20($sp)
/* 4C3BC 8005BBBC 1C00B38F */  lw         $s3, 0x1C($sp)
/* 4C3C0 8005BBC0 1800B28F */  lw         $s2, 0x18($sp)
/* 4C3C4 8005BBC4 1400B18F */  lw         $s1, 0x14($sp)
/* 4C3C8 8005BBC8 1000B08F */  lw         $s0, 0x10($sp)
/* 4C3CC 8005BBCC 0800E003 */  jr         $ra
/* 4C3D0 8005BBD0 2800BD27 */   addiu     $sp, $sp, 0x28
.size LoadGraphicIntoFrameBuffer, . - LoadGraphicIntoFrameBuffer
