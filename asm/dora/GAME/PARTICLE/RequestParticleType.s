.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel RequestParticleType
/* 206E0 8002FEE0 0A80023C */  lui        $v0, %hi(ParticleTypeTable)
/* 206E4 8002FEE4 D0844224 */  addiu      $v0, $v0, %lo(ParticleTypeTable)
/* 206E8 8002FEE8 80180400 */  sll        $v1, $a0, 2
/* 206EC 8002FEEC 21186400 */  addu       $v1, $v1, $a0
/* 206F0 8002FEF0 80180300 */  sll        $v1, $v1, 2
/* 206F4 8002FEF4 21206200 */  addu       $a0, $v1, $v0
/* 206F8 8002FEF8 21104300 */  addu       $v0, $v0, $v1
/* 206FC 8002FEFC 0000848C */  lw         $a0, 0x0($a0)
/* 20700 8002FF00 0400438C */  lw         $v1, 0x4($v0)
/* 20704 8002FF04 0A008018 */  blez       $a0, .L8002FF30
/* 20708 8002FF08 21280000 */   addu      $a1, $zero, $zero
.L8002FF0C:
/* 2070C 8002FF0C 0000628C */  lw         $v0, 0x0($v1)
/* 20710 8002FF10 00000000 */  nop
/* 20714 8002FF14 03004014 */  bnez       $v0, .L8002FF24
/* 20718 8002FF18 0100A524 */   addiu     $a1, $a1, 0x1
/* 2071C 8002FF1C 0800E003 */  jr         $ra
/* 20720 8002FF20 21106000 */   addu      $v0, $v1, $zero
.L8002FF24:
/* 20724 8002FF24 2A10A400 */  slt        $v0, $a1, $a0
/* 20728 8002FF28 F8FF4014 */  bnez       $v0, .L8002FF0C
/* 2072C 8002FF2C 50006324 */   addiu     $v1, $v1, 0x50
.L8002FF30:
/* 20730 8002FF30 0800E003 */  jr         $ra
/* 20734 8002FF34 21100000 */   addu      $v0, $zero, $zero
.size RequestParticleType, . - RequestParticleType
