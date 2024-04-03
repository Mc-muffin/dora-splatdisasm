.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CalcMallocEnvRadiusCollisions
/* B320 8001AB20 0880083C */  lui        $t0, %hi(TestWorld)
/* B324 8001AB24 8C65028D */  lw         $v0, %lo(TestWorld)($t0)
/* B328 8001AB28 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* B32C 8001AB2C 3000B6AF */  sw         $s6, 0x30($sp)
/* B330 8001AB30 21B00000 */  addu       $s6, $zero, $zero
/* B334 8001AB34 2000B2AF */  sw         $s2, 0x20($sp)
/* B338 8001AB38 3C00BFAF */  sw         $ra, 0x3C($sp)
/* B33C 8001AB3C 3800BEAF */  sw         $fp, 0x38($sp)
/* B340 8001AB40 3400B7AF */  sw         $s7, 0x34($sp)
/* B344 8001AB44 2C00B5AF */  sw         $s5, 0x2C($sp)
/* B348 8001AB48 2800B4AF */  sw         $s4, 0x28($sp)
/* B34C 8001AB4C 2400B3AF */  sw         $s3, 0x24($sp)
/* B350 8001AB50 1C00B1AF */  sw         $s1, 0x1C($sp)
/* B354 8001AB54 1800B0AF */  sw         $s0, 0x18($sp)
/* B358 8001AB58 F01280AF */  sw         $zero, %gp_rel(NumEnvRadiusCollisions)($gp)
/* B35C 8001AB5C 35004010 */  beqz       $v0, .L8001AC34
/* B360 8001AB60 21900000 */   addu      $s2, $zero, $zero
/* B364 8001AB64 21380001 */  addu       $a3, $t0, $zero
/* B368 8001AB68 21880000 */  addu       $s1, $zero, $zero
.L8001AB6C:
/* B36C 8001AB6C 0880033C */  lui        $v1, %hi(TestWorld)
/* B370 8001AB70 8C656324 */  addiu      $v1, $v1, %lo(TestWorld)
/* B374 8001AB74 0400628C */  lw         $v0, 0x4($v1)
/* B378 8001AB78 00000000 */  nop
/* B37C 8001AB7C 28004010 */  beqz       $v0, .L8001AC20
/* B380 8001AB80 0100DE26 */   addiu     $fp, $s6, 0x1
/* B384 8001AB84 8C65F424 */  addiu      $s4, $a3, %lo(TestWorld)
.L8001AB88:
/* B388 8001AB88 21800000 */  addu       $s0, $zero, $zero
/* B38C 8001AB8C 0800828E */  lw         $v0, 0x8($s4)
/* B390 8001AB90 00000000 */  nop
/* B394 8001AB94 1D004010 */  beqz       $v0, .L8001AC0C
/* B398 8001AB98 01003326 */   addiu     $s3, $s1, 0x1
/* B39C 8001AB9C FF031724 */  addiu      $s7, $zero, 0x3FF
/* B3A0 8001ABA0 8C65F524 */  addiu      $s5, $a3, %lo(TestWorld)
/* B3A4 8001ABA4 2120C002 */  addu       $a0, $s6, $zero
.L8001ABA8:
/* B3A8 8001ABA8 21282002 */  addu       $a1, $s1, $zero
/* B3AC 8001ABAC 21300002 */  addu       $a2, $s0, $zero
/* B3B0 8001ABB0 1000A7AF */  sw         $a3, 0x10($sp)
/* B3B4 8001ABB4 1694010C */  jal        GetCelIndex
/* B3B8 8001ABB8 1400A8AF */   sw        $t0, 0x14($sp)
/* B3BC 8001ABBC FF034330 */  andi       $v1, $v0, 0x3FF
/* B3C0 8001ABC0 1000A78F */  lw         $a3, 0x10($sp)
/* B3C4 8001ABC4 1400A88F */  lw         $t0, 0x14($sp)
/* B3C8 8001ABC8 0B007710 */  beq        $v1, $s7, .L8001ABF8
/* B3CC 8001ABCC 80100300 */   sll       $v0, $v1, 2
/* B3D0 8001ABD0 21104300 */  addu       $v0, $v0, $v1
/* B3D4 8001ABD4 0980043C */  lui        $a0, %hi(CellAttributesPtr)
/* B3D8 8001ABD8 6C50848C */  lw         $a0, %lo(CellAttributesPtr)($a0)
/* B3DC 8001ABDC C0100200 */  sll        $v0, $v0, 3
/* B3E0 8001ABE0 21208200 */  addu       $a0, $a0, $v0
/* B3E4 8001ABE4 20008394 */  lhu        $v1, 0x20($a0)
/* B3E8 8001ABE8 00000000 */  nop
/* B3EC 8001ABEC 02006010 */  beqz       $v1, .L8001ABF8
/* B3F0 8001ABF0 00000000 */   nop
/* B3F4 8001ABF4 01005226 */  addiu      $s2, $s2, 0x1
.L8001ABF8:
/* B3F8 8001ABF8 0800A28E */  lw         $v0, 0x8($s5)
/* B3FC 8001ABFC 01001026 */  addiu      $s0, $s0, 0x1
/* B400 8001AC00 2B100202 */  sltu       $v0, $s0, $v0
/* B404 8001AC04 E8FF4014 */  bnez       $v0, .L8001ABA8
/* B408 8001AC08 2120C002 */   addu      $a0, $s6, $zero
.L8001AC0C:
/* B40C 8001AC0C 0400828E */  lw         $v0, 0x4($s4)
/* B410 8001AC10 21886002 */  addu       $s1, $s3, $zero
/* B414 8001AC14 2B102202 */  sltu       $v0, $s1, $v0
/* B418 8001AC18 DBFF4014 */  bnez       $v0, .L8001AB88
/* B41C 8001AC1C 00000000 */   nop
.L8001AC20:
/* B420 8001AC20 8C65028D */  lw         $v0, %lo(TestWorld)($t0)
/* B424 8001AC24 21B0C003 */  addu       $s6, $fp, $zero
/* B428 8001AC28 2B10C202 */  sltu       $v0, $s6, $v0
/* B42C 8001AC2C CFFF4014 */  bnez       $v0, .L8001AB6C
/* B430 8001AC30 21880000 */   addu      $s1, $zero, $zero
.L8001AC34:
/* B434 8001AC34 06004012 */  beqz       $s2, .L8001AC50
/* B438 8001AC38 00000000 */   nop
/* B43C 8001AC3C 2B3F010C */  jal        new_malloc
/* B440 8001AC40 00211200 */   sll       $a0, $s2, 4
/* B444 8001AC44 F41282AF */  sw         $v0, %gp_rel(EnvRadiusCollisionsPtr)($gp)
/* B448 8001AC48 156B0008 */  j          .L8001AC54
/* B44C 8001AC4C 00000000 */   nop
.L8001AC50:
/* B450 8001AC50 F41280AF */  sw         $zero, %gp_rel(EnvRadiusCollisionsPtr)($gp)
.L8001AC54:
/* B454 8001AC54 3C00BF8F */  lw         $ra, 0x3C($sp)
/* B458 8001AC58 3800BE8F */  lw         $fp, 0x38($sp)
/* B45C 8001AC5C 3400B78F */  lw         $s7, 0x34($sp)
/* B460 8001AC60 3000B68F */  lw         $s6, 0x30($sp)
/* B464 8001AC64 2C00B58F */  lw         $s5, 0x2C($sp)
/* B468 8001AC68 2800B48F */  lw         $s4, 0x28($sp)
/* B46C 8001AC6C 2400B38F */  lw         $s3, 0x24($sp)
/* B470 8001AC70 2000B28F */  lw         $s2, 0x20($sp)
/* B474 8001AC74 1C00B18F */  lw         $s1, 0x1C($sp)
/* B478 8001AC78 1800B08F */  lw         $s0, 0x18($sp)
/* B47C 8001AC7C 0800E003 */  jr         $ra
/* B480 8001AC80 4000BD27 */   addiu     $sp, $sp, 0x40
.size CalcMallocEnvRadiusCollisions, . - CalcMallocEnvRadiusCollisions
