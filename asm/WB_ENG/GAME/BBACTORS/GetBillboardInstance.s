.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetBillboardInstance
/* 34BDC 800443DC FFFF0924 */  addiu      $t1, $zero, -0x1
/* 34BE0 800443E0 21300000 */  addu       $a2, $zero, $zero
/* 34BE4 800443E4 21380000 */  addu       $a3, $zero, $zero
/* 34BE8 800443E8 21280000 */  addu       $a1, $zero, $zero
/* 34BEC 800443EC 01000824 */  addiu      $t0, $zero, 0x1
/* 34BF0 800443F0 0A80023C */  lui        $v0, %hi(BillBoardPool)
/* 34BF4 800443F4 F84D4324 */  addiu      $v1, $v0, %lo(BillBoardPool)
.L800443F8:
/* 34BF8 800443F8 5000628C */  lw         $v0, 0x50($v1)
/* 34BFC 800443FC 00000000 */  nop
/* 34C00 80044400 05004014 */  bnez       $v0, .L80044418
/* 34C04 80044404 00000000 */   nop
/* 34C08 80044408 21306000 */  addu       $a2, $v1, $zero
/* 34C0C 8004440C 500068AC */  sw         $t0, 0x50($v1)
/* 34C10 80044410 0A110108 */  j          .L80044428
/* 34C14 80044414 2148A000 */   addu      $t1, $a1, $zero
.L80044418:
/* 34C18 80044418 0100A524 */  addiu      $a1, $a1, 0x1
/* 34C1C 8004441C 0200A228 */  slti       $v0, $a1, 0x2
/* 34C20 80044420 F5FF4014 */  bnez       $v0, .L800443F8
/* 34C24 80044424 54006324 */   addiu     $v1, $v1, 0x54
.L80044428:
/* 34C28 80044428 21002005 */  bltz       $t1, .L800444B0
/* 34C2C 8004442C 01000224 */   addiu     $v0, $zero, 0x1
/* 34C30 80044430 02008214 */  bne        $a0, $v0, .L8004443C
/* 34C34 80044434 0A80023C */   lui       $v0, %hi(cloud)
/* 34C38 80044438 084D4724 */  addiu      $a3, $v0, %lo(cloud)
.L8004443C:
/* 34C3C 8004443C 03008014 */  bnez       $a0, .L8004444C
/* 34C40 80044440 21280000 */   addu      $a1, $zero, $zero
/* 34C44 80044444 0A80023C */  lui        $v0, %hi(flare)
/* 34C48 80044448 884A4724 */  addiu      $a3, $v0, %lo(flare)
.L8004444C:
/* 34C4C 8004444C 2120C000 */  addu       $a0, $a2, $zero
.L80044450:
/* 34C50 80044450 2118E000 */  addu       $v1, $a3, $zero
/* 34C54 80044454 20006624 */  addiu      $a2, $v1, 0x20
/* 34C58 80044458 0100A224 */  addiu      $v0, $a1, 0x1
/* 34C5C 8004445C 28008524 */  addiu      $a1, $a0, 0x28
.L80044460:
/* 34C60 80044460 0000688C */  lw         $t0, 0x0($v1)
/* 34C64 80044464 04006A8C */  lw         $t2, 0x4($v1)
/* 34C68 80044468 08006B8C */  lw         $t3, 0x8($v1)
/* 34C6C 8004446C 0C006C8C */  lw         $t4, 0xC($v1)
/* 34C70 80044470 000088AC */  sw         $t0, 0x0($a0)
/* 34C74 80044474 04008AAC */  sw         $t2, 0x4($a0)
/* 34C78 80044478 08008BAC */  sw         $t3, 0x8($a0)
/* 34C7C 8004447C 0C008CAC */  sw         $t4, 0xC($a0)
/* 34C80 80044480 10006324 */  addiu      $v1, $v1, 0x10
/* 34C84 80044484 F6FF6614 */  bne        $v1, $a2, .L80044460
/* 34C88 80044488 10008424 */   addiu     $a0, $a0, 0x10
/* 34C8C 8004448C 0000668C */  lw         $a2, 0x0($v1)
/* 34C90 80044490 0400688C */  lw         $t0, 0x4($v1)
/* 34C94 80044494 000086AC */  sw         $a2, 0x0($a0)
/* 34C98 80044498 040088AC */  sw         $t0, 0x4($a0)
/* 34C9C 8004449C 2130A000 */  addu       $a2, $a1, $zero
/* 34CA0 800444A0 21284000 */  addu       $a1, $v0, $zero
/* 34CA4 800444A4 0200A228 */  slti       $v0, $a1, 0x2
/* 34CA8 800444A8 E9FF4014 */  bnez       $v0, .L80044450
/* 34CAC 800444AC 2120C000 */   addu      $a0, $a2, $zero
.L800444B0:
/* 34CB0 800444B0 0800E003 */  jr         $ra
/* 34CB4 800444B4 21102001 */   addu      $v0, $t1, $zero
.size GetBillboardInstance, . - GetBillboardInstance
