.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitAllCellAttributes
/* 14C6C 8002446C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 14C70 80024470 0880023C */  lui        $v0, %hi(TestWorld + 0xC)
/* 14C74 80024474 1000B0AF */  sw         $s0, 0x10($sp)
/* 14C78 80024478 9865508C */  lw         $s0, %lo(TestWorld + 0xC)($v0)
/* 14C7C 8002447C 1400BFAF */  sw         $ra, 0x14($sp)
/* 14C80 80024480 80201000 */  sll        $a0, $s0, 2
/* 14C84 80024484 21209000 */  addu       $a0, $a0, $s0
/* 14C88 80024488 2B3F010C */  jal        new_malloc
/* 14C8C 8002448C C0200400 */   sll       $a0, $a0, 3
/* 14C90 80024490 0980013C */  lui        $at, %hi(CellAttributesPtr)
/* 14C94 80024494 6C5022AC */  sw         $v0, %lo(CellAttributesPtr)($at)
/* 14C98 80024498 1F00001A */  blez       $s0, .L80024518
/* 14C9C 8002449C 21280000 */   addu      $a1, $zero, $zero
/* 14CA0 800244A0 34030B24 */  addiu      $t3, $zero, 0x334
/* 14CA4 800244A4 70020A24 */  addiu      $t2, $zero, 0x270
/* 14CA8 800244A8 50000924 */  addiu      $t1, $zero, 0x50
/* 14CAC 800244AC 0F000824 */  addiu      $t0, $zero, 0xF
/* 14CB0 800244B0 FFFF0724 */  addiu      $a3, $zero, -0x1
/* 14CB4 800244B4 FFFF0624 */  addiu      $a2, $zero, -0x1
.L800244B8:
/* 14CB8 800244B8 FF03A430 */  andi       $a0, $a1, 0x3FF
/* 14CBC 800244BC 0100A524 */  addiu      $a1, $a1, 0x1
/* 14CC0 800244C0 80180400 */  sll        $v1, $a0, 2
/* 14CC4 800244C4 21186400 */  addu       $v1, $v1, $a0
/* 14CC8 800244C8 0980023C */  lui        $v0, %hi(CellAttributesPtr)
/* 14CCC 800244CC 6C50428C */  lw         $v0, %lo(CellAttributesPtr)($v0)
/* 14CD0 800244D0 C0180300 */  sll        $v1, $v1, 3
/* 14CD4 800244D4 21104300 */  addu       $v0, $v0, $v1
/* 14CD8 800244D8 2A18B000 */  slt        $v1, $a1, $s0
/* 14CDC 800244DC 04004BAC */  sw         $t3, 0x4($v0)
/* 14CE0 800244E0 140040A4 */  sh         $zero, 0x14($v0)
/* 14CE4 800244E4 160040A4 */  sh         $zero, 0x16($v0)
/* 14CE8 800244E8 180040A4 */  sh         $zero, 0x18($v0)
/* 14CEC 800244EC 1A0040A4 */  sh         $zero, 0x1A($v0)
/* 14CF0 800244F0 1C004AA4 */  sh         $t2, 0x1C($v0)
/* 14CF4 800244F4 1E0049A4 */  sh         $t1, 0x1E($v0)
/* 14CF8 800244F8 080048AC */  sw         $t0, 0x8($v0)
/* 14CFC 800244FC 0C0040A4 */  sh         $zero, 0xC($v0)
/* 14D00 80024500 0E0040A4 */  sh         $zero, 0xE($v0)
/* 14D04 80024504 100040A4 */  sh         $zero, 0x10($v0)
/* 14D08 80024508 200040A4 */  sh         $zero, 0x20($v0)
/* 14D0C 8002450C 240047A0 */  sb         $a3, 0x24($v0)
/* 14D10 80024510 E9FF6014 */  bnez       $v1, .L800244B8
/* 14D14 80024514 220046A4 */   sh        $a2, 0x22($v0)
.L80024518:
/* 14D18 80024518 1400BF8F */  lw         $ra, 0x14($sp)
/* 14D1C 8002451C 1000B08F */  lw         $s0, 0x10($sp)
/* 14D20 80024520 0800E003 */  jr         $ra
/* 14D24 80024524 1800BD27 */   addiu     $sp, $sp, 0x18
.size InitAllCellAttributes, . - InitAllCellAttributes
