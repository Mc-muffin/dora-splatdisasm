.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SaveCLUTManager
/* 4EBB4 8005E3B4 0C80023C */  lui        $v0, %hi(gCLUTUseTable)
/* 4EBB8 8005E3B8 A8C44224 */  addiu      $v0, $v0, %lo(gCLUTUseTable)
/* 4EBBC 8005E3BC 40200400 */  sll        $a0, $a0, 1
/* 4EBC0 8005E3C0 02004324 */  addiu      $v1, $v0, 0x2
/* 4EBC4 8005E3C4 21208300 */  addu       $a0, $a0, $v1
/* 4EBC8 8005E3C8 21284000 */  addu       $a1, $v0, $zero
/* 4EBCC 8005E3CC 3F000324 */  addiu      $v1, $zero, 0x3F
.L8005E3D0:
/* 4EBD0 8005E3D0 0000A294 */  lhu        $v0, 0x0($a1)
/* 4EBD4 8005E3D4 8200A524 */  addiu      $a1, $a1, 0x82
/* 4EBD8 8005E3D8 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 4EBDC 8005E3DC 000082A4 */  sh         $v0, 0x0($a0)
/* 4EBE0 8005E3E0 FBFF6104 */  bgez       $v1, .L8005E3D0
/* 4EBE4 8005E3E4 82008424 */   addiu     $a0, $a0, 0x82
/* 4EBE8 8005E3E8 0800E003 */  jr         $ra
/* 4EBEC 8005E3EC 00000000 */   nop
.size SaveCLUTManager, . - SaveCLUTManager
