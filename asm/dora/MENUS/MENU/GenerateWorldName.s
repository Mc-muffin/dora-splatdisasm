.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GenerateWorldName
/* 18764 80027F64 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 18768 80027F68 3400B3AF */  sw         $s3, 0x34($sp)
/* 1876C 80027F6C 21988000 */  addu       $s3, $a0, $zero
/* 18770 80027F70 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 18774 80027F74 0980113C */  lui        $s1, %hi(gworldchars)
/* 18778 80027F78 4C563126 */  addiu      $s1, $s1, %lo(gworldchars)
/* 1877C 80027F7C 21202002 */  addu       $a0, $s1, $zero
/* 18780 80027F80 03000624 */  addiu      $a2, $zero, 0x3
/* 18784 80027F84 8407858F */  lw         $a1, %gp_rel(gmenuworld)($gp)
/* 18788 80027F88 0880033C */  lui        $v1, %hi(WorldList)
/* 1878C 80027F8C 2800B0AF */  sw         $s0, 0x28($sp)
/* 18790 80027F90 0980103C */  lui        $s0, %hi(gLevel)
/* 18794 80027F94 3456108E */  lw         $s0, %lo(gLevel)($s0)
/* 18798 80027F98 6C646324 */  addiu      $v1, $v1, %lo(WorldList)
/* 1879C 80027F9C 3800BFAF */  sw         $ra, 0x38($sp)
/* 187A0 80027FA0 3000B2AF */  sw         $s2, 0x30($sp)
/* 187A4 80027FA4 80100500 */  sll        $v0, $a1, 2
/* 187A8 80027FA8 21104500 */  addu       $v0, $v0, $a1
/* 187AC 80027FAC 80100200 */  sll        $v0, $v0, 2
/* 187B0 80027FB0 21386200 */  addu       $a3, $v1, $v0
/* 187B4 80027FB4 2118E000 */  addu       $v1, $a3, $zero
/* 187B8 80027FB8 1000E58C */  lw         $a1, 0x10($a3)
/* 187BC 80027FBC 0C00728C */  lw         $s2, 0xC($v1)
/* 187C0 80027FC0 D3C2010C */  jal        strncpy
/* 187C4 80027FC4 01001026 */   addiu     $s0, $s0, 0x1
/* 187C8 80027FC8 21206002 */  addu       $a0, $s3, $zero
/* 187CC 80027FCC 0180053C */  lui        $a1, %hi(D_80011508)
/* 187D0 80027FD0 0815A524 */  addiu      $a1, $a1, %lo(D_80011508)
/* 187D4 80027FD4 21304002 */  addu       $a2, $s2, $zero
/* 187D8 80027FD8 21382002 */  addu       $a3, $s1, $zero
/* 187DC 80027FDC 030020A2 */  sb         $zero, 0x3($s1)
/* 187E0 80027FE0 53C5010C */  jal        sprintf
/* 187E4 80027FE4 1000B0AF */   sw        $s0, 0x10($sp)
/* 187E8 80027FE8 3800BF8F */  lw         $ra, 0x38($sp)
/* 187EC 80027FEC 3400B38F */  lw         $s3, 0x34($sp)
/* 187F0 80027FF0 3000B28F */  lw         $s2, 0x30($sp)
/* 187F4 80027FF4 2C00B18F */  lw         $s1, 0x2C($sp)
/* 187F8 80027FF8 2800B08F */  lw         $s0, 0x28($sp)
/* 187FC 80027FFC 0800E003 */  jr         $ra
/* 18800 80028000 4000BD27 */   addiu     $sp, $sp, 0x40
.size GenerateWorldName, . - GenerateWorldName
