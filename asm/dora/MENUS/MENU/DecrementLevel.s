.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DecrementLevel
/* 186E8 80027EE8 8807838F */  lw         $v1, %gp_rel(gmenulevel)($gp)
/* 186EC 80027EEC 00000000 */  nop
/* 186F0 80027EF0 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 186F4 80027EF4 0A006104 */  bgez       $v1, .L80027F20
/* 186F8 80027EF8 0880043C */   lui       $a0, %hi(WorldList)
/* 186FC 80027EFC 8407838F */  lw         $v1, %gp_rel(gmenuworld)($gp)
/* 18700 80027F00 6C648424 */  addiu      $a0, $a0, %lo(WorldList)
/* 18704 80027F04 80100300 */  sll        $v0, $v1, 2
/* 18708 80027F08 21104300 */  addu       $v0, $v0, $v1
/* 1870C 80027F0C 80100200 */  sll        $v0, $v0, 2
/* 18710 80027F10 21208200 */  addu       $a0, $a0, $v0
/* 18714 80027F14 0400838C */  lw         $v1, 0x4($a0)
/* 18718 80027F18 00000000 */  nop
/* 1871C 80027F1C FFFF6324 */  addiu      $v1, $v1, -0x1
.L80027F20:
/* 18720 80027F20 880783AF */  sw         $v1, %gp_rel(gmenulevel)($gp)
/* 18724 80027F24 0800E003 */  jr         $ra
/* 18728 80027F28 00000000 */   nop
.size DecrementLevel, . - DecrementLevel
