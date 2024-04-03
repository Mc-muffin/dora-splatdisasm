.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetFOV
/* 2B3D4 8003ABD4 0980013C */  lui        $at, %hi(TESTZ)
/* 2B3D8 8003ABD8 445324AC */  sw         $a0, %lo(TESTZ)($at)
/* 2B3DC 8003ABDC 0800E003 */  jr         $ra
/* 2B3E0 8003ABE0 00000000 */   nop
.size SetFOV, . - SetFOV
