.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetFreeAudAttack
/* 35240 80044A40 21280000 */  addu       $a1, $zero, $zero
/* 35244 80044A44 04008424 */  addiu      $a0, $a0, 0x4
.L80044A48:
/* 35248 80044A48 0000838C */  lw         $v1, 0x0($a0)
/* 3524C 80044A4C 00000000 */  nop
/* 35250 80044A50 1000628C */  lw         $v0, 0x10($v1)
/* 35254 80044A54 00000000 */  nop
/* 35258 80044A58 00014230 */  andi       $v0, $v0, 0x100
/* 3525C 80044A5C 03004014 */  bnez       $v0, .L80044A6C
/* 35260 80044A60 0100A524 */   addiu     $a1, $a1, 0x1
/* 35264 80044A64 0800E003 */  jr         $ra
/* 35268 80044A68 21106000 */   addu      $v0, $v1, $zero
.L80044A6C:
/* 3526C 80044A6C 0300A228 */  slti       $v0, $a1, 0x3
/* 35270 80044A70 F5FF4014 */  bnez       $v0, .L80044A48
/* 35274 80044A74 04008424 */   addiu     $a0, $a0, 0x4
/* 35278 80044A78 0800E003 */  jr         $ra
/* 3527C 80044A7C 21100000 */   addu      $v0, $zero, $zero
.size GetFreeAudAttack, . - GetFreeAudAttack
