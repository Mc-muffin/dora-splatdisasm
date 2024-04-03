.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ResetVRAMWorkSpace
/* 4D284 8005CA84 00340600 */  sll        $a2, $a2, 16
/* 4D288 8005CA88 1000A387 */  lh         $v1, 0x10($sp)
/* 4D28C 8005CA8C 03340600 */  sra        $a2, $a2, 16
/* 4D290 8005CA90 1A00C300 */  div        $zero, $a2, $v1
/* 4D294 8005CA94 00240400 */  sll        $a0, $a0, 16
/* 4D298 8005CA98 03240400 */  sra        $a0, $a0, 16
/* 4D29C 8005CA9C 002C0500 */  sll        $a1, $a1, 16
/* 4D2A0 8005CAA0 032C0500 */  sra        $a1, $a1, 16
/* 4D2A4 8005CAA4 003C0700 */  sll        $a3, $a3, 16
/* 4D2A8 8005CAA8 1400A287 */  lh         $v0, 0x14($sp)
/* 4D2AC 8005CAAC 033C0700 */  sra        $a3, $a3, 16
/* 4D2B0 8005CAB0 081784AF */  sw         $a0, %gp_rel(OrginX)($gp)
/* 4D2B4 8005CAB4 0C1785AF */  sw         $a1, %gp_rel(OrginY)($gp)
/* 4D2B8 8005CAB8 041786AF */  sw         $a2, %gp_rel(Width)($gp)
/* 4D2BC 8005CABC 101787AF */  sw         $a3, %gp_rel(Height)($gp)
/* 4D2C0 8005CAC0 241783AF */  sw         $v1, %gp_rel(CellW)($gp)
/* 4D2C4 8005CAC4 12400000 */  mflo       $t0
/* 4D2C8 8005CAC8 201782AF */  sw         $v0, %gp_rel(CellH)($gp)
/* 4D2CC 8005CACC 02006014 */  bnez       $v1, .L8005CAD8
/* 4D2D0 8005CAD0 00000000 */   nop
/* 4D2D4 8005CAD4 CD010000 */  break      0, 7
.L8005CAD8:
/* 4D2D8 8005CAD8 1A00E200 */  div        $zero, $a3, $v0
/* 4D2DC 8005CADC 181788AF */  sw         $t0, %gp_rel(XCnt)($gp)
/* 4D2E0 8005CAE0 12380000 */  mflo       $a3
/* 4D2E4 8005CAE4 02004014 */  bnez       $v0, .L8005CAF0
/* 4D2E8 8005CAE8 00000000 */   nop
/* 4D2EC 8005CAEC CD010000 */  break      0, 7
.L8005CAF0:
/* 4D2F0 8005CAF0 FF150324 */  addiu      $v1, $zero, 0x15FF
/* 4D2F4 8005CAF4 0C80023C */  lui        $v0, %hi(VRAMGrid)
/* 4D2F8 8005CAF8 38974224 */  addiu      $v0, $v0, %lo(VRAMGrid)
/* 4D2FC 8005CAFC FF154224 */  addiu      $v0, $v0, 0x15FF
/* 4D300 8005CB00 1C1787AF */  sw         $a3, %gp_rel(YCnt)($gp)
.L8005CB04:
/* 4D304 8005CB04 000040A0 */  sb         $zero, 0x0($v0)
/* 4D308 8005CB08 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 4D30C 8005CB0C FDFF6104 */  bgez       $v1, .L8005CB04
/* 4D310 8005CB10 FFFF4224 */   addiu     $v0, $v0, -0x1
/* 4D314 8005CB14 0800E003 */  jr         $ra
/* 4D318 8005CB18 00000000 */   nop
.size ResetVRAMWorkSpace, . - ResetVRAMWorkSpace
