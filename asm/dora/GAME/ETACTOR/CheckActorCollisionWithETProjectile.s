.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckActorCollisionWithETProjectile
/* B6B8 8001AEB8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B6BC 8001AEBC 1800B2AF */  sw         $s2, 0x18($sp)
/* B6C0 8001AEC0 21908000 */  addu       $s2, $a0, $zero
/* B6C4 8001AEC4 1C00BFAF */  sw         $ra, 0x1C($sp)
/* B6C8 8001AEC8 1400B1AF */  sw         $s1, 0x14($sp)
/* B6CC 8001AECC 1000B0AF */  sw         $s0, 0x10($sp)
/* B6D0 8001AED0 0C00428E */  lw         $v0, 0xC($s2)
/* B6D4 8001AED4 00000000 */  nop
/* B6D8 8001AED8 F0FF4224 */  addiu      $v0, $v0, -0x10
/* B6DC 8001AEDC 0200422C */  sltiu      $v0, $v0, 0x2
/* B6E0 8001AEE0 1E004014 */  bnez       $v0, .L8001AF5C
/* B6E4 8001AEE4 21100000 */   addu      $v0, $zero, $zero
/* B6E8 8001AEE8 0980033C */  lui        $v1, %hi(gGameState)
/* B6EC 8001AEEC 8456638C */  lw         $v1, %lo(gGameState)($v1)
/* B6F0 8001AEF0 0A000224 */  addiu      $v0, $zero, 0xA
/* B6F4 8001AEF4 03006210 */  beq        $v1, $v0, .L8001AF04
/* B6F8 8001AEF8 08000224 */   addiu     $v0, $zero, 0x8
/* B6FC 8001AEFC 03006214 */  bne        $v1, $v0, .L8001AF0C
/* B700 8001AF00 21204002 */   addu      $a0, $s2, $zero
.L8001AF04:
/* B704 8001AF04 D76B0008 */  j          .L8001AF5C
/* B708 8001AF08 21100000 */   addu      $v0, $zero, $zero
.L8001AF0C:
/* B70C 8001AF0C 0980023C */  lui        $v0, %hi(ETActor)
/* B710 8001AF10 B05A5024 */  addiu      $s0, $v0, %lo(ETActor)
/* B714 8001AF14 9FFC000C */  jal        CollisionCheckBody
/* B718 8001AF18 21280002 */   addu      $a1, $s0, $zero
/* B71C 8001AF1C 21884000 */  addu       $s1, $v0, $zero
/* B720 8001AF20 0D002012 */  beqz       $s1, .L8001AF58
/* B724 8001AF24 21280002 */   addu      $a1, $s0, $zero
/* B728 8001AF28 0880063C */  lui        $a2, %hi(MeshIDTable)
/* B72C 8001AF2C 1C00438E */  lw         $v1, 0x1C($s2)
/* B730 8001AF30 6054C624 */  addiu      $a2, $a2, %lo(MeshIDTable)
/* B734 8001AF34 40100300 */  sll        $v0, $v1, 1
/* B738 8001AF38 21104300 */  addu       $v0, $v0, $v1
/* B73C 8001AF3C 80100200 */  sll        $v0, $v0, 2
/* B740 8001AF40 23104300 */  subu       $v0, $v0, $v1
/* B744 8001AF44 80100200 */  sll        $v0, $v0, 2
/* B748 8001AF48 2130C200 */  addu       $a2, $a2, $v0
/* B74C 8001AF4C 1800C48C */  lw         $a0, 0x18($a2)
/* B750 8001AF50 A058000C */  jal        EtLoseHealth
/* B754 8001AF54 21304002 */   addu      $a2, $s2, $zero
.L8001AF58:
/* B758 8001AF58 21102002 */  addu       $v0, $s1, $zero
.L8001AF5C:
/* B75C 8001AF5C 1C00BF8F */  lw         $ra, 0x1C($sp)
/* B760 8001AF60 1800B28F */  lw         $s2, 0x18($sp)
/* B764 8001AF64 1400B18F */  lw         $s1, 0x14($sp)
/* B768 8001AF68 1000B08F */  lw         $s0, 0x10($sp)
/* B76C 8001AF6C 0800E003 */  jr         $ra
/* B770 8001AF70 2000BD27 */   addiu     $sp, $sp, 0x20
.size CheckActorCollisionWithETProjectile, . - CheckActorCollisionWithETProjectile
