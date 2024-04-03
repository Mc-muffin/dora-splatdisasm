.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel FillinCelAnimLink
/* 30C10 80040410 C814828F */  lw         $v0, %gp_rel(CellAnimLinks)($gp)
/* 30C14 80040414 00310600 */  sll        $a2, $a2, 4
/* 30C18 80040418 0200A014 */  bnez       $a1, .L80040424
/* 30C1C 8004041C 21184600 */   addu      $v1, $v0, $a2
/* 30C20 80040420 BC1480AF */  sw         $zero, %gp_rel(gprevious_cal.9)($gp)
.L80040424:
/* 30C24 80040424 BC14828F */  lw         $v0, %gp_rel(gprevious_cal.9)($gp)
/* 30C28 80040428 000064AC */  sw         $a0, 0x0($v1)
/* 30C2C 8004042C 080067AC */  sw         $a3, 0x8($v1)
/* 30C30 80040430 0C0062AC */  sw         $v0, 0xC($v1)
/* 30C34 80040434 BC1483AF */  sw         $v1, %gp_rel(gprevious_cal.9)($gp)
/* 30C38 80040438 0800E003 */  jr         $ra
/* 30C3C 8004043C 00000000 */   nop
.size FillinCelAnimLink, . - FillinCelAnimLink
