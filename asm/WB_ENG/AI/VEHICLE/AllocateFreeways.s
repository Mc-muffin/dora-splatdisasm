.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AllocateFreeways
/* 386BC 80047EBC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 386C0 80047EC0 1000B0AF */  sw         $s0, 0x10($sp)
/* 386C4 80047EC4 21808000 */  addu       $s0, $a0, $zero
/* 386C8 80047EC8 08000012 */  beqz       $s0, .L80047EEC
/* 386CC 80047ECC 1400BFAF */   sw        $ra, 0x14($sp)
/* 386D0 80047ED0 40201000 */  sll        $a0, $s0, 1
/* 386D4 80047ED4 21209000 */  addu       $a0, $a0, $s0
/* 386D8 80047ED8 80200400 */  sll        $a0, $a0, 2
/* 386DC 80047EDC 23209000 */  subu       $a0, $a0, $s0
/* 386E0 80047EE0 2B3F010C */  jal        new_malloc
/* 386E4 80047EE4 80200400 */   sll       $a0, $a0, 2
/* 386E8 80047EE8 101582AF */  sw         $v0, %gp_rel(freeways)($gp)
.L80047EEC:
/* 386EC 80047EEC 1400BF8F */  lw         $ra, 0x14($sp)
/* 386F0 80047EF0 141590AF */  sw         $s0, %gp_rel(g_totalnumfreeways)($gp)
/* 386F4 80047EF4 1000B08F */  lw         $s0, 0x10($sp)
/* 386F8 80047EF8 0800E003 */  jr         $ra
/* 386FC 80047EFC 1800BD27 */   addiu     $sp, $sp, 0x18
.size AllocateFreeways, . - AllocateFreeways
