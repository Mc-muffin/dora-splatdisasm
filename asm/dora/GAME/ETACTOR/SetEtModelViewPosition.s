.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetEtModelViewPosition
/* AC38 8001A438 00100324 */  addiu      $v1, $zero, 0x1000
/* AC3C 8001A43C 0980023C */  lui        $v0, %hi(ETActor)
/* AC40 8001A440 B05A40AC */  sw         $zero, %lo(ETActor)($v0)
/* AC44 8001A444 B05A4224 */  addiu      $v0, $v0, %lo(ETActor)
/* AC48 8001A448 0980013C */  lui        $at, %hi(actorscale)
/* AC4C 8001A44C 085523AC */  sw         $v1, %lo(actorscale)($at)
/* AC50 8001A450 040040AC */  sw         $zero, 0x4($v0)
/* AC54 8001A454 0800E003 */  jr         $ra
/* AC58 8001A458 080040AC */   sw        $zero, 0x8($v0)
.size SetEtModelViewPosition, . - SetEtModelViewPosition
