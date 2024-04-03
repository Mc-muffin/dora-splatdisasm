.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel IncrementWorld
/* 18570 80027D70 8407858F */  lw         $a1, %gp_rel(gmenuworld)($gp)
/* 18574 80027D74 00000000 */  nop
/* 18578 80027D78 0100A524 */  addiu      $a1, $a1, 0x1
/* 1857C 80027D7C 0900A22C */  sltiu      $v0, $a1, 0x9
/* 18580 80027D80 02004014 */  bnez       $v0, .L80027D8C
/* 18584 80027D84 0880023C */   lui       $v0, %hi(WorldList)
/* 18588 80027D88 21280000 */  addu       $a1, $zero, $zero
.L80027D8C:
/* 1858C 80027D8C 6C644224 */  addiu      $v0, $v0, %lo(WorldList)
/* 18590 80027D90 80180500 */  sll        $v1, $a1, 2
/* 18594 80027D94 21186500 */  addu       $v1, $v1, $a1
/* 18598 80027D98 80180300 */  sll        $v1, $v1, 2
/* 1859C 80027D9C 21186200 */  addu       $v1, $v1, $v0
/* 185A0 80027DA0 0000648C */  lw         $a0, 0x0($v1)
/* 185A4 80027DA4 840785AF */  sw         $a1, %gp_rel(gmenuworld)($gp)
/* 185A8 80027DA8 880780AF */  sw         $zero, %gp_rel(gmenulevel)($gp)
/* 185AC 80027DAC 0980013C */  lui        $at, %hi(gWorld)
/* 185B0 80027DB0 3C5624AC */  sw         $a0, %lo(gWorld)($at)
/* 185B4 80027DB4 0800E003 */  jr         $ra
/* 185B8 80027DB8 00000000 */   nop
.size IncrementWorld, . - IncrementWorld
