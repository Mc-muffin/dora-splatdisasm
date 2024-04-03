.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitialiseMachine
/* C2D0 8001BAD0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* C2D4 8001BAD4 1000BFAF */  sw         $ra, 0x10($sp)
/* C2D8 8001BAD8 266E010C */  jal        initVideoSystem
/* C2DC 8001BADC 00000000 */   nop
/* C2E0 8001BAE0 0E4F010C */  jal        pxm_init
/* C2E4 8001BAE4 03000424 */   addiu     $a0, $zero, 0x3
/* C2E8 8001BAE8 1000BF8F */  lw         $ra, 0x10($sp)
/* C2EC 8001BAEC 00000000 */  nop
/* C2F0 8001BAF0 0800E003 */  jr         $ra
/* C2F4 8001BAF4 1800BD27 */   addiu     $sp, $sp, 0x18
.size InitialiseMachine, . - InitialiseMachine
