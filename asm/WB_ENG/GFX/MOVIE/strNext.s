.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel strNext
/* 3FFBC 8004F7BC D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 3FFC0 8004F7C0 2000B2AF */  sw         $s2, 0x20($sp)
/* 3FFC4 8004F7C4 8000123C */  lui        $s2, %hi(D_7FFFFF)
/* 3FFC8 8004F7C8 2400B3AF */  sw         $s3, 0x24($sp)
/* 3FFCC 8004F7CC 21988000 */  addu       $s3, $a0, $zero
/* 3FFD0 8004F7D0 2800BFAF */  sw         $ra, 0x28($sp)
/* 3FFD4 8004F7D4 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 3FFD8 8004F7D8 1800B0AF */  sw         $s0, 0x18($sp)
/* 3FFDC 8004F7DC 1000B127 */  addiu      $s1, $sp, 0x10
/* 3FFE0 8004F7E0 FF3D0108 */  j          .L8004F7FC
/* 3FFE4 8004F7E4 1400B027 */   addiu     $s0, $sp, 0x14
.L8004F7E8:
/* 3FFE8 8004F7E8 FFFF5226 */  addiu      $s2, $s2, %lo(D_7FFFFF)
/* 3FFEC 8004F7EC 04004016 */  bnez       $s2, .L8004F800
/* 3FFF0 8004F7F0 21202002 */   addu      $a0, $s1, $zero
/* 3FFF4 8004F7F4 2B3E0108 */  j          .L8004F8AC
/* 3FFF8 8004F7F8 21100000 */   addu      $v0, $zero, $zero
.L8004F7FC:
/* 3FFFC 8004F7FC 21202002 */  addu       $a0, $s1, $zero
.L8004F800:
/* 40000 8004F800 DFC9010C */  jal        StGetNext
/* 40004 8004F804 21280002 */   addu      $a1, $s0, $zero
/* 40008 8004F808 F7FF4014 */  bnez       $v0, .L8004F7E8
/* 4000C 8004F80C 00000000 */   nop
/* 40010 8004F810 1400A28F */  lw         $v0, 0x14($sp)
/* 40014 8004F814 3C0F838F */  lw         $v1, %gp_rel(CurrentFrame)($gp)
/* 40018 8004F818 0800448C */  lw         $a0, 0x8($v0)
/* 4001C 8004F81C 400F83AF */  sw         $v1, %gp_rel(LastFrame)($gp)
/* 40020 8004F820 3C0F84AF */  sw         $a0, %gp_rel(CurrentFrame)($gp)
/* 40024 8004F824 0C008018 */  blez       $a0, .L8004F858
/* 40028 8004F828 00000000 */   nop
/* 4002C 8004F82C 0980023C */  lui        $v0, %hi(EffectsVolume)
/* 40030 8004F830 A049428C */  lw         $v0, %lo(EffectsVolume)($v0)
/* 40034 8004F834 00000000 */  nop
/* 40038 8004F838 80130200 */  sll        $v0, $v0, 14
/* 4003C 8004F83C 03230200 */  sra        $a0, $v0, 12
/* 40040 8004F840 00018328 */  slti       $v1, $a0, 0x100
/* 40044 8004F844 02006014 */  bnez       $v1, .L8004F850
/* 40048 8004F848 00000000 */   nop
/* 4004C 8004F84C FF000424 */  addiu      $a0, $zero, 0xFF
.L8004F850:
/* 40050 8004F850 1F7B010C */  jal        SetXA_Volume
/* 40054 8004F854 00000000 */   nop
.L8004F858:
/* 40058 8004F858 A015828F */  lw         $v0, %gp_rel(this_movie)($gp)
/* 4005C 8004F85C 3C0F838F */  lw         $v1, %gp_rel(CurrentFrame)($gp)
/* 40060 8004F860 0800448C */  lw         $a0, 0x8($v0)
/* 40064 8004F864 00000000 */  nop
/* 40068 8004F868 2A186400 */  slt        $v1, $v1, $a0
/* 4006C 8004F86C 02006014 */  bnez       $v1, .L8004F878
/* 40070 8004F870 01000224 */   addiu     $v0, $zero, 0x1
/* 40074 8004F874 380F82AF */  sw         $v0, %gp_rel(AfterCount)($gp)
.L8004F878:
/* 40078 8004F878 1400A38F */  lw         $v1, 0x14($sp)
/* 4007C 8004F87C 1000A28F */  lw         $v0, 0x10($sp)
/* 40080 8004F880 10006494 */  lhu        $a0, 0x10($v1)
/* 40084 8004F884 12006594 */  lhu        $a1, 0x12($v1)
/* 40088 8004F888 300F84AF */  sw         $a0, %gp_rel(StrWidth)($gp)
/* 4008C 8004F88C 300F8497 */  lhu        $a0, %gp_rel(StrWidth)($gp)
/* 40090 8004F890 340F85AF */  sw         $a1, %gp_rel(StrHeight)($gp)
/* 40094 8004F894 340F8397 */  lhu        $v1, %gp_rel(StrHeight)($gp)
/* 40098 8004F898 240064A6 */  sh         $a0, 0x24($s3)
/* 4009C 8004F89C 1C0064A6 */  sh         $a0, 0x1C($s3)
/* 400A0 8004F8A0 260063A6 */  sh         $v1, 0x26($s3)
/* 400A4 8004F8A4 1E0063A6 */  sh         $v1, 0x1E($s3)
/* 400A8 8004F8A8 320063A6 */  sh         $v1, 0x32($s3)
.L8004F8AC:
/* 400AC 8004F8AC 2800BF8F */  lw         $ra, 0x28($sp)
/* 400B0 8004F8B0 2400B38F */  lw         $s3, 0x24($sp)
/* 400B4 8004F8B4 2000B28F */  lw         $s2, 0x20($sp)
/* 400B8 8004F8B8 1C00B18F */  lw         $s1, 0x1C($sp)
/* 400BC 8004F8BC 1800B08F */  lw         $s0, 0x18($sp)
/* 400C0 8004F8C0 0800E003 */  jr         $ra
/* 400C4 8004F8C4 3000BD27 */   addiu     $sp, $sp, 0x30
.size strNext, . - strNext
