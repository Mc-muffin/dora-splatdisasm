.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pbag_to_mesh
/* 10C90 80020490 21108000 */  addu       $v0, $a0, $zero
/* 10C94 80020494 0F008428 */  slti       $a0, $a0, 0xF
/* 10C98 80020498 02008014 */  bnez       $a0, .L800204A4
/* 10C9C 8002049C 00000000 */   nop
/* 10CA0 800204A0 10F04224 */  addiu      $v0, $v0, -0xFF0
.L800204A4:
/* 10CA4 800204A4 0800E003 */  jr         $ra
/* 10CA8 800204A8 00000000 */   nop
.size pbag_to_mesh, . - pbag_to_mesh
