.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ResetDynamicPoolList
/* 273B8 80036BB8 21180000 */  addu       $v1, $zero, $zero
/* 273BC 80036BBC 0A80023C */  lui        $v0, %hi(ActorDynamicPool)
/* 273C0 80036BC0 88904724 */  addiu      $a3, $v0, %lo(ActorDynamicPool)
/* 273C4 80036BC4 0400E924 */  addiu      $t1, $a3, 0x4
/* 273C8 80036BC8 1000E824 */  addiu      $t0, $a3, 0x10
/* 273CC 80036BCC 01006624 */  addiu      $a2, $v1, 0x1
.L80036BD0:
/* 273D0 80036BD0 40100300 */  sll        $v0, $v1, 1
/* 273D4 80036BD4 21104300 */  addu       $v0, $v0, $v1
/* 273D8 80036BD8 C0100200 */  sll        $v0, $v0, 3
/* 273DC 80036BDC 23104300 */  subu       $v0, $v0, $v1
/* 273E0 80036BE0 80100200 */  sll        $v0, $v0, 2
/* 273E4 80036BE4 21204800 */  addu       $a0, $v0, $t0
/* 273E8 80036BE8 09000524 */  addiu      $a1, $zero, 0x9
/* 273EC 80036BEC 21184900 */  addu       $v1, $v0, $t1
/* 273F0 80036BF0 21104700 */  addu       $v0, $v0, $a3
/* 273F4 80036BF4 000060AC */  sw         $zero, 0x0($v1)
/* 273F8 80036BF8 000040AC */  sw         $zero, 0x0($v0)
.L80036BFC:
/* 273FC 80036BFC FCFF80AC */  sw         $zero, -0x4($a0)
/* 27400 80036C00 000080AC */  sw         $zero, 0x0($a0)
/* 27404 80036C04 FFFFA524 */  addiu      $a1, $a1, -0x1
/* 27408 80036C08 FCFFA104 */  bgez       $a1, .L80036BFC
/* 2740C 80036C0C 08008424 */   addiu     $a0, $a0, 0x8
/* 27410 80036C10 2118C000 */  addu       $v1, $a2, $zero
/* 27414 80036C14 35006228 */  slti       $v0, $v1, 0x35
/* 27418 80036C18 EDFF4014 */  bnez       $v0, .L80036BD0
/* 2741C 80036C1C 01006624 */   addiu     $a2, $v1, 0x1
/* 27420 80036C20 0800E003 */  jr         $ra
/* 27424 80036C24 00000000 */   nop
.size ResetDynamicPoolList, . - ResetDynamicPoolList
