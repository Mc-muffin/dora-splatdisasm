.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel initVideoSystem
/* 4C098 8005B898 A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 4C09C 8005B89C 00020424 */  addiu      $a0, $zero, 0x200
/* 4C0A0 8005B8A0 E0010524 */  addiu      $a1, $zero, 0x1E0
/* 4C0A4 8005B8A4 21300000 */  addu       $a2, $zero, $zero
/* 4C0A8 8005B8A8 21380000 */  addu       $a3, $zero, $zero
/* 4C0AC 8005B8AC 5000BFAF */  sw         $ra, 0x50($sp)
/* 4C0B0 8005B8B0 D3E7010C */  jal        GsInitGraph
/* 4C0B4 8005B8B4 1000A0AF */   sw        $zero, 0x10($sp)
/* 4C0B8 8005B8B8 4BDA010C */  jal        SetVideoMode
/* 4C0BC 8005B8BC 21200000 */   addu      $a0, $zero, $zero
/* 4C0C0 8005B8C0 21200000 */  addu       $a0, $zero, $zero
/* 4C0C4 8005B8C4 21280000 */  addu       $a1, $zero, $zero
/* 4C0C8 8005B8C8 00040624 */  addiu      $a2, $zero, 0x400
/* 4C0CC 8005B8CC DF6C010C */  jal        ClearVRAMRect
/* 4C0D0 8005B8D0 00020724 */   addiu     $a3, $zero, 0x200
/* 4C0D4 8005B8D4 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 4C0D8 8005B8D8 D41082AF */  sw         $v0, %gp_rel(oldResolutionMode)($gp)
/* 4C0DC 8005B8DC B16D010C */  jal        InitFrameRateBar
/* 4C0E0 8005B8E0 00000000 */   nop
/* 4C0E4 8005B8E4 5000BF8F */  lw         $ra, 0x50($sp)
/* 4C0E8 8005B8E8 01000224 */  addiu      $v0, $zero, 0x1
/* 4C0EC 8005B8EC 0800E003 */  jr         $ra
/* 4C0F0 8005B8F0 5800BD27 */   addiu     $sp, $sp, 0x58
.size initVideoSystem, . - initVideoSystem
