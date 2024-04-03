.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ScreenWait
/* C34C 8001BB4C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* C350 8001BB50 1000B0AF */  sw         $s0, 0x10($sp)
/* C354 8001BB54 21808000 */  addu       $s0, $a0, $zero
/* C358 8001BB58 FFFF0424 */  addiu      $a0, $zero, -0x1
/* C35C 8001BB5C 1800BFAF */  sw         $ra, 0x18($sp)
/* C360 8001BB60 EBD6010C */  jal        VSync
/* C364 8001BB64 1400B1AF */   sw        $s1, 0x14($sp)
/* C368 8001BB68 11000012 */  beqz       $s0, .L8001BBB0
/* C36C 8001BB6C 21884000 */   addu      $s1, $v0, $zero
.L8001BB70:
/* C370 8001BB70 EBD6010C */  jal        VSync
/* C374 8001BB74 FFFF0424 */   addiu     $a0, $zero, -0x1
/* C378 8001BB78 23105100 */  subu       $v0, $v0, $s1
/* C37C 8001BB7C 2C014228 */  slti       $v0, $v0, 0x12C
/* C380 8001BB80 0D004010 */  beqz       $v0, .L8001BBB8
/* C384 8001BB84 00000000 */   nop
/* C388 8001BB88 8F64010C */  jal        readControllers
/* C38C 8001BB8C 00000000 */   nop
/* C390 8001BB90 0980033C */  lui        $v1, %hi(Trg0)
/* C394 8001BB94 30596394 */  lhu        $v1, %lo(Trg0)($v1)
/* C398 8001BB98 00000000 */  nop
/* C39C 8001BB9C 08406330 */  andi       $v1, $v1, 0x4008
/* C3A0 8001BBA0 F3FF6010 */  beqz       $v1, .L8001BB70
/* C3A4 8001BBA4 00000000 */   nop
/* C3A8 8001BBA8 EE6E0008 */  j          .L8001BBB8
/* C3AC 8001BBAC 00000000 */   nop
.L8001BBB0:
/* C3B0 8001BBB0 EBD6010C */  jal        VSync
/* C3B4 8001BBB4 2C010424 */   addiu     $a0, $zero, 0x12C
.L8001BBB8:
/* C3B8 8001BBB8 1800BF8F */  lw         $ra, 0x18($sp)
/* C3BC 8001BBBC 1400B18F */  lw         $s1, 0x14($sp)
/* C3C0 8001BBC0 1000B08F */  lw         $s0, 0x10($sp)
/* C3C4 8001BBC4 0800E003 */  jr         $ra
/* C3C8 8001BBC8 2000BD27 */   addiu     $sp, $sp, 0x20
.size ScreenWait, . - ScreenWait
