.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetPlayerWait
/* AA98 8001A298 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AA9C 8001A29C 0980023C */  lui        $v0, %hi(ETActor)
/* AAA0 8001A2A0 1000B0AF */  sw         $s0, 0x10($sp)
/* AAA4 8001A2A4 B05A5024 */  addiu      $s0, $v0, %lo(ETActor)
/* AAA8 8001A2A8 1400BFAF */  sw         $ra, 0x14($sp)
/* AAAC 8001A2AC 0C00038E */  lw         $v1, 0xC($s0)
/* AAB0 8001A2B0 07000224 */  addiu      $v0, $zero, 0x7
/* AAB4 8001A2B4 05006210 */  beq        $v1, $v0, .L8001A2CC
/* AAB8 8001A2B8 21200002 */   addu      $a0, $s0, $zero
/* AABC 8001A2BC 21280000 */  addu       $a1, $zero, $zero
/* AAC0 8001A2C0 01000624 */  addiu      $a2, $zero, 0x1
/* AAC4 8001A2C4 8FE2000C */  jal        SetAnimWithInterp
/* AAC8 8001A2C8 2C010726 */   addiu     $a3, $s0, 0x12C
.L8001A2CC:
/* AACC 8001A2CC 0D68000C */  jal        CheckEndETSlide
/* AAD0 8001A2D0 21200002 */   addu      $a0, $s0, $zero
/* AAD4 8001A2D4 0C00038E */  lw         $v1, 0xC($s0)
/* AAD8 8001A2D8 0B000224 */  addiu      $v0, $zero, 0xB
/* AADC 8001A2DC 02006210 */  beq        $v1, $v0, .L8001A2E8
/* AAE0 8001A2E0 01000224 */   addiu     $v0, $zero, 0x1
/* AAE4 8001A2E4 480082AF */  sw         $v0, %gp_rel(PLAYER_WAIT_FLAG)($gp)
.L8001A2E8:
/* AAE8 8001A2E8 4400828F */  lw         $v0, %gp_rel(DoraWaitState)($gp)
/* AAEC 8001A2EC 1400BF8F */  lw         $ra, 0x14($sp)
/* AAF0 8001A2F0 1000B08F */  lw         $s0, 0x10($sp)
/* AAF4 8001A2F4 01004224 */  addiu      $v0, $v0, 0x1
/* AAF8 8001A2F8 440082AF */  sw         $v0, %gp_rel(DoraWaitState)($gp)
/* AAFC 8001A2FC 0800E003 */  jr         $ra
/* AB00 8001A300 1800BD27 */   addiu     $sp, $sp, 0x18
.size SetPlayerWait, . - SetPlayerWait
