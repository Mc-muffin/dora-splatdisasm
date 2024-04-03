.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PickupBrains
/* CDE8 8001C5E8 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* CDEC 8001C5EC 2400B3AF */  sw         $s3, 0x24($sp)
/* CDF0 8001C5F0 21980000 */  addu       $s3, $zero, $zero
/* CDF4 8001C5F4 1800B0AF */  sw         $s0, 0x18($sp)
/* CDF8 8001C5F8 21808000 */  addu       $s0, $a0, $zero
/* CDFC 8001C5FC 2800BFAF */  sw         $ra, 0x28($sp)
/* CE00 8001C600 2000B2AF */  sw         $s2, 0x20($sp)
/* CE04 8001C604 1C00B1AF */  sw         $s1, 0x1C($sp)
/* CE08 8001C608 1000028E */  lw         $v0, 0x10($s0)
/* CE0C 8001C60C 00000000 */  nop
/* CE10 8001C610 00014230 */  andi       $v0, $v0, 0x100
/* CE14 8001C614 84004010 */  beqz       $v0, .L8001C828
/* CE18 8001C618 6C001126 */   addiu     $s1, $s0, 0x6C
/* CE1C 8001C61C 65E2000C */  jal        AnimateActor
/* CE20 8001C620 00000000 */   nop
/* CE24 8001C624 0C00038E */  lw         $v1, 0xC($s0)
/* CE28 8001C628 01000224 */  addiu      $v0, $zero, 0x1
/* CE2C 8001C62C 47006214 */  bne        $v1, $v0, .L8001C74C
/* CE30 8001C630 0980023C */   lui       $v0, %hi(ETActor + 0x140)
/* CE34 8001C634 21200002 */  addu       $a0, $s0, $zero
/* CE38 8001C638 21282002 */  addu       $a1, $s1, $zero
/* CE3C 8001C63C 6000028E */  lw         $v0, 0x60($s0)
/* CE40 8001C640 5802838F */  lw         $v1, %gp_rel(TESTSPEEDY)($gp)
/* CE44 8001C644 FFFF4224 */  addiu      $v0, $v0, -0x1
/* CE48 8001C648 600002AE */  sw         $v0, 0x60($s0)
/* CE4C 8001C64C 340023AE */  sw         $v1, 0x34($s1)
/* CE50 8001C650 A000028E */  lw         $v0, 0xA0($s0)
/* CE54 8001C654 0800238E */  lw         $v1, 0x8($s1)
/* CE58 8001C658 03120200 */  sra        $v0, $v0, 8
/* CE5C 8001C65C 23186200 */  subu       $v1, $v1, $v0
/* CE60 8001C660 9B87010C */  jal        UpdateMotionPhysicsToActor
/* CE64 8001C664 080023AE */   sw        $v1, 0x8($s1)
/* CE68 8001C668 5C02838F */  lw         $v1, %gp_rel(TESTSPIN)($gp)
/* CE6C 8001C66C 5400028E */  lw         $v0, 0x54($s0)
/* CE70 8001C670 6000048E */  lw         $a0, 0x60($s0)
/* CE74 8001C674 21104300 */  addu       $v0, $v0, $v1
/* CE78 8001C678 580003AE */  sw         $v1, 0x58($s0)
/* CE7C 8001C67C 06008004 */  bltz       $a0, .L8001C698
/* CE80 8001C680 540002AE */   sw        $v0, 0x54($s0)
/* CE84 8001C684 0800228E */  lw         $v0, 0x8($s1)
/* CE88 8001C688 00000000 */  nop
/* CE8C 8001C68C 00FF4228 */  slti       $v0, $v0, -0x100
/* CE90 8001C690 63004010 */  beqz       $v0, .L8001C820
/* CE94 8001C694 2C010526 */   addiu     $a1, $s0, 0x12C
.L8001C698:
/* CE98 8001C698 1C00038E */  lw         $v1, 0x1C($s0)
/* CE9C 8001C69C 07000224 */  addiu      $v0, $zero, 0x7
/* CEA0 8001C6A0 1F006214 */  bne        $v1, $v0, .L8001C720
/* CEA4 8001C6A4 FBFF0424 */   addiu     $a0, $zero, -0x5
/* CEA8 8001C6A8 4400028E */  lw         $v0, 0x44($s0)
/* CEAC 8001C6AC 3413918F */  lw         $s1, %gp_rel(gLevelMaxPool)($gp)
/* CEB0 8001C6B0 1400528C */  lw         $s2, 0x14($v0)
/* CEB4 8001C6B4 A972000C */  jal        RestartPickup
/* CEB8 8001C6B8 21200002 */   addu      $a0, $s0, $zero
/* CEBC 8001C6BC 1400201A */  blez       $s1, .L8001C710
/* CEC0 8001C6C0 2C010526 */   addiu     $a1, $s0, 0x12C
/* CEC4 8001C6C4 FFFE0724 */  addiu      $a3, $zero, -0x101
/* CEC8 8001C6C8 3C02868F */  lw         $a2, %gp_rel(NumActivePickupPool)($gp)
/* CECC 8001C6CC 0980023C */  lui        $v0, %hi(PickupPool)
/* CED0 8001C6D0 505D4224 */  addiu      $v0, $v0, %lo(PickupPool)
/* CED4 8001C6D4 0C004424 */  addiu      $a0, $v0, 0xC
/* CED8 8001C6D8 21182002 */  addu       $v1, $s1, $zero
.L8001C6DC:
/* CEDC 8001C6DC 0400828C */  lw         $v0, 0x4($a0)
/* CEE0 8001C6E0 00000000 */  nop
/* CEE4 8001C6E4 06005014 */  bne        $v0, $s0, .L8001C700
/* CEE8 8001C6E8 00000000 */   nop
/* CEEC 8001C6EC 000080AC */  sw         $zero, 0x0($a0)
/* CEF0 8001C6F0 1000028E */  lw         $v0, 0x10($s0)
/* CEF4 8001C6F4 FFFFC624 */  addiu      $a2, $a2, -0x1
/* CEF8 8001C6F8 24104700 */  and        $v0, $v0, $a3
/* CEFC 8001C6FC 100002AE */  sw         $v0, 0x10($s0)
.L8001C700:
/* CF00 8001C700 FFFF6324 */  addiu      $v1, $v1, -0x1
/* CF04 8001C704 F5FF6014 */  bnez       $v1, .L8001C6DC
/* CF08 8001C708 14008424 */   addiu     $a0, $a0, 0x14
/* CF0C 8001C70C 3C0286AF */  sw         $a2, %gp_rel(NumActivePickupPool)($gp)
.L8001C710:
/* CF10 8001C710 02000224 */  addiu      $v0, $zero, 0x2
/* CF14 8001C714 0C0042AE */  sw         $v0, 0xC($s2)
/* CF18 8001C718 08720008 */  j          .L8001C820
/* CF1C 8001C71C 0C0000AE */   sw        $zero, 0xC($s0)
.L8001C720:
/* CF20 8001C720 4400028E */  lw         $v0, 0x44($s0)
/* CF24 8001C724 00000000 */  nop
/* CF28 8001C728 1C00438C */  lw         $v1, 0x1C($v0)
/* CF2C 8001C72C 00000000 */  nop
/* CF30 8001C730 24186400 */  and        $v1, $v1, $a0
/* CF34 8001C734 1C0043AC */  sw         $v1, 0x1C($v0)
/* CF38 8001C738 4400058E */  lw         $a1, 0x44($s0)
/* CF3C 8001C73C 640C010C */  jal        SpawnResetScroll
/* CF40 8001C740 21200002 */   addu      $a0, $s0, $zero
/* CF44 8001C744 08720008 */  j          .L8001C820
/* CF48 8001C748 2C010526 */   addiu     $a1, $s0, 0x12C
.L8001C74C:
/* CF4C 8001C74C 34000424 */  addiu      $a0, $zero, 0x34
/* CF50 8001C750 1C00038E */  lw         $v1, 0x1C($s0)
/* CF54 8001C754 F05B528C */  lw         $s2, %lo(ETActor + 0x140)($v0)
/* CF58 8001C758 05006414 */  bne        $v1, $a0, .L8001C770
/* CF5C 8001C75C 00000000 */   nop
/* CF60 8001C760 7C24010C */  jal        GenericAIMove
/* CF64 8001C764 21200002 */   addu      $a0, $s0, $zero
/* CF68 8001C768 0A720008 */  j          .L8001C828
/* CF6C 8001C76C 00000000 */   nop
.L8001C770:
/* CF70 8001C770 0980023C */  lui        $v0, %hi(TKSelectedActor)
/* CF74 8001C774 244F428C */  lw         $v0, %lo(TKSelectedActor)($v0)
/* CF78 8001C778 00000000 */  nop
/* CF7C 8001C77C 05000212 */  beq        $s0, $v0, .L8001C794
/* CF80 8001C780 05000224 */   addiu     $v0, $zero, 0x5
/* CF84 8001C784 EB67000C */  jal        CheckActorCollisionWithET
/* CF88 8001C788 21200002 */   addu      $a0, $s0, $zero
/* CF8C 8001C78C 21984000 */  addu       $s3, $v0, $zero
/* CF90 8001C790 05000224 */  addiu      $v0, $zero, 0x5
.L8001C794:
/* CF94 8001C794 08004212 */  beq        $s2, $v0, .L8001C7B8
/* CF98 8001C798 03000224 */   addiu     $v0, $zero, 0x3
/* CF9C 8001C79C 06004212 */  beq        $s2, $v0, .L8001C7B8
/* CFA0 8001C7A0 08000224 */   addiu     $v0, $zero, 0x8
/* CFA4 8001C7A4 0980033C */  lui        $v1, %hi(gGameState)
/* CFA8 8001C7A8 8456638C */  lw         $v1, %lo(gGameState)($v1)
/* CFAC 8001C7AC 00000000 */  nop
/* CFB0 8001C7B0 03006214 */  bne        $v1, $v0, .L8001C7C0
/* CFB4 8001C7B4 01000224 */   addiu     $v0, $zero, 0x1
.L8001C7B8:
/* CFB8 8001C7B8 21980000 */  addu       $s3, $zero, $zero
/* CFBC 8001C7BC 01000224 */  addiu      $v0, $zero, 0x1
.L8001C7C0:
/* CFC0 8001C7C0 03006216 */  bne        $s3, $v0, .L8001C7D0
/* CFC4 8001C7C4 00000000 */   nop
/* CFC8 8001C7C8 E570000C */  jal        GetPickup
/* CFCC 8001C7CC 21200002 */   addu      $a0, $s0, $zero
.L8001C7D0:
/* CFD0 8001C7D0 31FB000C */  jal        CheckActorGravity
/* CFD4 8001C7D4 21200002 */   addu      $a0, $s0, $zero
/* CFD8 8001C7D8 05004238 */  xori       $v0, $v0, 0x5
/* CFDC 8001C7DC 0A004014 */  bnez       $v0, .L8001C808
/* CFE0 8001C7E0 0B000524 */   addiu     $a1, $zero, 0xB
/* CFE4 8001C7E4 21200002 */  addu       $a0, $s0, $zero
/* CFE8 8001C7E8 0C00228E */  lw         $v0, 0xC($s1)
/* CFEC 8001C7EC 0400268E */  lw         $a2, 0x4($s1)
/* CFF0 8001C7F0 0800278E */  lw         $a3, 0x8($s1)
/* CFF4 8001C7F4 69BE000C */  jal        RequestParticle
/* CFF8 8001C7F8 1000A2AF */   sw        $v0, 0x10($sp)
/* CFFC 8001C7FC 4400058E */  lw         $a1, 0x44($s0)
/* D000 8001C800 640C010C */  jal        SpawnResetScroll
/* D004 8001C804 21200002 */   addu      $a0, $s0, $zero
.L8001C808:
/* D008 8001C808 A7F7000C */  jal        UpdateMotionPhysics
/* D00C 8001C80C 21202002 */   addu      $a0, $s1, $zero
/* D010 8001C810 21200002 */  addu       $a0, $s0, $zero
/* D014 8001C814 9B87010C */  jal        UpdateMotionPhysicsToActor
/* D018 8001C818 21282002 */   addu      $a1, $s1, $zero
/* D01C 8001C81C 2C010526 */  addiu      $a1, $s0, 0x12C
.L8001C820:
/* D020 8001C820 10DE000C */  jal        CheckNextAnim
/* D024 8001C824 21200002 */   addu      $a0, $s0, $zero
.L8001C828:
/* D028 8001C828 2800BF8F */  lw         $ra, 0x28($sp)
/* D02C 8001C82C 2400B38F */  lw         $s3, 0x24($sp)
/* D030 8001C830 2000B28F */  lw         $s2, 0x20($sp)
/* D034 8001C834 1C00B18F */  lw         $s1, 0x1C($sp)
/* D038 8001C838 1800B08F */  lw         $s0, 0x18($sp)
/* D03C 8001C83C 0800E003 */  jr         $ra
/* D040 8001C840 3000BD27 */   addiu     $sp, $sp, 0x30
.size PickupBrains, . - PickupBrains
