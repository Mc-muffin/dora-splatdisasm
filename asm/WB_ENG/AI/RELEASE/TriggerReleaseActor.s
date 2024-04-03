.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TriggerReleaseActor
/* 39240 80048A40 2801838C */  lw         $v1, 0x128($a0)
/* 39244 80048A44 01000224 */  addiu      $v0, $zero, 0x1
/* 39248 80048A48 0800E003 */  jr         $ra
/* 3924C 80048A4C 380062AC */   sw        $v0, 0x38($v1)
.size TriggerReleaseActor, . - TriggerReleaseActor
