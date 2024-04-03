.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CalcCellVerticesQuick
/* 563D4 80065BD4 801F0A3C */  lui        $t2, (0x1F80006C >> 16)
/* 563D8 80065BD8 6C004A35 */  ori        $t2, $t2, (0x1F80006C & 0xFFFF)
/* 563DC 80065BDC 801F083C */  lui        $t0, (0x1F80006C >> 16)
/* 563E0 80065BE0 6C000835 */  ori        $t0, $t0, (0x1F80006C & 0xFFFF)
/* 563E4 80065BE4 40008424 */  addiu      $a0, $a0, 0x40
/* 563E8 80065BE8 C0FFA524 */  addiu      $a1, $a1, -0x40
/* 563EC 80065BEC 3000E28C */  lw         $v0, 0x30($a3)
/* 563F0 80065BF0 0000E98C */  lw         $t1, 0x0($a3)
/* 563F4 80065BF4 19004018 */  blez       $v0, .L80065C5C
/* 563F8 80065BF8 4000C624 */   addiu     $a2, $a2, 0x40
/* 563FC 80065BFC 21384000 */  addu       $a3, $v0, $zero
.L80065C00:
/* 56400 80065C00 00002295 */  lhu        $v0, 0x0($t1)
/* 56404 80065C04 00000000 */  nop
/* 56408 80065C08 21104400 */  addu       $v0, $v0, $a0
/* 5640C 80065C0C 000002A5 */  sh         $v0, 0x0($t0)
/* 56410 80065C10 02002395 */  lhu        $v1, 0x2($t1)
/* 56414 80065C14 00000000 */  nop
/* 56418 80065C18 21186500 */  addu       $v1, $v1, $a1
/* 5641C 80065C1C 020003A5 */  sh         $v1, 0x2($t0)
/* 56420 80065C20 04002295 */  lhu        $v0, 0x4($t1)
/* 56424 80065C24 00000000 */  nop
/* 56428 80065C28 21104600 */  addu       $v0, $v0, $a2
/* 5642C 80065C2C 040002A5 */  sh         $v0, 0x4($t0)
/* 56430 80065C30 000000C9 */  lwc2       $0, 0x0($t0)
/* 56434 80065C34 040001C9 */  lwc2       $1, 0x4($t0)
/* 56438 80065C38 00000000 */  nop
/* 5643C 80065C3C 00000000 */  nop
/* 56440 80065C40 0100184A */  RTPS
/* 56444 80065C44 00004EE9 */  swc2       $14, 0x0($t2)
/* 56448 80065C48 FFFFE724 */  addiu      $a3, $a3, -0x1
/* 5644C 80065C4C 04004A25 */  addiu      $t2, $t2, 0x4
/* 56450 80065C50 08000825 */  addiu      $t0, $t0, 0x8
/* 56454 80065C54 EAFFE014 */  bnez       $a3, .L80065C00
/* 56458 80065C58 08002925 */   addiu     $t1, $t1, 0x8
.L80065C5C:
/* 5645C 80065C5C 0800E003 */  jr         $ra
/* 56460 80065C60 01000224 */   addiu     $v0, $zero, 0x1
.size CalcCellVerticesQuick, . - CalcCellVerticesQuick
