.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DeleteModelInstance
/* 3CB90 8004C390 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3CB94 8004C394 1000B0AF */  sw         $s0, 0x10($sp)
/* 3CB98 8004C398 21808000 */  addu       $s0, $a0, $zero
/* 3CB9C 8004C39C 1400BFAF */  sw         $ra, 0x14($sp)
/* 3CBA0 8004C3A0 52000296 */  lhu        $v0, 0x52($s0)
/* 3CBA4 8004C3A4 00000000 */  nop
/* 3CBA8 8004C3A8 04004010 */  beqz       $v0, .L8004C3BC
/* 3CBAC 8004C3AC 00000000 */   nop
/* 3CBB0 8004C3B0 3C00048E */  lw         $a0, 0x3C($s0)
/* 3CBB4 8004C3B4 1C40010C */  jal        new_free
/* 3CBB8 8004C3B8 00000000 */   nop
.L8004C3BC:
/* 3CBBC 8004C3BC 50000296 */  lhu        $v0, 0x50($s0)
/* 3CBC0 8004C3C0 00000000 */  nop
/* 3CBC4 8004C3C4 04004010 */  beqz       $v0, .L8004C3D8
/* 3CBC8 8004C3C8 00000000 */   nop
/* 3CBCC 8004C3CC 3800048E */  lw         $a0, 0x38($s0)
/* 3CBD0 8004C3D0 1C40010C */  jal        new_free
/* 3CBD4 8004C3D4 00000000 */   nop
.L8004C3D8:
/* 3CBD8 8004C3D8 1C40010C */  jal        new_free
/* 3CBDC 8004C3DC 21200002 */   addu      $a0, $s0, $zero
/* 3CBE0 8004C3E0 1400BF8F */  lw         $ra, 0x14($sp)
/* 3CBE4 8004C3E4 1000B08F */  lw         $s0, 0x10($sp)
/* 3CBE8 8004C3E8 0800E003 */  jr         $ra
/* 3CBEC 8004C3EC 1800BD27 */   addiu     $sp, $sp, 0x18
.size DeleteModelInstance, . - DeleteModelInstance
