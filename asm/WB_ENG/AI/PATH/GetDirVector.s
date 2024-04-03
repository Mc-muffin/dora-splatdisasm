.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetDirVector
/* 35778 80044F78 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 3577C 80044F7C 2400B1AF */  sw         $s1, 0x24($sp)
/* 35780 80044F80 2188C000 */  addu       $s1, $a2, $zero
/* 35784 80044F84 2800BFAF */  sw         $ra, 0x28($sp)
/* 35788 80044F88 2000B0AF */  sw         $s0, 0x20($sp)
/* 3578C 80044F8C 0000A28C */  lw         $v0, 0x0($a1)
/* 35790 80044F90 0000838C */  lw         $v1, 0x0($a0)
/* 35794 80044F94 2180E000 */  addu       $s0, $a3, $zero
/* 35798 80044F98 23104300 */  subu       $v0, $v0, $v1
/* 3579C 80044F9C 1000A2AF */  sw         $v0, 0x10($sp)
/* 357A0 80044FA0 0400A38C */  lw         $v1, 0x4($a1)
/* 357A4 80044FA4 0400888C */  lw         $t0, 0x4($a0)
/* 357A8 80044FA8 0800A28C */  lw         $v0, 0x8($a1)
/* 357AC 80044FAC 0800858C */  lw         $a1, 0x8($a0)
/* 357B0 80044FB0 1000A427 */  addiu      $a0, $sp, 0x10
/* 357B4 80044FB4 23186800 */  subu       $v1, $v1, $t0
/* 357B8 80044FB8 23104500 */  subu       $v0, $v0, $a1
/* 357BC 80044FBC 21280002 */  addu       $a1, $s0, $zero
/* 357C0 80044FC0 1400A3AF */  sw         $v1, 0x14($sp)
/* 357C4 80044FC4 13EC010C */  jal        VectorNormal
/* 357C8 80044FC8 1800A2AF */   sw        $v0, 0x18($sp)
/* 357CC 80044FCC 0000038E */  lw         $v1, 0x0($s0)
/* 357D0 80044FD0 00000000 */  nop
/* 357D4 80044FD4 18007100 */  mult       $v1, $s1
/* 357D8 80044FD8 12180000 */  mflo       $v1
/* 357DC 80044FDC 0400028E */  lw         $v0, 0x4($s0)
/* 357E0 80044FE0 00000000 */  nop
/* 357E4 80044FE4 18005100 */  mult       $v0, $s1
/* 357E8 80044FE8 12100000 */  mflo       $v0
/* 357EC 80044FEC 0800048E */  lw         $a0, 0x8($s0)
/* 357F0 80044FF0 00000000 */  nop
/* 357F4 80044FF4 18009100 */  mult       $a0, $s1
/* 357F8 80044FF8 2800BF8F */  lw         $ra, 0x28($sp)
/* 357FC 80044FFC 031B0300 */  sra        $v1, $v1, 12
/* 35800 80045000 000003AE */  sw         $v1, 0x0($s0)
/* 35804 80045004 2400B18F */  lw         $s1, 0x24($sp)
/* 35808 80045008 03130200 */  sra        $v0, $v0, 12
/* 3580C 8004500C 040002AE */  sw         $v0, 0x4($s0)
/* 35810 80045010 12200000 */  mflo       $a0
/* 35814 80045014 03230400 */  sra        $a0, $a0, 12
/* 35818 80045018 080004AE */  sw         $a0, 0x8($s0)
/* 3581C 8004501C 2000B08F */  lw         $s0, 0x20($sp)
/* 35820 80045020 0800E003 */  jr         $ra
/* 35824 80045024 3000BD27 */   addiu     $sp, $sp, 0x30
.size GetDirVector, . - GetDirVector
