.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_get_spuchan
/* 45CE0 800554E0 FFFF0924 */  addiu      $t1, $zero, -0x1
/* 45CE4 800554E4 21300000 */  addu       $a2, $zero, $zero
/* 45CE8 800554E8 0080023C */  lui        $v0, (0x80000000 >> 16)
/* 45CEC 800554EC 25208200 */  or         $a0, $a0, $v0
/* 45CF0 800554F0 FF000A24 */  addiu      $t2, $zero, 0xFF
/* 45CF4 800554F4 0A80023C */  lui        $v0, %hi(pxm_chanstat)
/* 45CF8 800554F8 E87F4824 */  addiu      $t0, $v0, %lo(pxm_chanstat)
/* 45CFC 800554FC 04000725 */  addiu      $a3, $t0, 0x4
/* 45D00 80055500 21280001 */  addu       $a1, $t0, $zero
.L80055504:
/* 45D04 80055504 0C00A38C */  lw         $v1, 0xC($a1)
/* 45D08 80055508 1300A290 */  lbu        $v0, 0x13($a1)
/* 45D0C 8005550C 00000000 */  nop
/* 45D10 80055510 0C004014 */  bnez       $v0, .L80055544
/* 45D14 80055514 00000000 */   nop
/* 45D18 80055518 2148C000 */  addu       $t1, $a2, $zero
/* 45D1C 8005551C 0000E4AC */  sw         $a0, 0x0($a3)
/* 45D20 80055520 646D0725 */  addiu      $a3, $t0, 0x6D64
/* 45D24 80055524 1300AAA0 */  sb         $t2, 0x13($a1)
/* 45D28 80055528 606D0525 */  addiu      $a1, $t0, 0x6D60
/* 45D2C 8005552C E8030624 */  addiu      $a2, $zero, 0x3E8
/* 45D30 80055530 01000224 */  addiu      $v0, $zero, 0x1
/* 45D34 80055534 1810838F */  lw         $v1, %gp_rel(pxm_spu_chan_bits)($gp)
/* 45D38 80055538 04102201 */  sllv       $v0, $v0, $t1
/* 45D3C 8005553C 25186200 */  or         $v1, $v1, $v0
/* 45D40 80055540 181083AF */  sw         $v1, %gp_rel(pxm_spu_chan_bits)($gp)
.L80055544:
/* 45D44 80055544 1C00E724 */  addiu      $a3, $a3, 0x1C
/* 45D48 80055548 0100C624 */  addiu      $a2, $a2, 0x1
/* 45D4C 8005554C 1800C228 */  slti       $v0, $a2, 0x18
/* 45D50 80055550 ECFF4014 */  bnez       $v0, .L80055504
/* 45D54 80055554 1C00A524 */   addiu     $a1, $a1, 0x1C
/* 45D58 80055558 0800E003 */  jr         $ra
/* 45D5C 8005555C 21102001 */   addu      $v0, $t1, $zero
.size pxm_get_spuchan, . - pxm_get_spuchan
