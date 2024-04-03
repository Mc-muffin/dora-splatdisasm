.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel chunk_LoadHeader
/* 40DBC 800505BC D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 40DC0 800505C0 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 40DC4 800505C4 21888000 */  addu       $s1, $a0, $zero
/* 40DC8 800505C8 10000424 */  addiu      $a0, $zero, 0x10
/* 40DCC 800505CC 21280000 */  addu       $a1, $zero, $zero
/* 40DD0 800505D0 2000BFAF */  sw         $ra, 0x20($sp)
/* 40DD4 800505D4 8C42010C */  jal        chunk_calloc
/* 40DD8 800505D8 1800B0AF */   sw        $s0, 0x18($sp)
/* 40DDC 800505DC 21202002 */  addu       $a0, $s1, $zero
/* 40DE0 800505E0 6842010C */  jal        chunk_openfile
/* 40DE4 800505E4 21804000 */   addu      $s0, $v0, $zero
/* 40DE8 800505E8 21204000 */  addu       $a0, $v0, $zero
/* 40DEC 800505EC 1000B127 */  addiu      $s1, $sp, 0x10
/* 40DF0 800505F0 21282002 */  addu       $a1, $s1, $zero
/* 40DF4 800505F4 04000624 */  addiu      $a2, $zero, 0x4
/* 40DF8 800505F8 7A42010C */  jal        chunk_fread
/* 40DFC 800505FC 000002AE */   sw        $v0, 0x0($s0)
/* 40E00 80050600 0980043C */  lui        $a0, %hi(D_80095200)
/* 40E04 80050604 1000A28F */  lw         $v0, 0x10($sp)
/* 40E08 80050608 00528424 */  addiu      $a0, $a0, %lo(D_80095200)
/* 40E0C 8005060C A3C2010C */  jal        strlen
/* 40E10 80050610 040002AE */   sw        $v0, 0x4($s0)
/* 40E14 80050614 21282002 */  addu       $a1, $s1, $zero
/* 40E18 80050618 0000048E */  lw         $a0, 0x0($s0)
/* 40E1C 8005061C 7A42010C */  jal        chunk_fread
/* 40E20 80050620 04000624 */   addiu     $a2, $zero, 0x4
/* 40E24 80050624 21200002 */  addu       $a0, $s0, $zero
/* 40E28 80050628 1000A28F */  lw         $v0, 0x10($sp)
/* 40E2C 8005062C 08000524 */  addiu      $a1, $zero, 0x8
/* 40E30 80050630 F040010C */  jal        chunk_LoadSubHeader
/* 40E34 80050634 080002AE */   sw        $v0, 0x8($s0)
/* 40E38 80050638 0C0002AE */  sw         $v0, 0xC($s0)
/* 40E3C 8005063C 21100002 */  addu       $v0, $s0, $zero
/* 40E40 80050640 2000BF8F */  lw         $ra, 0x20($sp)
/* 40E44 80050644 1C00B18F */  lw         $s1, 0x1C($sp)
/* 40E48 80050648 1800B08F */  lw         $s0, 0x18($sp)
/* 40E4C 8005064C 0800E003 */  jr         $ra
/* 40E50 80050650 2800BD27 */   addiu     $sp, $sp, 0x28
.size chunk_LoadHeader, . - chunk_LoadHeader
