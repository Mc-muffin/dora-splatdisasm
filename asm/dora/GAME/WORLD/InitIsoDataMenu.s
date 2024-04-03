.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitIsoDataMenu
/* 14E3C 8002463C 48FFBD27 */  addiu      $sp, $sp, -0xB8
/* 14E40 80024640 B000BFAF */  sw         $ra, 0xB0($sp)
/* 14E44 80024644 D99F000C */  jal        GenerateWorldName
/* 14E48 80024648 6000A427 */   addiu     $a0, $sp, 0x60
/* 14E4C 8002464C 21380000 */  addu       $a3, $zero, $zero
/* 14E50 80024650 0880023C */  lui        $v0, %hi(TestWorld)
/* 14E54 80024654 8C654924 */  addiu      $t1, $v0, %lo(TestWorld)
/* 14E58 80024658 0100063C */  lui        $a2, (0x10000 >> 16)
/* 14E5C 8002465C 0A80023C */  lui        $v0, %hi(AnimationList)
/* 14E60 80024660 80514224 */  addiu      $v0, $v0, %lo(AnimationList)
/* 14E64 80024664 1C004524 */  addiu      $a1, $v0, 0x1C
/* 14E68 80024668 0100083C */  lui        $t0, (0x10000 >> 16)
.L8002466C:
/* 14E6C 8002466C 2120C000 */  addu       $a0, $a2, $zero
/* 14E70 80024670 2130C800 */  addu       $a2, $a2, $t0
/* 14E74 80024674 00110700 */  sll        $v0, $a3, 4
/* 14E78 80024678 2000238D */  lw         $v1, 0x20($t1)
/* 14E7C 8002467C 033C0400 */  sra        $a3, $a0, 16
/* 14E80 80024680 21104300 */  addu       $v0, $v0, $v1
/* 14E84 80024684 080040AC */  sw         $zero, 0x8($v0)
/* 14E88 80024688 F0FFA0AC */  sw         $zero, -0x10($a1)
/* 14E8C 8002468C F4FFA0AC */  sw         $zero, -0xC($a1)
/* 14E90 80024690 FCFFA0AC */  sw         $zero, -0x4($a1)
/* 14E94 80024694 0000A0AC */  sw         $zero, 0x0($a1)
/* 14E98 80024698 3500E228 */  slti       $v0, $a3, 0x35
/* 14E9C 8002469C F3FF4014 */  bnez       $v0, .L8002466C
/* 14EA0 800246A0 7C00A524 */   addiu     $a1, $a1, 0x7C
/* 14EA4 800246A4 356F000C */  jal        InitMeshIDTable
/* 14EA8 800246A8 00000000 */   nop
/* 14EAC 800246AC B000BF8F */  lw         $ra, 0xB0($sp)
/* 14EB0 800246B0 00000000 */  nop
/* 14EB4 800246B4 0800E003 */  jr         $ra
/* 14EB8 800246B8 B800BD27 */   addiu     $sp, $sp, 0xB8
.size InitIsoDataMenu, . - InitIsoDataMenu
