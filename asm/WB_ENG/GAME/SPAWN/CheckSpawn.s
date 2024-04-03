.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckSpawn
/* 3345C 80042C5C 9C0C828F */  lw         $v0, %gp_rel(ACTORS_ON)($gp)
/* 33460 80042C60 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 33464 80042C64 3C00BFAF */  sw         $ra, 0x3C($sp)
/* 33468 80042C68 3800BEAF */  sw         $fp, 0x38($sp)
/* 3346C 80042C6C 3400B7AF */  sw         $s7, 0x34($sp)
/* 33470 80042C70 3000B6AF */  sw         $s6, 0x30($sp)
/* 33474 80042C74 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 33478 80042C78 2800B4AF */  sw         $s4, 0x28($sp)
/* 3347C 80042C7C 2400B3AF */  sw         $s3, 0x24($sp)
/* 33480 80042C80 2000B2AF */  sw         $s2, 0x20($sp)
/* 33484 80042C84 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 33488 80042C88 68004010 */  beqz       $v0, .L80042E2C
/* 3348C 80042C8C 1800B0AF */   sw        $s0, 0x18($sp)
/* 33490 80042C90 B80C828F */  lw         $v0, %gp_rel(benodbug)($gp)
/* 33494 80042C94 00000000 */  nop
/* 33498 80042C98 02004010 */  beqz       $v0, .L80042CA4
/* 3349C 80042C9C 00000000 */   nop
/* 334A0 80042CA0 CD010100 */  break      1, 7
.L80042CA4:
/* 334A4 80042CA4 C66F000C */  jal        CheckSpawnPickups
/* 334A8 80042CA8 00000000 */   nop
/* 334AC 80042CAC 0880033C */  lui        $v1, %hi(TestWorld)
/* 334B0 80042CB0 8C656324 */  addiu      $v1, $v1, %lo(TestWorld)
/* 334B4 80042CB4 1000628C */  lw         $v0, 0x10($v1)
/* 334B8 80042CB8 1C00718C */  lw         $s1, 0x1C($v1)
/* 334BC 80042CBC 5B004018 */  blez       $v0, .L80042E2C
/* 334C0 80042CC0 40001E3C */   lui       $fp, (0x400000 >> 16)
/* 334C4 80042CC4 21B84000 */  addu       $s7, $v0, $zero
.L80042CC8:
/* 334C8 80042CC8 1C00238E */  lw         $v1, 0x1C($s1)
/* 334CC 80042CCC 2000328E */  lw         $s2, 0x20($s1)
/* 334D0 80042CD0 1000368E */  lw         $s6, 0x10($s1)
/* 334D4 80042CD4 01006230 */  andi       $v0, $v1, 0x1
/* 334D8 80042CD8 51004010 */  beqz       $v0, .L80042E20
/* 334DC 80042CDC 00000000 */   nop
/* 334E0 80042CE0 1000428E */  lw         $v0, 0x10($s2)
/* 334E4 80042CE4 00000000 */  nop
/* 334E8 80042CE8 00014230 */  andi       $v0, $v0, 0x100
/* 334EC 80042CEC 4C004014 */  bnez       $v0, .L80042E20
/* 334F0 80042CF0 0C006330 */   andi      $v1, $v1, 0xC
/* 334F4 80042CF4 08000224 */  addiu      $v0, $zero, 0x8
/* 334F8 80042CF8 49006210 */  beq        $v1, $v0, .L80042E20
/* 334FC 80042CFC 21A80000 */   addu      $s5, $zero, $zero
/* 33500 80042D00 0980143C */  lui        $s4, %hi(ScrollCamXPos)
/* 33504 80042D04 4843948E */  lw         $s4, %lo(ScrollCamXPos)($s4)
/* 33508 80042D08 0000248E */  lw         $a0, 0x0($s1)
/* 3350C 80042D0C 0980133C */  lui        $s3, %hi(ScrollCamZPos)
/* 33510 80042D10 5043738E */  lw         $s3, %lo(ScrollCamZPos)($s3)
/* 33514 80042D14 0800258E */  lw         $a1, 0x8($s1)
/* 33518 80042D18 A80C908F */  lw         $s0, %gp_rel(TESTR1)($gp)
/* 3351C 80042D1C 23209400 */  subu       $a0, $a0, $s4
/* 33520 80042D20 83200400 */  sra        $a0, $a0, 2
/* 33524 80042D24 2328B300 */  subu       $a1, $a1, $s3
/* 33528 80042D28 83280500 */  sra        $a1, $a1, 2
/* 3352C 80042D2C FEE9000C */  jal        DistApprox_2d
/* 33530 80042D30 83801000 */   sra       $s0, $s0, 2
/* 33534 80042D34 2A105000 */  slt        $v0, $v0, $s0
/* 33538 80042D38 0B004014 */  bnez       $v0, .L80042D68
/* 3353C 80042D3C 00000000 */   nop
/* 33540 80042D40 0000248E */  lw         $a0, 0x0($s1)
/* 33544 80042D44 0800258E */  lw         $a1, 0x8($s1)
/* 33548 80042D48 AC0C908F */  lw         $s0, %gp_rel(TESTR2)($gp)
/* 3354C 80042D4C 23209400 */  subu       $a0, $a0, $s4
/* 33550 80042D50 83200400 */  sra        $a0, $a0, 2
/* 33554 80042D54 2328B300 */  subu       $a1, $a1, $s3
/* 33558 80042D58 83280500 */  sra        $a1, $a1, 2
/* 3355C 80042D5C FEE9000C */  jal        DistApprox_2d
/* 33560 80042D60 83801000 */   sra       $s0, $s0, 2
/* 33564 80042D64 2AA85000 */  slt        $s5, $v0, $s0
.L80042D68:
/* 33568 80042D68 4400438E */  lw         $v1, 0x44($s2)
/* 3356C 80042D6C 0A00A016 */  bnez       $s5, .L80042D98
/* 33570 80042D70 00000000 */   nop
/* 33574 80042D74 BC0C828F */  lw         $v0, %gp_rel(BENOSPAWN)($gp)
/* 33578 80042D78 00000000 */  nop
/* 3357C 80042D7C 06004014 */  bnez       $v0, .L80042D98
/* 33580 80042D80 00000000 */   nop
/* 33584 80042D84 1C00628C */  lw         $v0, 0x1C($v1)
/* 33588 80042D88 00000000 */  nop
/* 3358C 80042D8C 24105E00 */  and        $v0, $v0, $fp
/* 33590 80042D90 23004010 */  beqz       $v0, .L80042E20
/* 33594 80042D94 00000000 */   nop
.L80042D98:
/* 33598 80042D98 1C00628C */  lw         $v0, 0x1C($v1)
/* 3359C 80042D9C 00000000 */  nop
/* 335A0 80042DA0 24105E00 */  and        $v0, $v0, $fp
/* 335A4 80042DA4 0E004010 */  beqz       $v0, .L80042DE0
/* 335A8 80042DA8 21204002 */   addu      $a0, $s2, $zero
/* 335AC 80042DAC 0400278E */  lw         $a3, 0x4($s1)
/* 335B0 80042DB0 0800228E */  lw         $v0, 0x8($s1)
/* 335B4 80042DB4 03000524 */  addiu      $a1, $zero, 0x3
/* 335B8 80042DB8 1000A2AF */  sw         $v0, 0x10($sp)
/* 335BC 80042DBC 0000268E */  lw         $a2, 0x0($s1)
/* 335C0 80042DC0 69BE000C */  jal        RequestParticle
/* 335C4 80042DC4 9CFFE724 */   addiu     $a3, $a3, -0x64
/* 335C8 80042DC8 4400448E */  lw         $a0, 0x44($s2)
/* 335CC 80042DCC BFFF023C */  lui        $v0, (0xFFBFFFFF >> 16)
/* 335D0 80042DD0 1C00838C */  lw         $v1, 0x1C($a0)
/* 335D4 80042DD4 FFFF4234 */  ori        $v0, $v0, (0xFFBFFFFF & 0xFFFF)
/* 335D8 80042DD8 24186200 */  and        $v1, $v1, $v0
/* 335DC 80042DDC 1C0083AC */  sw         $v1, 0x1C($a0)
.L80042DE0:
/* 335E0 80042DE0 63DD000C */  jal        CheckIfPooled
/* 335E4 80042DE4 2120C002 */   addu      $a0, $s6, $zero
/* 335E8 80042DE8 05004010 */  beqz       $v0, .L80042E00
/* 335EC 80042DEC 21204002 */   addu      $a0, $s2, $zero
/* 335F0 80042DF0 3BDD000C */  jal        AllocatePoolActor
/* 335F4 80042DF4 2128C002 */   addu      $a1, $s6, $zero
/* 335F8 80042DF8 09004010 */  beqz       $v0, .L80042E20
/* 335FC 80042DFC 200142AE */   sw        $v0, 0x120($s2)
.L80042E00:
/* 33600 80042E00 1000428E */  lw         $v0, 0x10($s2)
/* 33604 80042E04 00000000 */  nop
/* 33608 80042E08 00014234 */  ori        $v0, $v0, 0x100
/* 3360C 80042E0C 100042AE */  sw         $v0, 0x10($s2)
/* 33610 80042E10 1C00238E */  lw         $v1, 0x1C($s1)
/* 33614 80042E14 00000000 */  nop
/* 33618 80042E18 08006334 */  ori        $v1, $v1, 0x8
/* 3361C 80042E1C 1C0023AE */  sw         $v1, 0x1C($s1)
.L80042E20:
/* 33620 80042E20 FFFFF726 */  addiu      $s7, $s7, -0x1
/* 33624 80042E24 A8FFE016 */  bnez       $s7, .L80042CC8
/* 33628 80042E28 24003126 */   addiu     $s1, $s1, 0x24
.L80042E2C:
/* 3362C 80042E2C 3C00BF8F */  lw         $ra, 0x3C($sp)
/* 33630 80042E30 3800BE8F */  lw         $fp, 0x38($sp)
/* 33634 80042E34 3400B78F */  lw         $s7, 0x34($sp)
/* 33638 80042E38 3000B68F */  lw         $s6, 0x30($sp)
/* 3363C 80042E3C 2C00B58F */  lw         $s5, 0x2C($sp)
/* 33640 80042E40 2800B48F */  lw         $s4, 0x28($sp)
/* 33644 80042E44 2400B38F */  lw         $s3, 0x24($sp)
/* 33648 80042E48 2000B28F */  lw         $s2, 0x20($sp)
/* 3364C 80042E4C 1C00B18F */  lw         $s1, 0x1C($sp)
/* 33650 80042E50 1800B08F */  lw         $s0, 0x18($sp)
/* 33654 80042E54 0800E003 */  jr         $ra
/* 33658 80042E58 4000BD27 */   addiu     $sp, $sp, 0x40
.size CheckSpawn, . - CheckSpawn
