.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ReSetFOV
/* 2B3E4 8003ABE4 00020224 */  addiu      $v0, $zero, 0x200
/* 2B3E8 8003ABE8 0980013C */  lui        $at, %hi(TESTZ)
/* 2B3EC 8003ABEC 445322AC */  sw         $v0, %lo(TESTZ)($at)
/* 2B3F0 8003ABF0 0800E003 */  jr         $ra
/* 2B3F4 8003ABF4 00000000 */   nop
.size ReSetFOV, . - ReSetFOV
