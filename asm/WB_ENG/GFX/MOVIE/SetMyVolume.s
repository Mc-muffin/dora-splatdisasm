.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetMyVolume
/* 3FD68 8004F568 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 3FD6C 8004F56C FF3F0324 */  addiu      $v1, $zero, 0x3FFF
/* 3FD70 8004F570 C3020224 */  addiu      $v0, $zero, 0x2C3
/* 3FD74 8004F574 1400A3A7 */  sh         $v1, 0x14($sp)
/* 3FD78 8004F578 1600A3A7 */  sh         $v1, 0x16($sp)
/* 3FD7C 8004F57C 01000324 */  addiu      $v1, $zero, 0x1
/* 3FD80 8004F580 FF008430 */  andi       $a0, $a0, 0xFF
/* 3FD84 8004F584 1000A2AF */  sw         $v0, 0x10($sp)
/* 3FD88 8004F588 C0110400 */  sll        $v0, $a0, 7
/* 3FD8C 8004F58C 21104400 */  addu       $v0, $v0, $a0
/* 3FD90 8004F590 1000A427 */  addiu      $a0, $sp, 0x10
/* 3FD94 8004F594 3800BFAF */  sw         $ra, 0x38($sp)
/* 3FD98 8004F598 2800A3AF */  sw         $v1, 0x28($sp)
/* 3FD9C 8004F59C 2200A2A7 */  sh         $v0, 0x22($sp)
/* 3FDA0 8004F5A0 2708020C */  jal        SpuSetCommonAttr
/* 3FDA4 8004F5A4 2000A2A7 */   sh        $v0, 0x20($sp)
/* 3FDA8 8004F5A8 3800BF8F */  lw         $ra, 0x38($sp)
/* 3FDAC 8004F5AC 00000000 */  nop
/* 3FDB0 8004F5B0 0800E003 */  jr         $ra
/* 3FDB4 8004F5B4 4000BD27 */   addiu     $sp, $sp, 0x40
.size SetMyVolume, . - SetMyVolume
