.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LoadMemFile
/* 3DE9C 8004D69C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3DEA0 8004D6A0 1000B0AF */  sw         $s0, 0x10($sp)
/* 3DEA4 8004D6A4 1400BFAF */  sw         $ra, 0x14($sp)
/* 3DEA8 8004D6A8 B35C010C */  jal        GetSizeOfFile
/* 3DEAC 8004D6AC 21808000 */   addu      $s0, $a0, $zero
/* 3DEB0 8004D6B0 21204000 */  addu       $a0, $v0, $zero
/* 3DEB4 8004D6B4 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 3DEB8 8004D6B8 09008210 */  beq        $a0, $v0, .L8004D6E0
/* 3DEBC 8004D6BC 00000000 */   nop
/* 3DEC0 8004D6C0 2B3F010C */  jal        new_malloc
/* 3DEC4 8004D6C4 00000000 */   nop
/* 3DEC8 8004D6C8 21200002 */  addu       $a0, $s0, $zero
/* 3DECC 8004D6CC 21804000 */  addu       $s0, $v0, $zero
/* 3DED0 8004D6D0 495C010C */  jal        LoadFile
/* 3DED4 8004D6D4 21280002 */   addu      $a1, $s0, $zero
/* 3DED8 8004D6D8 B9350108 */  j          .L8004D6E4
/* 3DEDC 8004D6DC 21100002 */   addu      $v0, $s0, $zero
.L8004D6E0:
/* 3DEE0 8004D6E0 21100000 */  addu       $v0, $zero, $zero
.L8004D6E4:
/* 3DEE4 8004D6E4 1400BF8F */  lw         $ra, 0x14($sp)
/* 3DEE8 8004D6E8 1000B08F */  lw         $s0, 0x10($sp)
/* 3DEEC 8004D6EC 0800E003 */  jr         $ra
/* 3DEF0 8004D6F0 1800BD27 */   addiu     $sp, $sp, 0x18
.size LoadMemFile, . - LoadMemFile
