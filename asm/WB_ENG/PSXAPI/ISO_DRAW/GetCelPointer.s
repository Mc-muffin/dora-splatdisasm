.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetCelPointer
/* 55A94 80065294 0880023C */  lui        $v0, %hi(TestWorld + 0x18)
/* 55A98 80065298 FF3F8430 */  andi       $a0, $a0, 0x3FFF
/* 55A9C 8006529C A465438C */  lw         $v1, %lo(TestWorld + 0x18)($v0)
/* 55AA0 800652A0 80200400 */  sll        $a0, $a0, 2
/* 55AA4 800652A4 21208300 */  addu       $a0, $a0, $v1
/* 55AA8 800652A8 0000828C */  lw         $v0, 0x0($a0)
/* 55AAC 800652AC 0800E003 */  jr         $ra
/* 55AB0 800652B0 00000000 */   nop
.size GetCelPointer, . - GetCelPointer
