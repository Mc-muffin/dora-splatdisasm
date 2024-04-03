.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetPressureCreatedTriggerVO
/* 30E3C 8004063C 200C828F */  lw         $v0, %gp_rel(numstaticpressuretriggers)($gp)
/* 30E40 80040640 00000000 */  nop
/* 30E44 80040644 2128A200 */  addu       $a1, $a1, $v0
/* 30E48 80040648 00190500 */  sll        $v1, $a1, 4
/* 30E4C 8004064C 21186500 */  addu       $v1, $v1, $a1
/* 30E50 80040650 C0180300 */  sll        $v1, $v1, 3
/* 30E54 80040654 C014828F */  lw         $v0, %gp_rel(PressureTrigger)($gp)
/* 30E58 80040658 0000858C */  lw         $a1, 0x0($a0)
/* 30E5C 8004065C 21104300 */  addu       $v0, $v0, $v1
/* 30E60 80040660 240045AC */  sw         $a1, 0x24($v0)
/* 30E64 80040664 0400868C */  lw         $a2, 0x4($a0)
/* 30E68 80040668 24004224 */  addiu      $v0, $v0, 0x24
/* 30E6C 8004066C 040046AC */  sw         $a2, 0x4($v0)
/* 30E70 80040670 0800838C */  lw         $v1, 0x8($a0)
/* 30E74 80040674 00000000 */  nop
/* 30E78 80040678 080043AC */  sw         $v1, 0x8($v0)
/* 30E7C 8004067C 0C00858C */  lw         $a1, 0xC($a0)
/* 30E80 80040680 00000000 */  nop
/* 30E84 80040684 0C0045AC */  sw         $a1, 0xC($v0)
/* 30E88 80040688 1000838C */  lw         $v1, 0x10($a0)
/* 30E8C 8004068C 0800E003 */  jr         $ra
/* 30E90 80040690 100043AC */   sw        $v1, 0x10($v0)
.size SetPressureCreatedTriggerVO, . - SetPressureCreatedTriggerVO
