.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel FindLocationSphere
/* 525C0 80061DC0 2001828C */  lw         $v0, 0x120($a0)
/* 525C4 80061DC4 00000000 */  nop
/* 525C8 80061DC8 08004594 */  lhu        $a1, 0x8($v0)
/* 525CC 80061DCC 00000000 */  nop
/* 525D0 80061DD0 0C00A010 */  beqz       $a1, .L80061E04
/* 525D4 80061DD4 21180000 */   addu      $v1, $zero, $zero
/* 525D8 80061DD8 2000448C */  lw         $a0, 0x20($v0)
.L80061DDC:
/* 525DC 80061DDC 00000000 */  nop
/* 525E0 80061DE0 00008294 */  lhu        $v0, 0x0($a0)
/* 525E4 80061DE4 00000000 */  nop
/* 525E8 80061DE8 0500422C */  sltiu      $v0, $v0, 0x5
/* 525EC 80061DEC 07004014 */  bnez       $v0, .L80061E0C
/* 525F0 80061DF0 21106000 */   addu      $v0, $v1, $zero
/* 525F4 80061DF4 01006324 */  addiu      $v1, $v1, 0x1
/* 525F8 80061DF8 2A106500 */  slt        $v0, $v1, $a1
/* 525FC 80061DFC F7FF4014 */  bnez       $v0, .L80061DDC
/* 52600 80061E00 20008424 */   addiu     $a0, $a0, 0x20
.L80061E04:
/* 52604 80061E04 0800E003 */  jr         $ra
/* 52608 80061E08 FFFF0224 */   addiu     $v0, $zero, -0x1
.L80061E0C:
/* 5260C 80061E0C 0800E003 */  jr         $ra
/* 52610 80061E10 00000000 */   nop
.size FindLocationSphere, . - FindLocationSphere
