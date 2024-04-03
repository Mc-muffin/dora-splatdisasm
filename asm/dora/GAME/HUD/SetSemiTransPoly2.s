.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetSemiTransPoly2
/* EB18 8001E318 0300A530 */  andi       $a1, $a1, 0x3
/* EB1C 8001E31C 16008294 */  lhu        $v0, 0x16($a0)
/* EB20 8001E320 40290500 */  sll        $a1, $a1, 5
/* EB24 8001E324 9FFF4230 */  andi       $v0, $v0, 0xFF9F
/* EB28 8001E328 25104500 */  or         $v0, $v0, $a1
/* EB2C 8001E32C 0800E003 */  jr         $ra
/* EB30 8001E330 160082A4 */   sh        $v0, 0x16($a0)
.size SetSemiTransPoly2, . - SetSemiTransPoly2
