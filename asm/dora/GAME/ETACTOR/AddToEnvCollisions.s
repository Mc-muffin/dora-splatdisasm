.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AddToEnvCollisions
/* B2F0 8001AAF0 F012828F */  lw         $v0, %gp_rel(NumEnvRadiusCollisions)($gp)
/* B2F4 8001AAF4 F412888F */  lw         $t0, %gp_rel(EnvRadiusCollisionsPtr)($gp)
/* B2F8 8001AAF8 00190200 */  sll        $v1, $v0, 4
/* B2FC 8001AAFC 21186800 */  addu       $v1, $v1, $t0
/* B300 8001AB00 01004224 */  addiu      $v0, $v0, 0x1
/* B304 8001AB04 000064AC */  sw         $a0, 0x0($v1)
/* B308 8001AB08 040065AC */  sw         $a1, 0x4($v1)
/* B30C 8001AB0C 080066AC */  sw         $a2, 0x8($v1)
/* B310 8001AB10 0C0067AC */  sw         $a3, 0xC($v1)
/* B314 8001AB14 F01282AF */  sw         $v0, %gp_rel(NumEnvRadiusCollisions)($gp)
/* B318 8001AB18 0800E003 */  jr         $ra
/* B31C 8001AB1C 00000000 */   nop
.size AddToEnvCollisions, . - AddToEnvCollisions
