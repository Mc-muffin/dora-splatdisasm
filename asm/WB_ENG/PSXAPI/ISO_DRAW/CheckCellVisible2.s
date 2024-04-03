.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckCellVisible2
/* 56594 80065D94 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 56598 80065D98 0A80033C */  lui        $v1, %hi(GeomEnv)
/* 5659C 80065D9C 40B16324 */  addiu      $v1, $v1, %lo(GeomEnv)
/* 565A0 80065DA0 2000BFAF */  sw         $ra, 0x20($sp)
/* 565A4 80065DA4 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 565A8 80065DA8 1800B2AF */  sw         $s2, 0x18($sp)
/* 565AC 80065DAC 1400B1AF */  sw         $s1, 0x14($sp)
/* 565B0 80065DB0 1000B0AF */  sw         $s0, 0x10($sp)
/* 565B4 80065DB4 0800628C */  lw         $v0, 0x8($v1)
/* 565B8 80065DB8 0C00678C */  lw         $a3, 0xC($v1)
/* 565BC 80065DBC 23884400 */  subu       $s1, $v0, $a0
/* 565C0 80065DC0 21202002 */  addu       $a0, $s1, $zero
/* 565C4 80065DC4 1000628C */  lw         $v0, 0x10($v1)
/* 565C8 80065DC8 2398E500 */  subu       $s3, $a3, $a1
/* 565CC 80065DCC 23804600 */  subu       $s0, $v0, $a2
/* 565D0 80065DD0 3C00668C */  lw         $a2, 0x3C($v1)
/* 565D4 80065DD4 21280002 */  addu       $a1, $s0, $zero
/* 565D8 80065DD8 63EF010C */  jal        ratan2
/* 565DC 80065DDC 2390E600 */   subu      $s2, $a3, $a2
/* 565E0 80065DE0 7C17838F */  lw         $v1, %gp_rel(zeroangleXZ)($gp)
/* 565E4 80065DE4 FF0F4230 */  andi       $v0, $v0, 0xFFF
/* 565E8 80065DE8 23186200 */  subu       $v1, $v1, $v0
/* 565EC 80065DEC 8412828F */  lw         $v0, %gp_rel(eggclipangle)($gp)
/* 565F0 80065DF0 02006104 */  bgez       $v1, .L80065DFC
/* 565F4 80065DF4 00000000 */   nop
/* 565F8 80065DF8 23180300 */  negu       $v1, $v1
.L80065DFC:
/* 565FC 80065DFC 2A186200 */  slt        $v1, $v1, $v0
/* 56600 80065E00 14006010 */  beqz       $v1, .L80065E54
/* 56604 80065E04 21202002 */   addu      $a0, $s1, $zero
/* 56608 80065E08 FEE9000C */  jal        DistApprox_2d
/* 5660C 80065E0C 21280002 */   addu      $a1, $s0, $zero
/* 56610 80065E10 21284002 */  addu       $a1, $s2, $zero
/* 56614 80065E14 8017848F */  lw         $a0, %gp_rel(camhyp)($gp)
/* 56618 80065E18 63EF010C */  jal        ratan2
/* 5661C 80065E1C 21804000 */   addu      $s0, $v0, $zero
/* 56620 80065E20 21200002 */  addu       $a0, $s0, $zero
/* 56624 80065E24 9012838F */  lw         $v1, %gp_rel(eggzeroanganglehyp)($gp)
/* 56628 80065E28 21286002 */  addu       $a1, $s3, $zero
/* 5662C 80065E2C 63EF010C */  jal        ratan2
/* 56630 80065E30 23804300 */   subu      $s0, $v0, $v1
/* 56634 80065E34 23800202 */  subu       $s0, $s0, $v0
/* 56638 80065E38 8812838F */  lw         $v1, %gp_rel(eggclipanglehyp)($gp)
/* 5663C 80065E3C 02000106 */  bgez       $s0, .L80065E48
/* 56640 80065E40 00000000 */   nop
/* 56644 80065E44 23801000 */  negu       $s0, $s0
.L80065E48:
/* 56648 80065E48 2A800302 */  slt        $s0, $s0, $v1
/* 5664C 80065E4C 02000016 */  bnez       $s0, .L80065E58
/* 56650 80065E50 01000224 */   addiu     $v0, $zero, 0x1
.L80065E54:
/* 56654 80065E54 21100000 */  addu       $v0, $zero, $zero
.L80065E58:
/* 56658 80065E58 2000BF8F */  lw         $ra, 0x20($sp)
/* 5665C 80065E5C 1C00B38F */  lw         $s3, 0x1C($sp)
/* 56660 80065E60 1800B28F */  lw         $s2, 0x18($sp)
/* 56664 80065E64 1400B18F */  lw         $s1, 0x14($sp)
/* 56668 80065E68 1000B08F */  lw         $s0, 0x10($sp)
/* 5666C 80065E6C 0800E003 */  jr         $ra
/* 56670 80065E70 2800BD27 */   addiu     $sp, $sp, 0x28
.size CheckCellVisible2, . - CheckCellVisible2
