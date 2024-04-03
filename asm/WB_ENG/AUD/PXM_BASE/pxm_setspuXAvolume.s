.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_setspuXAvolume
/* 430BC 800528BC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 430C0 800528C0 0B80033C */  lui        $v1, %hi(spucommonattr)
/* 430C4 800528C4 C0020224 */  addiu      $v0, $zero, 0x2C0
/* 430C8 800528C8 00240400 */  sll        $a0, $a0, 16
/* 430CC 800528CC 03240400 */  sra        $a0, $a0, 16
/* 430D0 800528D0 688662AC */  sw         $v0, %lo(spucommonattr)($v1)
/* 430D4 800528D4 C0110400 */  sll        $v0, $a0, 7
/* 430D8 800528D8 21104400 */  addu       $v0, $v0, $a0
/* 430DC 800528DC 00140200 */  sll        $v0, $v0, 16
/* 430E0 800528E0 032C0200 */  sra        $a1, $v0, 16
/* 430E4 800528E4 68866624 */  addiu      $a2, $v1, %lo(spucommonattr)
/* 430E8 800528E8 03008014 */  bnez       $a0, .L800528F8
/* 430EC 800528EC 1000BFAF */   sw        $ra, 0x10($sp)
/* 430F0 800528F0 404A0108 */  j          .L80052900
/* 430F4 800528F4 1800C0AC */   sw        $zero, 0x18($a2)
.L800528F8:
/* 430F8 800528F8 01000224 */  addiu      $v0, $zero, 0x1
/* 430FC 800528FC 1800C2AC */  sw         $v0, 0x18($a2)
.L80052900:
/* 43100 80052900 68866424 */  addiu      $a0, $v1, %lo(spucommonattr)
/* 43104 80052904 120085A4 */  sh         $a1, 0x12($a0)
/* 43108 80052908 2708020C */  jal        SpuSetCommonAttr
/* 4310C 8005290C 100085A4 */   sh        $a1, 0x10($a0)
/* 43110 80052910 1000BF8F */  lw         $ra, 0x10($sp)
/* 43114 80052914 00000000 */  nop
/* 43118 80052918 0800E003 */  jr         $ra
/* 4311C 8005291C 1800BD27 */   addiu     $sp, $sp, 0x18
.size pxm_setspuXAvolume, . - pxm_setspuXAvolume
