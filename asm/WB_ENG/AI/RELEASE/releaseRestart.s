.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel releaseRestart
/* 391DC 800489DC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 391E0 800489E0 1000B0AF */  sw         $s0, 0x10($sp)
/* 391E4 800489E4 21808000 */  addu       $s0, $a0, $zero
/* 391E8 800489E8 1400BFAF */  sw         $ra, 0x14($sp)
/* 391EC 800489EC 2801028E */  lw         $v0, 0x128($s0)
/* 391F0 800489F0 00000000 */  nop
/* 391F4 800489F4 000040AC */  sw         $zero, 0x0($v0)
/* 391F8 800489F8 0C0000AE */  sw         $zero, 0xC($s0)
/* 391FC 800489FC 080040AC */  sw         $zero, 0x8($v0)
/* 39200 80048A00 0C0040AC */  sw         $zero, 0xC($v0)
/* 39204 80048A04 040040AC */  sw         $zero, 0x4($v0)
/* 39208 80048A08 4400038E */  lw         $v1, 0x44($s0)
/* 3920C 80048A0C 0A000224 */  addiu      $v0, $zero, 0xA
/* 39210 80048A10 5C0002AE */  sw         $v0, 0x5C($s0)
/* 39214 80048A14 0000658C */  lw         $a1, 0x0($v1)
/* 39218 80048A18 0400668C */  lw         $a2, 0x4($v1)
/* 3921C 80048A1C 0800678C */  lw         $a3, 0x8($v1)
/* 39220 80048A20 77FB000C */  jal        MotionPhysics_SetPosition
/* 39224 80048A24 6C000426 */   addiu     $a0, $s0, 0x6C
/* 39228 80048A28 DC28010C */  jal        GenericReInit
/* 3922C 80048A2C 21200002 */   addu      $a0, $s0, $zero
/* 39230 80048A30 1400BF8F */  lw         $ra, 0x14($sp)
/* 39234 80048A34 1000B08F */  lw         $s0, 0x10($sp)
/* 39238 80048A38 0800E003 */  jr         $ra
/* 3923C 80048A3C 1800BD27 */   addiu     $sp, $sp, 0x18
.size releaseRestart, . - releaseRestart
