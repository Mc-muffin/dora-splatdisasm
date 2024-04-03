.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitWorldTriggers
/* 30DD4 800405D4 C41480AF */  sw         $zero, %gp_rel(gnumpressuretriggers)($gp)
/* 30DD8 800405D8 0A80023C */  lui        $v0, %hi(gkeytriggersCount)
/* 30DDC 800405DC E0BA4224 */  addiu      $v0, $v0, %lo(gkeytriggersCount)
/* 30DE0 800405E0 0A80033C */  lui        $v1, %hi(ggrouptriggersCount)
/* 30DE4 800405E4 F0B96324 */  addiu      $v1, $v1, %lo(ggrouptriggersCount)
/* 30DE8 800405E8 1D000424 */  addiu      $a0, $zero, 0x1D
.L800405EC:
/* 30DEC 800405EC 000040AC */  sw         $zero, 0x0($v0)
/* 30DF0 800405F0 04004224 */  addiu      $v0, $v0, 0x4
/* 30DF4 800405F4 000060AC */  sw         $zero, 0x0($v1)
/* 30DF8 800405F8 FFFF8424 */  addiu      $a0, $a0, -0x1
/* 30DFC 800405FC FBFF8104 */  bgez       $a0, .L800405EC
/* 30E00 80040600 04006324 */   addiu     $v1, $v1, 0x4
/* 30E04 80040604 1D000424 */  addiu      $a0, $zero, 0x1D
/* 30E08 80040608 0A80023C */  lui        $v0, %hi(PickupTrigger)
/* 30E0C 8004060C D0BB4224 */  addiu      $v0, $v0, %lo(PickupTrigger)
/* 30E10 80040610 74004224 */  addiu      $v0, $v0, 0x74
.L80040614:
/* 30E14 80040614 000040AC */  sw         $zero, 0x0($v0)
/* 30E18 80040618 FFFF8424 */  addiu      $a0, $a0, -0x1
/* 30E1C 8004061C FDFF8104 */  bgez       $a0, .L80040614
/* 30E20 80040620 FCFF4224 */   addiu     $v0, $v0, -0x4
/* 30E24 80040624 240C80AF */  sw         $zero, %gp_rel(gw1section1plants)($gp)
/* 30E28 80040628 280C80AF */  sw         $zero, %gp_rel(gw1section2plants)($gp)
/* 30E2C 8004062C 2C0C80AF */  sw         $zero, %gp_rel(gw1section3plants)($gp)
/* 30E30 80040630 300C80AF */  sw         $zero, %gp_rel(gw1section4clover)($gp)
/* 30E34 80040634 0800E003 */  jr         $ra
/* 30E38 80040638 00000000 */   nop
.size InitWorldTriggers, . - InitWorldTriggers
