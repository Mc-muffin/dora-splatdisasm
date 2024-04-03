.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel chunk_LoadChunkAt
/* 40F34 80050734 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 40F38 80050738 21388000 */  addu       $a3, $a0, $zero
/* 40F3C 8005073C 80100500 */  sll        $v0, $a1, 2
/* 40F40 80050740 21104500 */  addu       $v0, $v0, $a1
/* 40F44 80050744 80100200 */  sll        $v0, $v0, 2
/* 40F48 80050748 1000B0AF */  sw         $s0, 0x10($sp)
/* 40F4C 8005074C 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 40F50 80050750 1800B2AF */  sw         $s2, 0x18($sp)
/* 40F54 80050754 1400B1AF */  sw         $s1, 0x14($sp)
/* 40F58 80050758 0C00E38C */  lw         $v1, 0xC($a3)
/* 40F5C 8005075C 0800F28C */  lw         $s2, 0x8($a3)
/* 40F60 80050760 21186200 */  addu       $v1, $v1, $v0
/* 40F64 80050764 0000448E */  lw         $a0, 0x0($s2)
/* 40F68 80050768 0C00658C */  lw         $a1, 0xC($v1)
/* 40F6C 8005076C 1000718C */  lw         $s1, 0x10($v1)
/* 40F70 80050770 7242010C */  jal        chunk_fseek
/* 40F74 80050774 2180C000 */   addu      $s0, $a2, $zero
/* 40F78 80050778 21280002 */  addu       $a1, $s0, $zero
/* 40F7C 8005077C 0000448E */  lw         $a0, 0x0($s2)
/* 40F80 80050780 7A42010C */  jal        chunk_fread
/* 40F84 80050784 21302002 */   addu      $a2, $s1, $zero
/* 40F88 80050788 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 40F8C 8005078C 1800B28F */  lw         $s2, 0x18($sp)
/* 40F90 80050790 1400B18F */  lw         $s1, 0x14($sp)
/* 40F94 80050794 1000B08F */  lw         $s0, 0x10($sp)
/* 40F98 80050798 0800E003 */  jr         $ra
/* 40F9C 8005079C 2000BD27 */   addiu     $sp, $sp, 0x20
.size chunk_LoadChunkAt, . - chunk_LoadChunkAt
