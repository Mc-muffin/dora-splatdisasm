.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetCelPointerAddr
/* 55AB4 800652B4 0880033C */  lui        $v1, %hi(TestWorld + 0x18)
/* 55AB8 800652B8 A465628C */  lw         $v0, %lo(TestWorld + 0x18)($v1)
/* 55ABC 800652BC FF3F8430 */  andi       $a0, $a0, 0x3FFF
/* 55AC0 800652C0 80200400 */  sll        $a0, $a0, 2
/* 55AC4 800652C4 0800E003 */  jr         $ra
/* 55AC8 800652C8 21104400 */   addu      $v0, $v0, $a0
.size GetCelPointerAddr, . - GetCelPointerAddr
