.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DistApprox_3d
/* 2B07C 8003A87C 0200C104 */  bgez       $a2, .L8003A888
/* 2B080 8003A880 00000000 */   nop
/* 2B084 8003A884 23300600 */  negu       $a2, $a2
.L8003A888:
/* 2B088 8003A888 02008104 */  bgez       $a0, .L8003A894
/* 2B08C 8003A88C 00000000 */   nop
/* 2B090 8003A890 23200400 */  negu       $a0, $a0
.L8003A894:
/* 2B094 8003A894 0200A104 */  bgez       $a1, .L8003A8A0
/* 2B098 8003A898 00000000 */   nop
/* 2B09C 8003A89C 23280500 */  negu       $a1, $a1
.L8003A8A0:
/* 2B0A0 8003A8A0 2A10C400 */  slt        $v0, $a2, $a0
/* 2B0A4 8003A8A4 02004010 */  beqz       $v0, .L8003A8B0
/* 2B0A8 8003A8A8 2118C000 */   addu      $v1, $a2, $zero
/* 2B0AC 8003A8AC 21308000 */  addu       $a2, $a0, $zero
.L8003A8B0:
/* 2B0B0 8003A8B0 2A108300 */  slt        $v0, $a0, $v1
/* 2B0B4 8003A8B4 02004010 */  beqz       $v0, .L8003A8C0
/* 2B0B8 8003A8B8 00000000 */   nop
/* 2B0BC 8003A8BC 21188000 */  addu       $v1, $a0, $zero
.L8003A8C0:
/* 2B0C0 8003A8C0 2120A000 */  addu       $a0, $a1, $zero
/* 2B0C4 8003A8C4 40100300 */  sll        $v0, $v1, 1
/* 2B0C8 8003A8C8 21104300 */  addu       $v0, $v0, $v1
/* 2B0CC 8003A8CC C3100200 */  sra        $v0, $v0, 3
/* 2B0D0 8003A8D0 2130C200 */  addu       $a2, $a2, $v0
/* 2B0D4 8003A8D4 2A188600 */  slt        $v1, $a0, $a2
/* 2B0D8 8003A8D8 02006010 */  beqz       $v1, .L8003A8E4
/* 2B0DC 8003A8DC 2A10C500 */   slt       $v0, $a2, $a1
/* 2B0E0 8003A8E0 2120C000 */  addu       $a0, $a2, $zero
.L8003A8E4:
/* 2B0E4 8003A8E4 02004010 */  beqz       $v0, .L8003A8F0
/* 2B0E8 8003A8E8 00000000 */   nop
/* 2B0EC 8003A8EC 2128C000 */  addu       $a1, $a2, $zero
.L8003A8F0:
/* 2B0F0 8003A8F0 40100500 */  sll        $v0, $a1, 1
/* 2B0F4 8003A8F4 21104500 */  addu       $v0, $v0, $a1
/* 2B0F8 8003A8F8 C3100200 */  sra        $v0, $v0, 3
/* 2B0FC 8003A8FC 0800E003 */  jr         $ra
/* 2B100 8003A900 21108200 */   addu      $v0, $a0, $v0
.size DistApprox_3d, . - DistApprox_3d
