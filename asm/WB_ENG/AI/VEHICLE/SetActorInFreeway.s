.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetActorInFreeway
/* 387F8 80047FF8 1415828F */  lw         $v0, %gp_rel(g_totalnumfreeways)($gp)
/* 387FC 80047FFC 00000000 */  nop
/* 38800 80048000 0D004018 */  blez       $v0, .L80048038
/* 38804 80048004 21300000 */   addu      $a2, $zero, $zero
/* 38808 80048008 21384000 */  addu       $a3, $v0, $zero
/* 3880C 8004800C 1015838F */  lw         $v1, %gp_rel(freeways)($gp)
.L80048010:
/* 38810 80048010 00000000 */  nop
/* 38814 80048014 0400628C */  lw         $v0, 0x4($v1)
/* 38818 80048018 00000000 */  nop
/* 3881C 8004801C 03004514 */  bne        $v0, $a1, .L8004802C
/* 38820 80048020 0100C624 */   addiu     $a2, $a2, 0x1
/* 38824 80048024 0F200108 */  j          .L8004803C
/* 38828 80048028 21286000 */   addu      $a1, $v1, $zero
.L8004802C:
/* 3882C 8004802C 2A10C700 */  slt        $v0, $a2, $a3
/* 38830 80048030 F7FF4014 */  bnez       $v0, .L80048010
/* 38834 80048034 2C006324 */   addiu     $v1, $v1, 0x2C
.L80048038:
/* 38838 80048038 21280000 */  addu       $a1, $zero, $zero
.L8004803C:
/* 3883C 8004803C 280085AC */  sw         $a1, 0x28($a0)
/* 38840 80048040 2400A38C */  lw         $v1, 0x24($a1)
/* 38844 80048044 00000000 */  nop
/* 38848 80048048 2C0083AC */  sw         $v1, 0x2C($a0)
/* 3884C 8004804C 2400A28C */  lw         $v0, 0x24($a1)
/* 38850 80048050 00000000 */  nop
/* 38854 80048054 01004224 */  addiu      $v0, $v0, 0x1
/* 38858 80048058 0800E003 */  jr         $ra
/* 3885C 8004805C 2400A2AC */   sw        $v0, 0x24($a1)
.size SetActorInFreeway, . - SetActorInFreeway
