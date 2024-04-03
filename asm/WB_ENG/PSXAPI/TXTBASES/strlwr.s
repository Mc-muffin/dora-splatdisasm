.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel strlwr
/* 498E4 800590E4 00008390 */  lbu        $v1, 0x0($a0)
/* 498E8 800590E8 00000000 */  nop
/* 498EC 800590EC 0A006010 */  beqz       $v1, .L80059118
/* 498F0 800590F0 BFFF6224 */   addiu     $v0, $v1, -0x41
.L800590F4:
/* 498F4 800590F4 1A00422C */  sltiu      $v0, $v0, 0x1A
/* 498F8 800590F8 02004010 */  beqz       $v0, .L80059104
/* 498FC 800590FC 20006224 */   addiu     $v0, $v1, 0x20
/* 49900 80059100 000082A0 */  sb         $v0, 0x0($a0)
.L80059104:
/* 49904 80059104 01008424 */  addiu      $a0, $a0, 0x1
/* 49908 80059108 00008390 */  lbu        $v1, 0x0($a0)
/* 4990C 8005910C 00000000 */  nop
/* 49910 80059110 F8FF6014 */  bnez       $v1, .L800590F4
/* 49914 80059114 BFFF6224 */   addiu     $v0, $v1, -0x41
.L80059118:
/* 49918 80059118 0800E003 */  jr         $ra
/* 4991C 8005911C 00000000 */   nop
.size strlwr, . - strlwr
