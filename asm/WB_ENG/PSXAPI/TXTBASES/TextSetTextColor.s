.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TextSetTextColor
/* 4954C 80058D4C 0980023C */  lui        $v0, %hi(gTextCurrentTextColor)
/* 49550 80058D50 8C8244AC */  sw         $a0, %lo(gTextCurrentTextColor)($v0)
/* 49554 80058D54 8C824224 */  addiu      $v0, $v0, %lo(gTextCurrentTextColor)
/* 49558 80058D58 040045AC */  sw         $a1, 0x4($v0)
/* 4955C 80058D5C 0800E003 */  jr         $ra
/* 49560 80058D60 080046AC */   sw        $a2, 0x8($v0)
.size TextSetTextColor, . - TextSetTextColor
