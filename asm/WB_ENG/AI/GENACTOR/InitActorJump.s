.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitActorJump
/* 3AB68 8004A368 0800E003 */  jr         $ra
/* 3AB6C 8004A36C 0000A0AC */   sw        $zero, 0x0($a1)
.size InitActorJump, . - InitActorJump
