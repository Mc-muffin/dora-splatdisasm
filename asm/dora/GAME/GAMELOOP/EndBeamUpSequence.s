.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel EndBeamUpSequence
/* 23D9C 8003359C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 23DA0 800335A0 04000224 */  addiu      $v0, $zero, 0x4
/* 23DA4 800335A4 0B000324 */  addiu      $v1, $zero, 0xB
/* 23DA8 800335A8 1000BFAF */  sw         $ra, 0x10($sp)
/* 23DAC 800335AC 201482AF */  sw         $v0, %gp_rel(gGameState)($gp)
/* 23DB0 800335B0 0980013C */  lui        $at, %hi(MINDIV)
/* 23DB4 800335B4 644323AC */  sw         $v1, %lo(MINDIV)($at)
/* 23DB8 800335B8 07ED000C */  jal        SetAggressive
/* 23DBC 800335BC 02000424 */   addiu     $a0, $zero, 0x2
/* 23DC0 800335C0 F7EC000C */  jal        SetLocaleAggressive
/* 23DC4 800335C4 02000424 */   addiu     $a0, $zero, 0x2
/* 23DC8 800335C8 1000BF8F */  lw         $ra, 0x10($sp)
/* 23DCC 800335CC 00000000 */  nop
/* 23DD0 800335D0 0800E003 */  jr         $ra
/* 23DD4 800335D4 1800BD27 */   addiu     $sp, $sp, 0x18
.size EndBeamUpSequence, . - EndBeamUpSequence
