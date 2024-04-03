.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitCellAnim
/* 55904 80065104 01000324 */  addiu      $v1, $zero, 0x1
/* 55908 80065108 FFFF0234 */  ori        $v0, $zero, 0xFFFF
/* 5590C 8006510C 200082A4 */  sh         $v0, 0x20($a0)
/* 55910 80065110 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 55914 80065114 000080AC */  sw         $zero, 0x0($a0)
/* 55918 80065118 080080AC */  sw         $zero, 0x8($a0)
/* 5591C 8006511C 0C0080AC */  sw         $zero, 0xC($a0)
/* 55920 80065120 100080AC */  sw         $zero, 0x10($a0)
/* 55924 80065124 140083AC */  sw         $v1, 0x14($a0)
/* 55928 80065128 1C0080AC */  sw         $zero, 0x1C($a0)
/* 5592C 8006512C 180083AC */  sw         $v1, 0x18($a0)
/* 55930 80065130 240082AC */  sw         $v0, 0x24($a0)
/* 55934 80065134 0800E003 */  jr         $ra
/* 55938 80065138 300080AC */   sw        $zero, 0x30($a0)
.size InitCellAnim, . - InitCellAnim
