.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DeAllocatePoolActor
/* 27E80 80037680 21288000 */  addu       $a1, $a0, $zero
/* 27E84 80037684 4400A28C */  lw         $v0, 0x44($a1)
/* 27E88 80037688 0A80043C */  lui        $a0, %hi(ActorDynamicPool)
/* 27E8C 8003768C 1000438C */  lw         $v1, 0x10($v0)
/* 27E90 80037690 88908424 */  addiu      $a0, $a0, %lo(ActorDynamicPool)
/* 27E94 80037694 40100300 */  sll        $v0, $v1, 1
/* 27E98 80037698 21104300 */  addu       $v0, $v0, $v1
/* 27E9C 8003769C C0100200 */  sll        $v0, $v0, 3
/* 27EA0 800376A0 23104300 */  subu       $v0, $v0, $v1
/* 27EA4 800376A4 80100200 */  sll        $v0, $v0, 2
/* 27EA8 800376A8 21104400 */  addu       $v0, $v0, $a0
/* 27EAC 800376AC 0000438C */  lw         $v1, 0x0($v0)
/* 27EB0 800376B0 00000000 */  nop
/* 27EB4 800376B4 01006338 */  xori       $v1, $v1, 0x1
/* 27EB8 800376B8 0E006014 */  bnez       $v1, .L800376F4
/* 27EBC 800376BC 00000000 */   nop
/* 27EC0 800376C0 2001A28C */  lw         $v0, 0x120($a1)
/* 27EC4 800376C4 00000000 */  nop
/* 27EC8 800376C8 0A004010 */  beqz       $v0, .L800376F4
/* 27ECC 800376CC 00000000 */   nop
/* 27ED0 800376D0 1801A28C */  lw         $v0, 0x118($a1)
/* 27ED4 800376D4 00000000 */  nop
/* 27ED8 800376D8 000040AC */  sw         $zero, 0x0($v0)
/* 27EDC 800376DC 1C01A38C */  lw         $v1, 0x11C($a1)
/* 27EE0 800376E0 00000000 */  nop
/* 27EE4 800376E4 0000628C */  lw         $v0, 0x0($v1)
/* 27EE8 800376E8 00000000 */  nop
/* 27EEC 800376EC FFFF4224 */  addiu      $v0, $v0, -0x1
/* 27EF0 800376F0 000062AC */  sw         $v0, 0x0($v1)
.L800376F4:
/* 27EF4 800376F4 0800E003 */  jr         $ra
/* 27EF8 800376F8 00000000 */   nop
.size DeAllocatePoolActor, . - DeAllocatePoolActor
