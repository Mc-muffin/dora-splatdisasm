.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel JumpPadZeroFriction
/* 3DFAC 8004D7AC 0800E003 */  jr         $ra
/* 3DFB0 8004D7B0 00000000 */   nop
.size JumpPadZeroFriction, . - JumpPadZeroFriction
