.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel chunk_LoadChunk
/* 40EB0 800506B0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 40EB4 800506B4 21308000 */  addu       $a2, $a0, $zero
/* 40EB8 800506B8 80100500 */  sll        $v0, $a1, 2
/* 40EBC 800506BC 21104500 */  addu       $v0, $v0, $a1
/* 40EC0 800506C0 80100200 */  sll        $v0, $v0, 2
/* 40EC4 800506C4 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 40EC8 800506C8 1800B2AF */  sw         $s2, 0x18($sp)
/* 40ECC 800506CC 1400B1AF */  sw         $s1, 0x14($sp)
/* 40ED0 800506D0 1000B0AF */  sw         $s0, 0x10($sp)
/* 40ED4 800506D4 0C00C38C */  lw         $v1, 0xC($a2)
/* 40ED8 800506D8 0800D18C */  lw         $s1, 0x8($a2)
/* 40EDC 800506DC 21186200 */  addu       $v1, $v1, $v0
/* 40EE0 800506E0 0C00708C */  lw         $s0, 0xC($v1)
/* 40EE4 800506E4 1000728C */  lw         $s2, 0x10($v1)
/* 40EE8 800506E8 0400C28C */  lw         $v0, 0x4($a2)
/* 40EEC 800506EC 21204002 */  addu       $a0, $s2, $zero
/* 40EF0 800506F0 8442010C */  jal        chunk_malloc
/* 40EF4 800506F4 21800202 */   addu      $s0, $s0, $v0
/* 40EF8 800506F8 21280002 */  addu       $a1, $s0, $zero
/* 40EFC 800506FC 0000248E */  lw         $a0, 0x0($s1)
/* 40F00 80050700 7242010C */  jal        chunk_fseek
/* 40F04 80050704 21804000 */   addu      $s0, $v0, $zero
/* 40F08 80050708 21280002 */  addu       $a1, $s0, $zero
/* 40F0C 8005070C 0000248E */  lw         $a0, 0x0($s1)
/* 40F10 80050710 7A42010C */  jal        chunk_fread
/* 40F14 80050714 21304002 */   addu      $a2, $s2, $zero
/* 40F18 80050718 21100002 */  addu       $v0, $s0, $zero
/* 40F1C 8005071C 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 40F20 80050720 1800B28F */  lw         $s2, 0x18($sp)
/* 40F24 80050724 1400B18F */  lw         $s1, 0x14($sp)
/* 40F28 80050728 1000B08F */  lw         $s0, 0x10($sp)
/* 40F2C 8005072C 0800E003 */  jr         $ra
/* 40F30 80050730 2000BD27 */   addiu     $sp, $sp, 0x20
.size chunk_LoadChunk, . - chunk_LoadChunk
