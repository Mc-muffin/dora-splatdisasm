.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetSphereCenter
/* 52598 80061D98 2001838C */  lw         $v1, 0x120($a0)
/* 5259C 80061D9C 00000000 */  nop
/* 525A0 80061DA0 2000628C */  lw         $v0, 0x20($v1)
/* 525A4 80061DA4 40290500 */  sll        $a1, $a1, 5
/* 525A8 80061DA8 21104500 */  addu       $v0, $v0, $a1
/* 525AC 80061DAC 00004394 */  lhu        $v1, 0x0($v0)
/* 525B0 80061DB0 00000000 */  nop
/* 525B4 80061DB4 1C0043AC */  sw         $v1, 0x1C($v0)
/* 525B8 80061DB8 0800E003 */  jr         $ra
/* 525BC 80061DBC 10004224 */   addiu     $v0, $v0, 0x10
.size GetSphereCenter, . - GetSphereCenter
