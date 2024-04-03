.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AnimateActor
/* 29194 80038994 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 29198 80038998 2C018524 */  addiu      $a1, $a0, 0x12C
/* 2919C 8003899C 1000BFAF */  sw         $ra, 0x10($sp)
/* 291A0 800389A0 2800A28C */  lw         $v0, 0x28($a1)
/* 291A4 800389A4 00000000 */  nop
/* 291A8 800389A8 03004010 */  beqz       $v0, .L800389B8
/* 291AC 800389AC 00000000 */   nop
/* 291B0 800389B0 B3E0000C */  jal        AnimateStream
/* 291B4 800389B4 00000000 */   nop
.L800389B8:
/* 291B8 800389B8 1000BF8F */  lw         $ra, 0x10($sp)
/* 291BC 800389BC 00000000 */  nop
/* 291C0 800389C0 0800E003 */  jr         $ra
/* 291C4 800389C4 1800BD27 */   addiu     $sp, $sp, 0x18
.size AnimateActor, . - AnimateActor
