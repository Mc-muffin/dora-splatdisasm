.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_emitter_fixup
/* 43D90 80053590 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 43D94 80053594 2800B6AF */  sw         $s6, 0x28($sp)
/* 43D98 80053598 0980163C */  lui        $s6, %hi(pxm_numemitters)
/* 43D9C 8005359C 6458D68E */  lw         $s6, %lo(pxm_numemitters)($s6)
/* 43DA0 800535A0 2C00B7AF */  sw         $s7, 0x2C($sp)
/* 43DA4 800535A4 0980173C */  lui        $s7, %hi(pxm_emitters)
/* 43DA8 800535A8 8458F78E */  lw         $s7, %lo(pxm_emitters)($s7)
/* 43DAC 800535AC 21200000 */  addu       $a0, $zero, $zero
/* 43DB0 800535B0 3000BFAF */  sw         $ra, 0x30($sp)
/* 43DB4 800535B4 2400B5AF */  sw         $s5, 0x24($sp)
/* 43DB8 800535B8 2000B4AF */  sw         $s4, 0x20($sp)
/* 43DBC 800535BC 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 43DC0 800535C0 1800B2AF */  sw         $s2, 0x18($sp)
/* 43DC4 800535C4 1400B1AF */  sw         $s1, 0x14($sp)
/* 43DC8 800535C8 2F00C012 */  beqz       $s6, .L80053688
/* 43DCC 800535CC 1000B0AF */   sw        $s0, 0x10($sp)
/* 43DD0 800535D0 21880000 */  addu       $s1, $zero, $zero
.L800535D4:
/* 43DD4 800535D4 40100400 */  sll        $v0, $a0, 1
/* 43DD8 800535D8 21104400 */  addu       $v0, $v0, $a0
/* 43DDC 800535DC 80100200 */  sll        $v0, $v0, 2
/* 43DE0 800535E0 23104400 */  subu       $v0, $v0, $a0
/* 43DE4 800535E4 80100200 */  sll        $v0, $v0, 2
/* 43DE8 800535E8 2190E202 */  addu       $s2, $s7, $v0
/* 43DEC 800535EC 01000224 */  addiu      $v0, $zero, 0x1
/* 43DF0 800535F0 0400548E */  lw         $s4, 0x4($s2)
/* 43DF4 800535F4 01009524 */  addiu      $s5, $a0, 0x1
/* 43DF8 800535F8 0C0040AE */  sw         $zero, 0xC($s2)
/* 43DFC 800535FC FFFF8326 */  addiu      $v1, $s4, -0x1
/* 43E00 80053600 1D006018 */  blez       $v1, .L80053678
/* 43E04 80053604 100042AE */   sw        $v0, 0x10($s2)
/* 43E08 80053608 08001324 */  addiu      $s3, $zero, 0x8
.L8005360C:
/* 43E0C 8005360C 0000438E */  lw         $v1, 0x0($s2)
/* 43E10 80053610 C0801100 */  sll        $s0, $s1, 3
/* 43E14 80053614 21807000 */  addu       $s0, $v1, $s0
/* 43E18 80053618 21187300 */  addu       $v1, $v1, $s3
/* 43E1C 8005361C 00006584 */  lh         $a1, 0x0($v1)
/* 43E20 80053620 00000286 */  lh         $v0, 0x0($s0)
/* 43E24 80053624 00000000 */  nop
/* 43E28 80053628 2328A200 */  subu       $a1, $a1, $v0
/* 43E2C 8005362C 1800A500 */  mult       $a1, $a1
/* 43E30 80053630 04006484 */  lh         $a0, 0x4($v1)
/* 43E34 80053634 04000286 */  lh         $v0, 0x4($s0)
/* 43E38 80053638 12280000 */  mflo       $a1
/* 43E3C 8005363C 23208200 */  subu       $a0, $a0, $v0
/* 43E40 80053640 00000000 */  nop
/* 43E44 80053644 18008400 */  mult       $a0, $a0
/* 43E48 80053648 01003126 */  addiu      $s1, $s1, 0x1
/* 43E4C 8005364C 08007326 */  addiu      $s3, $s3, 0x8
/* 43E50 80053650 12200000 */  mflo       $a0
/* 43E54 80053654 CB50010C */  jal        fast_sqrt
/* 43E58 80053658 2120A400 */   addu      $a0, $a1, $a0
/* 43E5C 8005365C C21F0200 */  srl        $v1, $v0, 31
/* 43E60 80053660 21186200 */  addu       $v1, $v1, $v0
/* 43E64 80053664 43180300 */  sra        $v1, $v1, 1
/* 43E68 80053668 FFFF8226 */  addiu      $v0, $s4, -0x1
/* 43E6C 8005366C 2A102202 */  slt        $v0, $s1, $v0
/* 43E70 80053670 E6FF4014 */  bnez       $v0, .L8005360C
/* 43E74 80053674 060003A6 */   sh        $v1, 0x6($s0)
.L80053678:
/* 43E78 80053678 2120A002 */  addu       $a0, $s5, $zero
/* 43E7C 8005367C 2B109600 */  sltu       $v0, $a0, $s6
/* 43E80 80053680 D4FF4014 */  bnez       $v0, .L800535D4
/* 43E84 80053684 21880000 */   addu      $s1, $zero, $zero
.L80053688:
/* 43E88 80053688 3000BF8F */  lw         $ra, 0x30($sp)
/* 43E8C 8005368C 2C00B78F */  lw         $s7, 0x2C($sp)
/* 43E90 80053690 2800B68F */  lw         $s6, 0x28($sp)
/* 43E94 80053694 2400B58F */  lw         $s5, 0x24($sp)
/* 43E98 80053698 2000B48F */  lw         $s4, 0x20($sp)
/* 43E9C 8005369C 1C00B38F */  lw         $s3, 0x1C($sp)
/* 43EA0 800536A0 1800B28F */  lw         $s2, 0x18($sp)
/* 43EA4 800536A4 1400B18F */  lw         $s1, 0x14($sp)
/* 43EA8 800536A8 1000B08F */  lw         $s0, 0x10($sp)
/* 43EAC 800536AC 0800E003 */  jr         $ra
/* 43EB0 800536B0 3800BD27 */   addiu     $sp, $sp, 0x38
.size pxm_emitter_fixup, . - pxm_emitter_fixup
