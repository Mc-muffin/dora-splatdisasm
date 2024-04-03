.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AllocIntroMovieRAMInGame
/* 402A8 8004FAA8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 402AC 8004FAAC 1000BFAF */  sw         $ra, 0x10($sp)
/* 402B0 8004FAB0 2C0F80AF */  sw         $zero, %gp_rel(Ring_Buff)($gp)
/* 402B4 8004FAB4 B13A010C */  jal        PolyPoolAddr
/* 402B8 8004FAB8 00000000 */   nop
/* 402BC 8004FABC 02004010 */  beqz       $v0, .L8004FAC8
/* 402C0 8004FAC0 00000000 */   nop
/* 402C4 8004FAC4 2C0F82AF */  sw         $v0, %gp_rel(Ring_Buff)($gp)
.L8004FAC8:
/* 402C8 8004FAC8 1000BF8F */  lw         $ra, 0x10($sp)
/* 402CC 8004FACC 00000000 */  nop
/* 402D0 8004FAD0 0800E003 */  jr         $ra
/* 402D4 8004FAD4 1800BD27 */   addiu     $sp, $sp, 0x18
.size AllocIntroMovieRAMInGame, . - AllocIntroMovieRAMInGame
