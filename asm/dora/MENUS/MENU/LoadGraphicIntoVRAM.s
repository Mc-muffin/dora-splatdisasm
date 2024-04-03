.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LoadGraphicIntoVRAM
/* 1823C 80027A3C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 18240 80027A40 1800B0AF */  sw         $s0, 0x18($sp)
/* 18244 80027A44 2180A000 */  addu       $s0, $a1, $zero
/* 18248 80027A48 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 1824C 80027A4C 21888000 */  addu       $s1, $a0, $zero
/* 18250 80027A50 2000B2AF */  sw         $s2, 0x20($sp)
/* 18254 80027A54 21900002 */  addu       $s2, $s0, $zero
/* 18258 80027A58 0B00C010 */  beqz       $a2, .L80027A88
/* 1825C 80027A5C 2400BFAF */   sw        $ra, 0x24($sp)
/* 18260 80027A60 B35C010C */  jal        GetSizeOfFile
/* 18264 80027A64 00000000 */   nop
/* 18268 80027A68 04000016 */  bnez       $s0, .L80027A7C
/* 1826C 80027A6C 00000000 */   nop
/* 18270 80027A70 2B3F010C */  jal        new_malloc
/* 18274 80027A74 21204000 */   addu      $a0, $v0, $zero
/* 18278 80027A78 21804000 */  addu       $s0, $v0, $zero
.L80027A7C:
/* 1827C 80027A7C 21202002 */  addu       $a0, $s1, $zero
/* 18280 80027A80 495C010C */  jal        LoadFile
/* 18284 80027A84 21280002 */   addu      $a1, $s0, $zero
.L80027A88:
/* 18288 80027A88 1000A427 */  addiu      $a0, $sp, 0x10
/* 1828C 80027A8C 08020526 */  addiu      $a1, $s0, 0x208
/* 18290 80027A90 C0020224 */  addiu      $v0, $zero, 0x2C0
/* 18294 80027A94 1000A2A7 */  sh         $v0, 0x10($sp)
/* 18298 80027A98 40010224 */  addiu      $v0, $zero, 0x140
/* 1829C 80027A9C F0000324 */  addiu      $v1, $zero, 0xF0
/* 182A0 80027AA0 1200A0A7 */  sh         $zero, 0x12($sp)
/* 182A4 80027AA4 1400A2A7 */  sh         $v0, 0x14($sp)
/* 182A8 80027AA8 E1DB010C */  jal        LoadImage
/* 182AC 80027AAC 1600A3A7 */   sh        $v1, 0x16($sp)
/* 182B0 80027AB0 36DB010C */  jal        DrawSync
/* 182B4 80027AB4 21200000 */   addu      $a0, $zero, $zero
/* 182B8 80027AB8 03004016 */  bnez       $s2, .L80027AC8
/* 182BC 80027ABC 00000000 */   nop
/* 182C0 80027AC0 1C40010C */  jal        new_free
/* 182C4 80027AC4 21200002 */   addu      $a0, $s0, $zero
.L80027AC8:
/* 182C8 80027AC8 EBD6010C */  jal        VSync
/* 182CC 80027ACC 21200000 */   addu      $a0, $zero, $zero
/* 182D0 80027AD0 2400BF8F */  lw         $ra, 0x24($sp)
/* 182D4 80027AD4 2000B28F */  lw         $s2, 0x20($sp)
/* 182D8 80027AD8 1C00B18F */  lw         $s1, 0x1C($sp)
/* 182DC 80027ADC 1800B08F */  lw         $s0, 0x18($sp)
/* 182E0 80027AE0 0800E003 */  jr         $ra
/* 182E4 80027AE4 2800BD27 */   addiu     $sp, $sp, 0x28
.size LoadGraphicIntoVRAM, . - LoadGraphicIntoVRAM
