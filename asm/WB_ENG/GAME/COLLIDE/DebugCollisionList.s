.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DebugCollisionList
/* 2F7F0 8003EFF0 B414828F */  lw         $v0, %gp_rel(NumCollisionList)($gp)
/* 2F7F4 8003EFF4 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 2F7F8 8003EFF8 3000BFAF */  sw         $ra, 0x30($sp)
/* 2F7FC 8003EFFC 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 2F800 8003F000 2800B4AF */  sw         $s4, 0x28($sp)
/* 2F804 8003F004 2400B3AF */  sw         $s3, 0x24($sp)
/* 2F808 8003F008 2000B2AF */  sw         $s2, 0x20($sp)
/* 2F80C 8003F00C 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 2F810 8003F010 2C004010 */  beqz       $v0, .L8003F0C4
/* 2F814 8003F014 1800B0AF */   sw        $s0, 0x18($sp)
/* 2F818 8003F018 50000424 */  addiu      $a0, $zero, 0x50
/* 2F81C 8003F01C 40000524 */  addiu      $a1, $zero, 0x40
/* 2F820 8003F020 21300000 */  addu       $a2, $zero, $zero
/* 2F824 8003F024 0180073C */  lui        $a3, %hi(D_80012D68)
/* 2F828 8003F028 3063010C */  jal        Print
/* 2F82C 8003F02C 682DE724 */   addiu     $a3, $a3, %lo(D_80012D68)
/* 2F830 8003F030 B414838F */  lw         $v1, %gp_rel(NumCollisionList)($gp)
/* 2F834 8003F034 00000000 */  nop
/* 2F838 8003F038 22006018 */  blez       $v1, .L8003F0C4
/* 2F83C 8003F03C 21880000 */   addu      $s1, $zero, $zero
/* 2F840 8003F040 0880023C */  lui        $v0, %hi(MeshIDTable + 0x28)
/* 2F844 8003F044 88545524 */  addiu      $s5, $v0, %lo(MeshIDTable + 0x28)
/* 2F848 8003F048 0A80033C */  lui        $v1, %hi(CollisionList)
/* 2F84C 8003F04C A0B97024 */  addiu      $s0, $v1, %lo(CollisionList)
/* 2F850 8003F050 48001324 */  addiu      $s3, $zero, 0x48
/* 2F854 8003F054 0180143C */  lui        $s4, %hi(D_80012D74)
/* 2F858 8003F058 04001226 */  addiu      $s2, $s0, 0x4
/* 2F85C 8003F05C 50000424 */  addiu      $a0, $zero, 0x50
.L8003F060:
/* 2F860 8003F060 21286002 */  addu       $a1, $s3, $zero
/* 2F864 8003F064 21300000 */  addu       $a2, $zero, $zero
/* 2F868 8003F068 742D8726 */  addiu      $a3, $s4, %lo(D_80012D74)
/* 2F86C 8003F06C 0000428E */  lw         $v0, 0x0($s2)
/* 2F870 8003F070 0000098E */  lw         $t1, 0x0($s0)
/* 2F874 8003F074 4400488C */  lw         $t0, 0x44($v0)
/* 2F878 8003F078 08001026 */  addiu      $s0, $s0, 0x8
/* 2F87C 8003F07C 1000038D */  lw         $v1, 0x10($t0)
/* 2F880 8003F080 08007326 */  addiu      $s3, $s3, 0x8
/* 2F884 8003F084 40100300 */  sll        $v0, $v1, 1
/* 2F888 8003F088 21104300 */  addu       $v0, $v0, $v1
/* 2F88C 8003F08C 80100200 */  sll        $v0, $v0, 2
/* 2F890 8003F090 23104300 */  subu       $v0, $v0, $v1
/* 2F894 8003F094 80100200 */  sll        $v0, $v0, 2
/* 2F898 8003F098 21105500 */  addu       $v0, $v0, $s5
/* 2F89C 8003F09C 0000438C */  lw         $v1, 0x0($v0)
/* 2F8A0 8003F0A0 08005226 */  addiu      $s2, $s2, 0x8
/* 2F8A4 8003F0A4 1400A9AF */  sw         $t1, 0x14($sp)
/* 2F8A8 8003F0A8 3063010C */  jal        Print
/* 2F8AC 8003F0AC 1000A3AF */   sw        $v1, 0x10($sp)
/* 2F8B0 8003F0B0 B414838F */  lw         $v1, %gp_rel(NumCollisionList)($gp)
/* 2F8B4 8003F0B4 01003126 */  addiu      $s1, $s1, 0x1
/* 2F8B8 8003F0B8 2A182302 */  slt        $v1, $s1, $v1
/* 2F8BC 8003F0BC E8FF6014 */  bnez       $v1, .L8003F060
/* 2F8C0 8003F0C0 50000424 */   addiu     $a0, $zero, 0x50
.L8003F0C4:
/* 2F8C4 8003F0C4 3000BF8F */  lw         $ra, 0x30($sp)
/* 2F8C8 8003F0C8 2C00B58F */  lw         $s5, 0x2C($sp)
/* 2F8CC 8003F0CC 2800B48F */  lw         $s4, 0x28($sp)
/* 2F8D0 8003F0D0 2400B38F */  lw         $s3, 0x24($sp)
/* 2F8D4 8003F0D4 2000B28F */  lw         $s2, 0x20($sp)
/* 2F8D8 8003F0D8 1C00B18F */  lw         $s1, 0x1C($sp)
/* 2F8DC 8003F0DC 1800B08F */  lw         $s0, 0x18($sp)
/* 2F8E0 8003F0E0 0800E003 */  jr         $ra
/* 2F8E4 8003F0E4 3800BD27 */   addiu     $sp, $sp, 0x38
.size DebugCollisionList, . - DebugCollisionList
