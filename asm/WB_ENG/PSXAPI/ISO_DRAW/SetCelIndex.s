.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetCelIndex
/* 558B0 800650B0 0880033C */  lui        $v1, %hi(TestWorld)
/* 558B4 800650B4 8C65688C */  lw         $t0, %lo(TestWorld)($v1)
/* 558B8 800650B8 00000000 */  nop
/* 558BC 800650BC 1800C800 */  mult       $a2, $t0
/* 558C0 800650C0 8C656324 */  addiu      $v1, $v1, %lo(TestWorld)
/* 558C4 800650C4 12300000 */  mflo       $a2
/* 558C8 800650C8 0400628C */  lw         $v0, 0x4($v1)
/* 558CC 800650CC 00000000 */  nop
/* 558D0 800650D0 1800C200 */  mult       $a2, $v0
/* 558D4 800650D4 12300000 */  mflo       $a2
/* 558D8 800650D8 00000000 */  nop
/* 558DC 800650DC 00000000 */  nop
/* 558E0 800650E0 1800A800 */  mult       $a1, $t0
/* 558E4 800650E4 1400628C */  lw         $v0, 0x14($v1)
/* 558E8 800650E8 12280000 */  mflo       $a1
/* 558EC 800650EC 2130C500 */  addu       $a2, $a2, $a1
/* 558F0 800650F0 2130C400 */  addu       $a2, $a2, $a0
/* 558F4 800650F4 40300600 */  sll        $a2, $a2, 1
/* 558F8 800650F8 21104600 */  addu       $v0, $v0, $a2
/* 558FC 800650FC 0800E003 */  jr         $ra
/* 55900 80065100 000047A4 */   sh        $a3, 0x0($v0)
.size SetCelIndex, . - SetCelIndex
