.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AllocIntroMovieRAM
/* 4026C 8004FA6C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 40270 8004FA70 1000BFAF */  sw         $ra, 0x10($sp)
/* 40274 8004FA74 2C0F80AF */  sw         $zero, %gp_rel(Ring_Buff)($gp)
/* 40278 8004FA78 CFFD010C */  jal        DecDCTReset
/* 4027C 8004FA7C 21200000 */   addu      $a0, $zero, $zero
/* 40280 8004FA80 0700043C */  lui        $a0, (0x71000 >> 16)
/* 40284 8004FA84 2B3F010C */  jal        new_malloc
/* 40288 8004FA88 00108434 */   ori       $a0, $a0, (0x71000 & 0xFFFF)
/* 4028C 8004FA8C 02004010 */  beqz       $v0, .L8004FA98
/* 40290 8004FA90 00000000 */   nop
/* 40294 8004FA94 2C0F82AF */  sw         $v0, %gp_rel(Ring_Buff)($gp)
.L8004FA98:
/* 40298 8004FA98 1000BF8F */  lw         $ra, 0x10($sp)
/* 4029C 8004FA9C 00000000 */  nop
/* 402A0 8004FAA0 0800E003 */  jr         $ra
/* 402A4 8004FAA4 1800BD27 */   addiu     $sp, $sp, 0x18
.size AllocIntroMovieRAM, . - AllocIntroMovieRAM
