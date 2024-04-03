.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetISORotCam
/* 3F06C 8004E86C 400E848F */  lw         $a0, %gp_rel(ISOCamDir)($gp)
/* 3F070 8004E870 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3F074 8004E874 1400BFAF */  sw         $ra, 0x14($sp)
/* 3F078 8004E878 1000B0AF */  sw         $s0, 0x10($sp)
/* 3F07C 8004E87C 7BEB010C */  jal        rcos
/* 3F080 8004E880 FF0F8430 */   andi      $a0, $a0, 0xFFF
/* 3F084 8004E884 400E848F */  lw         $a0, %gp_rel(ISOCamDir)($gp)
/* 3F088 8004E888 21804000 */  addu       $s0, $v0, $zero
/* 3F08C 8004E88C 47EB010C */  jal        rsin
/* 3F090 8004E890 FF0F8430 */   andi      $a0, $a0, 0xFFF
/* 3F094 8004E894 3C0E858F */  lw         $a1, %gp_rel(ISOCamDist)($gp)
/* 3F098 8004E898 00000000 */  nop
/* 3F09C 8004E89C 1800A200 */  mult       $a1, $v0
/* 3F0A0 8004E8A0 12100000 */  mflo       $v0
/* 3F0A4 8004E8A4 00000000 */  nop
/* 3F0A8 8004E8A8 00000000 */  nop
/* 3F0AC 8004E8AC 1800B000 */  mult       $a1, $s0
/* 3F0B0 8004E8B0 03130200 */  sra        $v0, $v0, 12
/* 3F0B4 8004E8B4 21204000 */  addu       $a0, $v0, $zero
/* 3F0B8 8004E8B8 0A80103C */  lui        $s0, %hi(GeomEnv)
/* 3F0BC 8004E8BC 40B11026 */  addiu      $s0, $s0, %lo(GeomEnv)
/* 3F0C0 8004E8C0 100002AE */  sw         $v0, 0x10($s0)
/* 3F0C4 8004E8C4 12280000 */  mflo       $a1
/* 3F0C8 8004E8C8 032B0500 */  sra        $a1, $a1, 12
/* 3F0CC 8004E8CC 63EF010C */  jal        ratan2
/* 3F0D0 8004E8D0 080005AE */   sw        $a1, 0x8($s0)
/* 3F0D4 8004E8D4 00044224 */  addiu      $v0, $v0, 0x400
/* 3F0D8 8004E8D8 1400BF8F */  lw         $ra, 0x14($sp)
/* 3F0DC 8004E8DC FF0F4230 */  andi       $v0, $v0, 0xFFF
/* 3F0E0 8004E8E0 020002A6 */  sh         $v0, 0x2($s0)
/* 3F0E4 8004E8E4 1000B08F */  lw         $s0, 0x10($sp)
/* 3F0E8 8004E8E8 0800E003 */  jr         $ra
/* 3F0EC 8004E8EC 1800BD27 */   addiu     $sp, $sp, 0x18
.size SetISORotCam, . - SetISORotCam
