.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SpringBoardProximityCheck
/* 2F4E4 8003ECE4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2F4E8 8003ECE8 1000BFAF */  sw         $ra, 0x10($sp)
/* 2F4EC 8003ECEC 02008104 */  bgez       $a0, .L8003ECF8
/* 2F4F0 8003ECF0 21108000 */   addu      $v0, $a0, $zero
/* 2F4F4 8003ECF4 7F008224 */  addiu      $v0, $a0, 0x7F
.L8003ECF8:
/* 2F4F8 8003ECF8 2128C000 */  addu       $a1, $a2, $zero
/* 2F4FC 8003ECFC C3110200 */  sra        $v0, $v0, 7
/* 2F500 8003ED00 C0110200 */  sll        $v0, $v0, 7
/* 2F504 8003ED04 0200C104 */  bgez       $a2, .L8003ED10
/* 2F508 8003ED08 40004224 */   addiu     $v0, $v0, 0x40
/* 2F50C 8003ED0C 7F00C524 */  addiu      $a1, $a2, 0x7F
.L8003ED10:
/* 2F510 8003ED10 C3290500 */  sra        $a1, $a1, 7
/* 2F514 8003ED14 C0290500 */  sll        $a1, $a1, 7
/* 2F518 8003ED18 4000A524 */  addiu      $a1, $a1, 0x40
/* 2F51C 8003ED1C 23208200 */  subu       $a0, $a0, $v0
/* 2F520 8003ED20 FEE9000C */  jal        DistApprox_2d
/* 2F524 8003ED24 2328C500 */   subu      $a1, $a2, $a1
/* 2F528 8003ED28 1000BF8F */  lw         $ra, 0x10($sp)
/* 2F52C 8003ED2C 80004228 */  slti       $v0, $v0, 0x80
/* 2F530 8003ED30 0800E003 */  jr         $ra
/* 2F534 8003ED34 1800BD27 */   addiu     $sp, $sp, 0x18
.size SpringBoardProximityCheck, . - SpringBoardProximityCheck
