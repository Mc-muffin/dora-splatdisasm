.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetDirSpeed
/* 148EC 800240EC 1C00838C */  lw         $v1, 0x1C($a0)
/* 148F0 800240F0 00000000 */  nop
/* 148F4 800240F4 DFFF6224 */  addiu      $v0, $v1, -0x21
/* 148F8 800240F8 0300422C */  sltiu      $v0, $v0, 0x3
/* 148FC 800240FC 05004014 */  bnez       $v0, .L80024114
/* 14900 80024100 0A000224 */   addiu     $v0, $zero, 0xA
/* 14904 80024104 34000224 */  addiu      $v0, $zero, 0x34
/* 14908 80024108 04006214 */  bne        $v1, $v0, .L8002411C
/* 1490C 8002410C 28000224 */   addiu     $v0, $zero, 0x28
/* 14910 80024110 0A000224 */  addiu      $v0, $zero, 0xA
.L80024114:
/* 14914 80024114 0800E003 */  jr         $ra
/* 14918 80024118 5C0082AC */   sw        $v0, 0x5C($a0)
.L8002411C:
/* 1491C 8002411C 0800E003 */  jr         $ra
/* 14920 80024120 5C0082AC */   sw        $v0, 0x5C($a0)
.size GetDirSpeed, . - GetDirSpeed
