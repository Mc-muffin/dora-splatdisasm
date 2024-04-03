.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TriggerRideActor
/* 39250 80048A50 2801838C */  lw         $v1, 0x128($a0)
/* 39254 80048A54 04000224 */  addiu      $v0, $zero, 0x4
/* 39258 80048A58 0800E003 */  jr         $ra
/* 3925C 80048A5C 000062AC */   sw        $v0, 0x0($v1)
.size TriggerRideActor, . - TriggerRideActor
