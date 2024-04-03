.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetETWorldScale
/* AC5C 8001A45C 00100224 */  addiu      $v0, $zero, 0x1000
/* AC60 8001A460 0980013C */  lui        $at, %hi(actorscale)
/* AC64 8001A464 085522AC */  sw         $v0, %lo(actorscale)($at)
/* AC68 8001A468 0800E003 */  jr         $ra
/* AC6C 8001A46C 00000000 */   nop
.size SetETWorldScale, . - SetETWorldScale
