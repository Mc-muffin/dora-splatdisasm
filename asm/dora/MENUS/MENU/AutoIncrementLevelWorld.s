.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AutoIncrementLevelWorld
/* 18628 80027E28 0880023C */  lui        $v0, %hi(WorldList)
/* 1862C 80027E2C 6C644624 */  addiu      $a2, $v0, %lo(WorldList)
/* 18630 80027E30 8407848F */  lw         $a0, %gp_rel(gmenuworld)($gp)
/* 18634 80027E34 8807858F */  lw         $a1, %gp_rel(gmenulevel)($gp)
/* 18638 80027E38 80180400 */  sll        $v1, $a0, 2
/* 1863C 80027E3C 21186400 */  addu       $v1, $v1, $a0
/* 18640 80027E40 80180300 */  sll        $v1, $v1, 2
/* 18644 80027E44 2118C300 */  addu       $v1, $a2, $v1
/* 18648 80027E48 0400628C */  lw         $v0, 0x4($v1)
/* 1864C 80027E4C 0100A524 */  addiu      $a1, $a1, 0x1
/* 18650 80027E50 2A10A200 */  slt        $v0, $a1, $v0
/* 18654 80027E54 0E004014 */  bnez       $v0, .L80027E90
/* 18658 80027E58 01008424 */   addiu     $a0, $a0, 0x1
/* 1865C 80027E5C 0900822C */  sltiu      $v0, $a0, 0x9
/* 18660 80027E60 02004014 */  bnez       $v0, .L80027E6C
/* 18664 80027E64 21280000 */   addu      $a1, $zero, $zero
/* 18668 80027E68 21200000 */  addu       $a0, $zero, $zero
.L80027E6C:
/* 1866C 80027E6C 80100400 */  sll        $v0, $a0, 2
/* 18670 80027E70 21104400 */  addu       $v0, $v0, $a0
/* 18674 80027E74 80100200 */  sll        $v0, $v0, 2
/* 18678 80027E78 21104600 */  addu       $v0, $v0, $a2
/* 1867C 80027E7C 0000438C */  lw         $v1, 0x0($v0)
/* 18680 80027E80 840784AF */  sw         $a0, %gp_rel(gmenuworld)($gp)
/* 18684 80027E84 880780AF */  sw         $zero, %gp_rel(gmenulevel)($gp)
/* 18688 80027E88 0980013C */  lui        $at, %hi(gWorld)
/* 1868C 80027E8C 3C5623AC */  sw         $v1, %lo(gWorld)($at)
.L80027E90:
/* 18690 80027E90 880785AF */  sw         $a1, %gp_rel(gmenulevel)($gp)
/* 18694 80027E94 0980013C */  lui        $at, %hi(gLevel)
/* 18698 80027E98 345625AC */  sw         $a1, %lo(gLevel)($at)
/* 1869C 80027E9C 0800E003 */  jr         $ra
/* 186A0 80027EA0 00000000 */   nop
.size AutoIncrementLevelWorld, . - AutoIncrementLevelWorld
