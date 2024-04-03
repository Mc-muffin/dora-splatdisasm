.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitMemCard
/* 199D0 800291D0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 199D4 800291D4 1800BFAF */  sw         $ra, 0x18($sp)
/* 199D8 800291D8 FFEF010C */  jal        MemCardInit
/* 199DC 800291DC 01000424 */   addiu     $a0, $zero, 0x1
/* 199E0 800291E0 1EF2010C */  jal        MemCardStart
/* 199E4 800291E4 00000000 */   nop
/* 199E8 800291E8 4864010C */  jal        initInputSystem
/* 199EC 800291EC 00000000 */   nop
/* 199F0 800291F0 0A80043C */  lui        $a0, %hi(ETMcGuiEnv)
/* 199F4 800291F4 D8838424 */  addiu      $a0, $a0, %lo(ETMcGuiEnv)
/* 199F8 800291F8 6EC1010C */  jal        McGuiSetExternalFont
/* 199FC 800291FC 01000524 */   addiu     $a1, $zero, 0x1
/* 19A00 80029200 1800BF8F */  lw         $ra, 0x18($sp)
/* 19A04 80029204 00000000 */  nop
/* 19A08 80029208 0800E003 */  jr         $ra
/* 19A0C 8002920C 2000BD27 */   addiu     $sp, $sp, 0x20
.size InitMemCard, . - InitMemCard
