.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetBootsPosition
/* 25F74 80035774 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 25F78 80035778 0980023C */  lui        $v0, %hi(ETActor)
/* 25F7C 8003577C B05A4224 */  addiu      $v0, $v0, %lo(ETActor)
/* 25F80 80035780 1000BFAF */  sw         $ra, 0x10($sp)
/* 25F84 80035784 7000458C */  lw         $a1, 0x70($v0)
/* 25F88 80035788 0A80043C */  lui        $a0, %hi(BootsActor)
/* 25F8C 8003578C 80FFA524 */  addiu      $a1, $a1, -0x80
/* 25F90 80035790 988D85AC */  sw         $a1, %lo(BootsActor)($a0)
/* 25F94 80035794 7400468C */  lw         $a2, 0x74($v0)
/* 25F98 80035798 7800478C */  lw         $a3, 0x78($v0)
/* 25F9C 8003579C 988D8424 */  addiu      $a0, $a0, %lo(BootsActor)
/* 25FA0 800357A0 040086AC */  sw         $a2, 0x4($a0)
/* 25FA4 800357A4 080087AC */  sw         $a3, 0x8($a0)
/* 25FA8 800357A8 77FB000C */  jal        MotionPhysics_SetPosition
/* 25FAC 800357AC 6C008424 */   addiu     $a0, $a0, 0x6C
/* 25FB0 800357B0 1000BF8F */  lw         $ra, 0x10($sp)
/* 25FB4 800357B4 00000000 */  nop
/* 25FB8 800357B8 0800E003 */  jr         $ra
/* 25FBC 800357BC 1800BD27 */   addiu     $sp, $sp, 0x18
.size SetBootsPosition, . - SetBootsPosition
