.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawLevelForGrab
/* 15BA4 800253A4 70FEBD27 */  addiu      $sp, $sp, -0x190
/* 15BA8 800253A8 8801BFAF */  sw         $ra, 0x188($sp)
/* 15BAC 800253AC 3C89010C */  jal        ResetShadows
/* 15BB0 800253B0 00000000 */   nop
/* 15BB4 800253B4 0164010C */  jal        TextResetText
/* 15BB8 800253B8 00000000 */   nop
/* 15BBC 800253BC 9549010C */  jal        ResetBoxes
/* 15BC0 800253C0 00000000 */   nop
/* 15BC4 800253C4 1E5F000C */  jal        CalculateScrollPosition
/* 15BC8 800253C8 00000000 */   nop
/* 15BCC 800253CC A1E8000C */  jal        CameraMan
/* 15BD0 800253D0 00000000 */   nop
/* 15BD4 800253D4 16EB000C */  jal        UpdateCamera
/* 15BD8 800253D8 00000000 */   nop
/* 15BDC 800253DC 4AE9000C */  jal        UpdateCameraMatrix
/* 15BE0 800253E0 00000000 */   nop
/* 15BE4 800253E4 9490010C */  jal        DrawLevel
/* 15BE8 800253E8 00000000 */   nop
/* 15BEC 800253EC 1000A327 */  addiu      $v1, $sp, 0x10
/* 15BF0 800253F0 0980023C */  lui        $v0, %hi(ETActor)
/* 15BF4 800253F4 B05A4224 */  addiu      $v0, $v0, %lo(ETActor)
/* 15BF8 800253F8 10004824 */  addiu      $t0, $v0, 0x10
/* 15BFC 800253FC 80014424 */  addiu      $a0, $v0, 0x180
.L80025400:
/* 15C00 80025400 0000058D */  lw         $a1, 0x0($t0)
/* 15C04 80025404 0400068D */  lw         $a2, 0x4($t0)
/* 15C08 80025408 0800078D */  lw         $a3, 0x8($t0)
/* 15C0C 8002540C 0C00098D */  lw         $t1, 0xC($t0)
/* 15C10 80025410 000065AC */  sw         $a1, 0x0($v1)
/* 15C14 80025414 040066AC */  sw         $a2, 0x4($v1)
/* 15C18 80025418 080067AC */  sw         $a3, 0x8($v1)
/* 15C1C 8002541C 0C0069AC */  sw         $t1, 0xC($v1)
/* 15C20 80025420 10000825 */  addiu      $t0, $t0, 0x10
/* 15C24 80025424 F6FF0415 */  bne        $t0, $a0, .L80025400
/* 15C28 80025428 10006324 */   addiu     $v1, $v1, 0x10
/* 15C2C 8002542C 0000448C */  lw         $a0, 0x0($v0)
/* 15C30 80025430 0400458C */  lw         $a1, 0x4($v0)
/* 15C34 80025434 0800468C */  lw         $a2, 0x8($v0)
/* 15C38 80025438 0C00478C */  lw         $a3, 0xC($v0)
/* 15C3C 8002543C 00000A8D */  lw         $t2, 0x0($t0)
/* 15C40 80025440 04000B8D */  lw         $t3, 0x4($t0)
/* 15C44 80025444 00006AAC */  sw         $t2, 0x0($v1)
/* 15C48 80025448 105A000C */  jal        DrawETActor
/* 15C4C 8002544C 04006BAC */   sw        $t3, 0x4($v1)
/* 15C50 80025450 8C47010C */  jal        DrawBoxes
/* 15C54 80025454 00000000 */   nop
/* 15C58 80025458 8460010C */  jal        TextDrawText
/* 15C5C 8002545C 00000000 */   nop
/* 15C60 80025460 8801BF8F */  lw         $ra, 0x188($sp)
/* 15C64 80025464 00000000 */  nop
/* 15C68 80025468 0800E003 */  jr         $ra
/* 15C6C 8002546C 9001BD27 */   addiu     $sp, $sp, 0x190
.size DrawLevelForGrab, . - DrawLevelForGrab
