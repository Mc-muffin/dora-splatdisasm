.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetRotCam
/* 3CAC8 8004C2C8 40158497 */  lhu        $a0, %gp_rel(CamDir)($gp)
/* 3CACC 8004C2CC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3CAD0 8004C2D0 1400BFAF */  sw         $ra, 0x14($sp)
/* 3CAD4 8004C2D4 1000B0AF */  sw         $s0, 0x10($sp)
/* 3CAD8 8004C2D8 7BEB010C */  jal        rcos
/* 3CADC 8004C2DC FF0F8430 */   andi      $a0, $a0, 0xFFF
/* 3CAE0 8004C2E0 40158497 */  lhu        $a0, %gp_rel(CamDir)($gp)
/* 3CAE4 8004C2E4 21804000 */  addu       $s0, $v0, $zero
/* 3CAE8 8004C2E8 47EB010C */  jal        rsin
/* 3CAEC 8004C2EC FF0F8430 */   andi      $a0, $a0, 0xFFF
/* 3CAF0 8004C2F0 50158587 */  lh         $a1, %gp_rel(CamDist)($gp)
/* 3CAF4 8004C2F4 00000000 */  nop
/* 3CAF8 8004C2F8 1800A200 */  mult       $a1, $v0
/* 3CAFC 8004C2FC 12100000 */  mflo       $v0
/* 3CB00 8004C300 00000000 */  nop
/* 3CB04 8004C304 00000000 */  nop
/* 3CB08 8004C308 1800B000 */  mult       $a1, $s0
/* 3CB0C 8004C30C 03130200 */  sra        $v0, $v0, 12
/* 3CB10 8004C310 21204000 */  addu       $a0, $v0, $zero
/* 3CB14 8004C314 0A80103C */  lui        $s0, %hi(GeomEnv)
/* 3CB18 8004C318 40B11026 */  addiu      $s0, $s0, %lo(GeomEnv)
/* 3CB1C 8004C31C 100002AE */  sw         $v0, 0x10($s0)
/* 3CB20 8004C320 12280000 */  mflo       $a1
/* 3CB24 8004C324 032B0500 */  sra        $a1, $a1, 12
/* 3CB28 8004C328 63EF010C */  jal        ratan2
/* 3CB2C 8004C32C 080005AE */   sw        $a1, 0x8($s0)
/* 3CB30 8004C330 00044224 */  addiu      $v0, $v0, 0x400
/* 3CB34 8004C334 1400BF8F */  lw         $ra, 0x14($sp)
/* 3CB38 8004C338 FF0F4230 */  andi       $v0, $v0, 0xFFF
/* 3CB3C 8004C33C 020002A6 */  sh         $v0, 0x2($s0)
/* 3CB40 8004C340 1000B08F */  lw         $s0, 0x10($sp)
/* 3CB44 8004C344 0800E003 */  jr         $ra
/* 3CB48 8004C348 1800BD27 */   addiu     $sp, $sp, 0x18
.size SetRotCam, . - SetRotCam
