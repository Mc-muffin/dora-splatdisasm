.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ClearVRAMRect
/* 4BB7C 8005B37C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 4BB80 8005B380 1000A4A7 */  sh         $a0, 0x10($sp)
/* 4BB84 8005B384 21200000 */  addu       $a0, $zero, $zero
/* 4BB88 8005B388 1800BFAF */  sw         $ra, 0x18($sp)
/* 4BB8C 8005B38C 1200A5A7 */  sh         $a1, 0x12($sp)
/* 4BB90 8005B390 1400A6A7 */  sh         $a2, 0x14($sp)
/* 4BB94 8005B394 EBD6010C */  jal        VSync
/* 4BB98 8005B398 1600A7A7 */   sh        $a3, 0x16($sp)
/* 4BB9C 8005B39C 1000A427 */  addiu      $a0, $sp, 0x10
/* 4BBA0 8005B3A0 21280000 */  addu       $a1, $zero, $zero
/* 4BBA4 8005B3A4 21300000 */  addu       $a2, $zero, $zero
/* 4BBA8 8005B3A8 97DB010C */  jal        ClearImage
/* 4BBAC 8005B3AC 21380000 */   addu      $a3, $zero, $zero
.L8005B3B0:
/* 4BBB0 8005B3B0 36DB010C */  jal        DrawSync
/* 4BBB4 8005B3B4 01000424 */   addiu     $a0, $zero, 0x1
/* 4BBB8 8005B3B8 FDFF4014 */  bnez       $v0, .L8005B3B0
/* 4BBBC 8005B3BC 00000000 */   nop
/* 4BBC0 8005B3C0 EBD6010C */  jal        VSync
/* 4BBC4 8005B3C4 21200000 */   addu      $a0, $zero, $zero
/* 4BBC8 8005B3C8 1000A427 */  addiu      $a0, $sp, 0x10
/* 4BBCC 8005B3CC 21280000 */  addu       $a1, $zero, $zero
/* 4BBD0 8005B3D0 21300000 */  addu       $a2, $zero, $zero
/* 4BBD4 8005B3D4 97DB010C */  jal        ClearImage
/* 4BBD8 8005B3D8 21380000 */   addu      $a3, $zero, $zero
.L8005B3DC:
/* 4BBDC 8005B3DC 36DB010C */  jal        DrawSync
/* 4BBE0 8005B3E0 01000424 */   addiu     $a0, $zero, 0x1
/* 4BBE4 8005B3E4 FDFF4014 */  bnez       $v0, .L8005B3DC
/* 4BBE8 8005B3E8 00000000 */   nop
/* 4BBEC 8005B3EC 1800BF8F */  lw         $ra, 0x18($sp)
/* 4BBF0 8005B3F0 00000000 */  nop
/* 4BBF4 8005B3F4 0800E003 */  jr         $ra
/* 4BBF8 8005B3F8 2000BD27 */   addiu     $sp, $sp, 0x20
.size ClearVRAMRect, . - ClearVRAMRect
