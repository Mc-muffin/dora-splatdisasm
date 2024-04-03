.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel StopSound
/* 3FD38 8004F538 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3FD3C 8004F53C FF00053C */  lui        $a1, (0xFFFFFF >> 16)
/* 3FD40 8004F540 FFFFA534 */  ori        $a1, $a1, (0xFFFFFF & 0xFFFF)
/* 3FD44 8004F544 1000BFAF */  sw         $ra, 0x10($sp)
/* 3FD48 8004F548 0F05020C */  jal        SpuSetKey
/* 3FD4C 8004F54C 21200000 */   addu      $a0, $zero, $zero
/* 3FD50 8004F550 AF02020C */  jal        SpuQuit
/* 3FD54 8004F554 00000000 */   nop
/* 3FD58 8004F558 1000BF8F */  lw         $ra, 0x10($sp)
/* 3FD5C 8004F55C 00000000 */  nop
/* 3FD60 8004F560 0800E003 */  jr         $ra
/* 3FD64 8004F564 1800BD27 */   addiu     $sp, $sp, 0x18
.size StopSound, . - StopSound
