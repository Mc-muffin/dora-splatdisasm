.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CalcCellDepth2
/* 56EC0 800666C0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 56EC4 800666C4 0880033C */  lui        $v1, %hi(TestWorld + 0x18)
/* 56EC8 800666C8 FF038230 */  andi       $v0, $a0, 0x3FF
/* 56ECC 800666CC A465658C */  lw         $a1, %lo(TestWorld + 0x18)($v1)
/* 56ED0 800666D0 80100200 */  sll        $v0, $v0, 2
/* 56ED4 800666D4 1800BFAF */  sw         $ra, 0x18($sp)
/* 56ED8 800666D8 21104500 */  addu       $v0, $v0, $a1
/* 56EDC 800666DC 0000478C */  lw         $a3, 0x0($v0)
/* 56EE0 800666E0 80010624 */  addiu      $a2, $zero, 0x180
/* 56EE4 800666E4 1000A4AF */  sw         $a0, 0x10($sp)
/* 56EE8 800666E8 80010424 */  addiu      $a0, $zero, 0x180
/* 56EEC 800666EC 5E85010C */  jal        CreateCelDepth2
/* 56EF0 800666F0 21280000 */   addu      $a1, $zero, $zero
/* 56EF4 800666F4 1800BF8F */  lw         $ra, 0x18($sp)
/* 56EF8 800666F8 00000000 */  nop
/* 56EFC 800666FC 0800E003 */  jr         $ra
/* 56F00 80066700 2000BD27 */   addiu     $sp, $sp, 0x20
.size CalcCellDepth2, . - CalcCellDepth2
