.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel strSync
/* 3FF24 8004F724 F8FFBD27 */  addiu      $sp, $sp, -0x8
/* 3FF28 8004F728 21288000 */  addu       $a1, $a0, $zero
/* 3FF2C 8004F72C 3400A38C */  lw         $v1, 0x34($a1)
/* 3FF30 8004F730 8000023C */  lui        $v0, (0x800000 >> 16)
/* 3FF34 8004F734 0000A2AF */  sw         $v0, 0x0($sp)
/* 3FF38 8004F738 1C006014 */  bnez       $v1, .L8004F7AC
/* 3FF3C 8004F73C 01000224 */   addiu     $v0, $zero, 0x1
/* 3FF40 8004F740 01000824 */  addiu      $t0, $zero, 0x1
/* 3FF44 8004F744 1800A724 */  addiu      $a3, $a1, 0x18
/* 3FF48 8004F748 1A00A624 */  addiu      $a2, $a1, 0x1A
.L8004F74C:
/* 3FF4C 8004F74C 0000A28F */  lw         $v0, 0x0($sp)
/* 3FF50 8004F750 00000000 */  nop
/* 3FF54 8004F754 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 3FF58 8004F758 0000A2AF */  sw         $v0, 0x0($sp)
/* 3FF5C 8004F75C 0000A38F */  lw         $v1, 0x0($sp)
/* 3FF60 8004F760 00000000 */  nop
/* 3FF64 8004F764 0D006014 */  bnez       $v1, .L8004F79C
/* 3FF68 8004F768 00000000 */   nop
/* 3FF6C 8004F76C 2800A28C */  lw         $v0, 0x28($a1)
/* 3FF70 8004F770 3400A8AC */  sw         $t0, 0x34($a1)
/* 3FF74 8004F774 0100422C */  sltiu      $v0, $v0, 0x1
/* 3FF78 8004F778 2800A2AC */  sw         $v0, 0x28($a1)
/* 3FF7C 8004F77C C0100200 */  sll        $v0, $v0, 3
/* 3FF80 8004F780 2118E200 */  addu       $v1, $a3, $v0
/* 3FF84 8004F784 00006494 */  lhu        $a0, 0x0($v1)
/* 3FF88 8004F788 2110C200 */  addu       $v0, $a2, $v0
/* 3FF8C 8004F78C 2C00A4A4 */  sh         $a0, 0x2C($a1)
/* 3FF90 8004F790 00004394 */  lhu        $v1, 0x0($v0)
/* 3FF94 8004F794 00000000 */  nop
/* 3FF98 8004F798 2E00A3A4 */  sh         $v1, 0x2E($a1)
.L8004F79C:
/* 3FF9C 8004F79C 3400A28C */  lw         $v0, 0x34($a1)
/* 3FFA0 8004F7A0 00000000 */  nop
/* 3FFA4 8004F7A4 E9FF4010 */  beqz       $v0, .L8004F74C
/* 3FFA8 8004F7A8 01000224 */   addiu     $v0, $zero, 0x1
.L8004F7AC:
/* 3FFAC 8004F7AC 480F82AF */  sw         $v0, %gp_rel(VideoReady)($gp)
/* 3FFB0 8004F7B0 3400A0AC */  sw         $zero, 0x34($a1)
/* 3FFB4 8004F7B4 0800E003 */  jr         $ra
/* 3FFB8 8004F7B8 0800BD27 */   addiu     $sp, $sp, 0x8
.size strSync, . - strSync
