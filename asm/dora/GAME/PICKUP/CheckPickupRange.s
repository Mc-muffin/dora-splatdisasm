.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckPickupRange
/* D424 8001CC24 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* D428 8001CC28 2320C400 */  subu       $a0, $a2, $a0
/* D42C 8001CC2C 1000B0AF */  sw         $s0, 0x10($sp)
/* D430 8001CC30 2800B08F */  lw         $s0, 0x28($sp)
/* D434 8001CC34 1400BFAF */  sw         $ra, 0x14($sp)
/* D438 8001CC38 FEE9000C */  jal        DistApprox_2d
/* D43C 8001CC3C 2328E500 */   subu      $a1, $a3, $a1
/* D440 8001CC40 1400BF8F */  lw         $ra, 0x14($sp)
/* D444 8001CC44 2A105000 */  slt        $v0, $v0, $s0
/* D448 8001CC48 1000B08F */  lw         $s0, 0x10($sp)
/* D44C 8001CC4C 0800E003 */  jr         $ra
/* D450 8001CC50 1800BD27 */   addiu     $sp, $sp, 0x18
.size CheckPickupRange, . - CheckPickupRange
