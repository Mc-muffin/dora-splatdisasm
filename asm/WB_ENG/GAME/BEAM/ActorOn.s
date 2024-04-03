.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ActorOn
/* 34D80 80044580 1000828C */  lw         $v0, 0x10($a0)
/* 34D84 80044584 00000000 */  nop
/* 34D88 80044588 00054234 */  ori        $v0, $v0, 0x500
/* 34D8C 8004458C 0800E003 */  jr         $ra
/* 34D90 80044590 100082AC */   sw        $v0, 0x10($a0)
.size ActorOn, . - ActorOn
