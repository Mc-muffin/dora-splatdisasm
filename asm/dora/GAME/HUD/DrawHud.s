.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawHud
/* E3F4 8001DBF4 78FFBD27 */  addiu      $sp, $sp, -0x88
/* E3F8 8001DBF8 0980033C */  lui        $v1, %hi(g_pickup_mesh)
/* E3FC 8001DBFC F455638C */  lw         $v1, %lo(g_pickup_mesh)($v1)
/* E400 8001DC00 01000224 */  addiu      $v0, $zero, 0x1
/* E404 8001DC04 8400BFAF */  sw         $ra, 0x84($sp)
/* E408 8001DC08 8000BEAF */  sw         $fp, 0x80($sp)
/* E40C 8001DC0C 7C00B7AF */  sw         $s7, 0x7C($sp)
/* E410 8001DC10 7800B6AF */  sw         $s6, 0x78($sp)
/* E414 8001DC14 7400B5AF */  sw         $s5, 0x74($sp)
/* E418 8001DC18 7000B4AF */  sw         $s4, 0x70($sp)
/* E41C 8001DC1C 6C00B3AF */  sw         $s3, 0x6C($sp)
/* E420 8001DC20 6800B2AF */  sw         $s2, 0x68($sp)
/* E424 8001DC24 6400B1AF */  sw         $s1, 0x64($sp)
/* E428 8001DC28 04006210 */  beq        $v1, $v0, .L8001DC3C
/* E42C 8001DC2C 6000B0AF */   sw        $s0, 0x60($sp)
/* E430 8001DC30 02000224 */  addiu      $v0, $zero, 0x2
/* E434 8001DC34 08006214 */  bne        $v1, $v0, .L8001DC58
/* E438 8001DC38 00000000 */   nop
.L8001DC3C:
/* E43C 8001DC3C 1805848F */  lw         $a0, %gp_rel(phudr)($gp)
/* E440 8001DC40 1C05858F */  lw         $a1, %gp_rel(phudg)($gp)
/* E444 8001DC44 2005868F */  lw         $a2, %gp_rel(phudb)($gp)
/* E448 8001DC48 5363010C */  jal        TextSetTextColor
/* E44C 8001DC4C 00000000 */   nop
/* E450 8001DC50 1B770008 */  j          .L8001DC6C
/* E454 8001DC54 00000000 */   nop
.L8001DC58:
/* E458 8001DC58 2405848F */  lw         $a0, %gp_rel(yhudr)($gp)
/* E45C 8001DC5C 2805858F */  lw         $a1, %gp_rel(yhudg)($gp)
/* E460 8001DC60 2C05868F */  lw         $a2, %gp_rel(yhudb)($gp)
/* E464 8001DC64 5363010C */  jal        TextSetTextColor
/* E468 8001DC68 00000000 */   nop
.L8001DC6C:
/* E46C 8001DC6C 0980023C */  lui        $v0, %hi(Trg0)
/* E470 8001DC70 30594294 */  lhu        $v0, %lo(Trg0)($v0)
/* E474 8001DC74 00000000 */  nop
/* E478 8001DC78 000C4230 */  andi       $v0, $v0, 0xC00
/* E47C 8001DC7C 0E004010 */  beqz       $v0, .L8001DCB8
/* E480 8001DC80 00000000 */   nop
/* E484 8001DC84 5404828F */  lw         $v0, %gp_rel(HudOnScreenTimer)($gp)
/* E488 8001DC88 A803838F */  lw         $v1, %gp_rel(HUDState)($gp)
/* E48C 8001DC8C B00382AF */  sw         $v0, %gp_rel(HudTimer)($gp)
/* E490 8001DC90 03006010 */  beqz       $v1, .L8001DCA0
/* E494 8001DC94 03000224 */   addiu     $v0, $zero, 0x3
/* E498 8001DC98 07006214 */  bne        $v1, $v0, .L8001DCB8
/* E49C 8001DC9C 00000000 */   nop
.L8001DCA0:
/* E4A0 8001DCA0 5804838F */  lw         $v1, %gp_rel(HudUpdateTimerReset)($gp)
/* E4A4 8001DCA4 01000224 */  addiu      $v0, $zero, 0x1
/* E4A8 8001DCA8 A80382AF */  sw         $v0, %gp_rel(HUDState)($gp)
/* E4AC 8001DCAC 5C0483AF */  sw         $v1, %gp_rel(HUDUpdateTimer)($gp)
/* E4B0 8001DCB0 3495000C */  jal        NewsPaperZoomIn
/* E4B4 8001DCB4 00000000 */   nop
.L8001DCB8:
/* E4B8 8001DCB8 A803968F */  lw         $s6, %gp_rel(HUDState)($gp)
/* E4BC 8001DCBC 00000000 */  nop
/* E4C0 8001DCC0 FEFFC226 */  addiu      $v0, $s6, -0x2
/* E4C4 8001DCC4 0200422C */  sltiu      $v0, $v0, 0x2
/* E4C8 8001DCC8 09004010 */  beqz       $v0, .L8001DCF0
/* E4CC 8001DCCC 01000224 */   addiu     $v0, $zero, 0x1
/* E4D0 8001DCD0 5C04828F */  lw         $v0, %gp_rel(HUDUpdateTimer)($gp)
/* E4D4 8001DCD4 00000000 */  nop
/* E4D8 8001DCD8 FFFF4224 */  addiu      $v0, $v0, -0x1
/* E4DC 8001DCDC 5C0482AF */  sw         $v0, %gp_rel(HUDUpdateTimer)($gp)
/* E4E0 8001DCE0 03004014 */  bnez       $v0, .L8001DCF0
/* E4E4 8001DCE4 01000224 */   addiu     $v0, $zero, 0x1
/* E4E8 8001DCE8 5C0482AF */  sw         $v0, %gp_rel(HUDUpdateTimer)($gp)
/* E4EC 8001DCEC 01000224 */  addiu      $v0, $zero, 0x1
.L8001DCF0:
/* E4F0 8001DCF0 1500C212 */  beq        $s6, $v0, .L8001DD48
/* E4F4 8001DCF4 0200C22A */   slti      $v0, $s6, 0x2
/* E4F8 8001DCF8 05004010 */  beqz       $v0, .L8001DD10
/* E4FC 8001DCFC 02000224 */   addiu     $v0, $zero, 0x2
/* E500 8001DD00 0900C012 */  beqz       $s6, .L8001DD28
/* E504 8001DD04 21F00000 */   addu      $fp, $zero, $zero
/* E508 8001DD08 6E770008 */  j          .L8001DDB8
/* E50C 8001DD0C 00000000 */   nop
.L8001DD10:
/* E510 8001DD10 1600C212 */  beq        $s6, $v0, .L8001DD6C
/* E514 8001DD14 03000224 */   addiu     $v0, $zero, 0x3
/* E518 8001DD18 1D00C212 */  beq        $s6, $v0, .L8001DD90
/* E51C 8001DD1C 21F00000 */   addu      $fp, $zero, $zero
/* E520 8001DD20 6E770008 */  j          .L8001DDB8
/* E524 8001DD24 00000000 */   nop
.L8001DD28:
/* E528 8001DD28 0980023C */  lui        $v0, %hi(Trg1)
/* E52C 8001DD2C 32594294 */  lhu        $v0, %lo(Trg1)($v0)
/* E530 8001DD30 00000000 */  nop
/* E534 8001DD34 01004230 */  andi       $v0, $v0, 0x1
/* E538 8001DD38 1F004010 */  beqz       $v0, .L8001DDB8
/* E53C 8001DD3C 00000000 */   nop
/* E540 8001DD40 6D770008 */  j          .L8001DDB4
/* E544 8001DD44 01001624 */   addiu     $s6, $zero, 0x1
.L8001DD48:
/* E548 8001DD48 AC03828F */  lw         $v0, %gp_rel(HudYOffset)($gp)
/* E54C 8001DD4C 00000000 */  nop
/* E550 8001DD50 10004224 */  addiu      $v0, $v0, 0x10
/* E554 8001DD54 AC0382AF */  sw         $v0, %gp_rel(HudYOffset)($gp)
/* E558 8001DD58 17004004 */  bltz       $v0, .L8001DDB8
/* E55C 8001DD5C 21F00000 */   addu      $fp, $zero, $zero
/* E560 8001DD60 AC0380AF */  sw         $zero, %gp_rel(HudYOffset)($gp)
/* E564 8001DD64 6E770008 */  j          .L8001DDB8
/* E568 8001DD68 02001624 */   addiu     $s6, $zero, 0x2
.L8001DD6C:
/* E56C 8001DD6C B003828F */  lw         $v0, %gp_rel(HudTimer)($gp)
/* E570 8001DD70 00000000 */  nop
/* E574 8001DD74 FFFF4224 */  addiu      $v0, $v0, -0x1
/* E578 8001DD78 B00382AF */  sw         $v0, %gp_rel(HudTimer)($gp)
/* E57C 8001DD7C 0E004104 */  bgez       $v0, .L8001DDB8
/* E580 8001DD80 21F00000 */   addu      $fp, $zero, $zero
/* E584 8001DD84 B00380AF */  sw         $zero, %gp_rel(HudTimer)($gp)
/* E588 8001DD88 6E770008 */  j          .L8001DDB8
/* E58C 8001DD8C 03001624 */   addiu     $s6, $zero, 0x3
.L8001DD90:
/* E590 8001DD90 AC03828F */  lw         $v0, %gp_rel(HudYOffset)($gp)
/* E594 8001DD94 0005838F */  lw         $v1, %gp_rel(HUDMINY)($gp)
/* E598 8001DD98 F0FF4224 */  addiu      $v0, $v0, -0x10
/* E59C 8001DD9C AC0382AF */  sw         $v0, %gp_rel(HudYOffset)($gp)
/* E5A0 8001DDA0 2A104300 */  slt        $v0, $v0, $v1
/* E5A4 8001DDA4 04004010 */  beqz       $v0, .L8001DDB8
/* E5A8 8001DDA8 00000000 */   nop
/* E5AC 8001DDAC AC0383AF */  sw         $v1, %gp_rel(HudYOffset)($gp)
/* E5B0 8001DDB0 21B00000 */  addu       $s6, $zero, $zero
.L8001DDB4:
/* E5B4 8001DDB4 21F00000 */  addu       $fp, $zero, $zero
.L8001DDB8:
/* E5B8 8001DDB8 0980033C */  lui        $v1, %hi(gLevel)
/* E5BC 8001DDBC 3456638C */  lw         $v1, %lo(gLevel)($v1)
/* E5C0 8001DDC0 50FF0224 */  addiu      $v0, $zero, -0xB0
/* E5C4 8001DDC4 A80396AF */  sw         $s6, %gp_rel(HUDState)($gp)
/* E5C8 8001DDC8 080582AF */  sw         $v0, %gp_rel(INVENTORYOFFSET)($gp)
/* E5CC 8001DDCC 09006014 */  bnez       $v1, .L8001DDF4
/* E5D0 8001DDD0 21B80000 */   addu      $s7, $zero, $zero
/* E5D4 8001DDD4 0980033C */  lui        $v1, %hi(gWorld)
/* E5D8 8001DDD8 3C56638C */  lw         $v1, %lo(gWorld)($v1)
/* E5DC 8001DDDC 07000224 */  addiu      $v0, $zero, 0x7
/* E5E0 8001DDE0 05006214 */  bne        $v1, $v0, .L8001DDF8
/* E5E4 8001DDE4 0A80023C */   lui       $v0, %hi(GeomEnv)
/* E5E8 8001DDE8 90FF0224 */  addiu      $v0, $zero, -0x70
/* E5EC 8001DDEC 080582AF */  sw         $v0, %gp_rel(INVENTORYOFFSET)($gp)
/* E5F0 8001DDF0 21B80000 */  addu       $s7, $zero, $zero
.L8001DDF4:
/* E5F4 8001DDF4 0A80023C */  lui        $v0, %hi(GeomEnv)
.L8001DDF8:
/* E5F8 8001DDF8 40B15524 */  addiu      $s5, $v0, %lo(GeomEnv)
.L8001DDFC:
/* E5FC 8001DDFC 0980023C */  lui        $v0, %hi(InventoryActorArray)
/* E600 8001DE00 A0634324 */  addiu      $v1, $v0, %lo(InventoryActorArray)
/* E604 8001DE04 80101700 */  sll        $v0, $s7, 2
/* E608 8001DE08 21904300 */  addu       $s2, $v0, $v1
/* E60C 8001DE0C 0000478E */  lw         $a3, 0x0($s2)
/* E610 8001DE10 00000000 */  nop
/* E614 8001DE14 3F00E010 */  beqz       $a3, .L8001DF14
/* E618 8001DE18 00000000 */   nop
/* E61C 8001DE1C 0805848F */  lw         $a0, %gp_rel(INVENTORYOFFSET)($gp)
/* E620 8001DE20 00000000 */  nop
/* E624 8001DE24 18009E00 */  mult       $a0, $fp
/* E628 8001DE28 5400E28C */  lw         $v0, 0x54($a3)
/* E62C 8001DE2C DC04838F */  lw         $v1, %gp_rel(InventoryActorX)($gp)
/* E630 8001DE30 E004858F */  lw         $a1, %gp_rel(InventoryActorY)($gp)
/* E634 8001DE34 E404868F */  lw         $a2, %gp_rel(InventoryActorZ)($gp)
/* E638 8001DE38 30004224 */  addiu      $v0, $v0, 0x30
/* E63C 8001DE3C 5400E2AC */  sw         $v0, 0x54($a3)
/* E640 8001DE40 0980013C */  lui        $at, %hi(MoveVec + 0x2)
/* E644 8001DE44 E64D25A4 */  sh         $a1, %lo(MoveVec + 0x2)($at)
/* E648 8001DE48 0980013C */  lui        $at, %hi(MoveVec + 0x4)
/* E64C 8001DE4C E84D26A4 */  sh         $a2, %lo(MoveVec + 0x4)($at)
/* E650 8001DE50 12200000 */  mflo       $a0
/* E654 8001DE54 21186400 */  addu       $v1, $v1, $a0
/* E658 8001DE58 0980013C */  lui        $at, %hi(MoveVec)
/* E65C 8001DE5C E44D23A4 */  sh         $v1, %lo(MoveVec)($at)
/* E660 8001DE60 0000528E */  lw         $s2, 0x0($s2)
/* E664 8001DE64 7804918F */  lw         $s1, %gp_rel(htx)($gp)
/* E668 8001DE68 7000428E */  lw         $v0, 0x70($s2)
/* E66C 8001DE6C 7C04938F */  lw         $s3, %gp_rel(hty)($gp)
/* E670 8001DE70 21882202 */  addu       $s1, $s1, $v0
/* E674 8001DE74 0800B1AE */  sw         $s1, 0x8($s5)
/* E678 8001DE78 7400428E */  lw         $v0, 0x74($s2)
/* E67C 8001DE7C 8004908F */  lw         $s0, %gp_rel(htz)($gp)
/* E680 8001DE80 21986202 */  addu       $s3, $s3, $v0
/* E684 8001DE84 0C00B3AE */  sw         $s3, 0xC($s5)
/* E688 8001DE88 7800428E */  lw         $v0, 0x78($s2)
/* E68C 8001DE8C 00000000 */  nop
/* E690 8001DE90 21800202 */  addu       $s0, $s0, $v0
/* E694 8001DE94 1000B0AE */  sw         $s0, 0x10($s5)
/* E698 8001DE98 7000438E */  lw         $v1, 0x70($s2)
/* E69C 8001DE9C 0100DE27 */  addiu      $fp, $fp, 0x1
/* E6A0 8001DEA0 3800A3AE */  sw         $v1, 0x38($s5)
/* E6A4 8001DEA4 7400548E */  lw         $s4, 0x74($s2)
/* E6A8 8001DEA8 23882302 */  subu       $s1, $s1, $v1
/* E6AC 8001DEAC 3C00B4AE */  sw         $s4, 0x3C($s5)
/* E6B0 8001DEB0 7800428E */  lw         $v0, 0x78($s2)
/* E6B4 8001DEB4 21282002 */  addu       $a1, $s1, $zero
/* E6B8 8001DEB8 23800202 */  subu       $s0, $s0, $v0
/* E6BC 8001DEBC 21200002 */  addu       $a0, $s0, $zero
/* E6C0 8001DEC0 63EF010C */  jal        ratan2
/* E6C4 8001DEC4 4000A2AE */   sw        $v0, 0x40($s5)
/* E6C8 8001DEC8 02002106 */  bgez       $s1, .L8001DED4
/* E6CC 8001DECC 21202002 */   addu      $a0, $s1, $zero
/* E6D0 8001DED0 23200400 */  negu       $a0, $a0
.L8001DED4:
/* E6D4 8001DED4 02000106 */  bgez       $s0, .L8001DEE0
/* E6D8 8001DED8 21280002 */   addu      $a1, $s0, $zero
/* E6DC 8001DEDC 23280500 */  negu       $a1, $a1
.L8001DEE0:
/* E6E0 8001DEE0 00044224 */  addiu      $v0, $v0, 0x400
/* E6E4 8001DEE4 FEE9000C */  jal        DistApprox_2d
/* E6E8 8001DEE8 0200A2A6 */   sh        $v0, 0x2($s5)
/* E6EC 8001DEEC 21204000 */  addu       $a0, $v0, $zero
/* E6F0 8001DEF0 23987402 */  subu       $s3, $s3, $s4
/* E6F4 8001DEF4 63EF010C */  jal        ratan2
/* E6F8 8001DEF8 43281300 */   sra       $a1, $s3, 1
/* E6FC 8001DEFC 00FC4224 */  addiu      $v0, $v0, -0x400
/* E700 8001DF00 0A80033C */  lui        $v1, %hi(GeomEnv)
/* E704 8001DF04 4AE9000C */  jal        UpdateCameraMatrix
/* E708 8001DF08 40B162A4 */   sh        $v0, %lo(GeomEnv)($v1)
/* E70C 8001DF0C FF79000C */  jal        DrawHUDActor
/* E710 8001DF10 21204002 */   addu      $a0, $s2, $zero
.L8001DF14:
/* E714 8001DF14 0100F726 */  addiu      $s7, $s7, 0x1
/* E718 8001DF18 0800E22A */  slti       $v0, $s7, 0x8
/* E71C 8001DF1C B7FF4014 */  bnez       $v0, .L8001DDFC
/* E720 8001DF20 00000000 */   nop
/* E724 8001DF24 3800C012 */  beqz       $s6, .L8001E008
/* E728 8001DF28 00000000 */   nop
/* E72C 8001DF2C AC03858F */  lw         $a1, %gp_rel(HudYOffset)($gp)
/* E730 8001DF30 B403848F */  lw         $a0, %gp_rel(StarsTextX)($gp)
/* E734 8001DF34 0200A104 */  bgez       $a1, .L8001DF40
/* E738 8001DF38 00000000 */   nop
/* E73C 8001DF3C 0300A524 */  addiu      $a1, $a1, 0x3
.L8001DF40:
/* E740 8001DF40 83280500 */  sra        $a1, $a1, 2
/* E744 8001DF44 1800A524 */  addiu      $a1, $a1, 0x18
/* E748 8001DF48 21300000 */  addu       $a2, $zero, $zero
/* E74C 8001DF4C 0980073C */  lui        $a3, %hi(D_80094794)
/* E750 8001DF50 0980023C */  lui        $v0, %hi(LevelNumStarsCollected)
/* E754 8001DF54 A047428C */  lw         $v0, %lo(LevelNumStarsCollected)($v0)
/* E758 8001DF58 9447E724 */  addiu      $a3, $a3, %lo(D_80094794)
/* E75C 8001DF5C 3063010C */  jal        Print
/* E760 8001DF60 1000A2AF */   sw        $v0, 0x10($sp)
/* E764 8001DF64 0980033C */  lui        $v1, %hi(HUDSpriteArray)
/* E768 8001DF68 A0606324 */  addiu      $v1, $v1, %lo(HUDSpriteArray)
/* E76C 8001DF6C 0980043C */  lui        $a0, %hi(ot_ndx)
/* E770 8001DF70 4853848C */  lw         $a0, %lo(ot_ndx)($a0)
/* E774 8001DF74 B803858F */  lw         $a1, %gp_rel(StarsX)($gp)
/* E778 8001DF78 5400668C */  lw         $a2, 0x54($v1)
/* E77C 8001DF7C 80100400 */  sll        $v0, $a0, 2
/* E780 8001DF80 21104400 */  addu       $v0, $v0, $a0
/* E784 8001DF84 C0100200 */  sll        $v0, $v0, 3
/* E788 8001DF88 21384300 */  addu       $a3, $v0, $v1
/* E78C 8001DF8C 5000648C */  lw         $a0, 0x50($v1)
/* E790 8001DF90 BC03828F */  lw         $v0, %gp_rel(StarsY)($gp)
/* E794 8001DF94 AC03838F */  lw         $v1, %gp_rel(HudYOffset)($gp)
/* E798 8001DF98 0800E5A4 */  sh         $a1, 0x8($a3)
/* E79C 8001DF9C 1800E5A4 */  sh         $a1, 0x18($a3)
/* E7A0 8001DFA0 04004224 */  addiu      $v0, $v0, 0x4
/* E7A4 8001DFA4 21104300 */  addu       $v0, $v0, $v1
/* E7A8 8001DFA8 2120A400 */  addu       $a0, $a1, $a0
/* E7AC 8001DFAC 0A00E2A4 */  sh         $v0, 0xA($a3)
/* E7B0 8001DFB0 1200E2A4 */  sh         $v0, 0x12($a3)
/* E7B4 8001DFB4 21104600 */  addu       $v0, $v0, $a2
/* E7B8 8001DFB8 0B80033C */  lui        $v1, %hi(g_nt + 0x8)
/* E7BC 8001DFBC 1000E4A4 */  sh         $a0, 0x10($a3)
/* E7C0 8001DFC0 2000E4A4 */  sh         $a0, 0x20($a3)
/* E7C4 8001DFC4 70BB6424 */  addiu      $a0, $v1, %lo(g_nt + 0x8)
/* E7C8 8001DFC8 1A00E2A4 */  sh         $v0, 0x1A($a3)
/* E7CC 8001DFCC 2200E2A4 */  sh         $v0, 0x22($a3)
/* E7D0 8001DFD0 70BB628C */  lw         $v0, %lo(g_nt + 0x8)($v1)
/* E7D4 8001DFD4 00000000 */  nop
/* E7D8 8001DFD8 09004010 */  beqz       $v0, .L8001E000
/* E7DC 8001DFDC 21286000 */   addu      $a1, $v1, $zero
/* E7E0 8001DFE0 02008388 */  lwl        $v1, 0x2($a0)
/* E7E4 8001DFE4 70BBA28C */  lw         $v0, %lo(g_nt + 0x8)($a1)
/* E7E8 8001DFE8 00000000 */  nop
/* E7EC 8001DFEC 00120200 */  sll        $v0, $v0, 8
/* E7F0 8001DFF0 0200E2A8 */  swl        $v0, 0x2($a3)
/* E7F4 8001DFF4 0200E3A8 */  swl        $v1, 0x2($a3)
/* E7F8 8001DFF8 02780008 */  j          .L8001E008
/* E7FC 8001DFFC 70BBA7AC */   sw        $a3, %lo(g_nt + 0x8)($a1)
.L8001E000:
/* E800 8001E000 040087AC */  sw         $a3, 0x4($a0)
/* E804 8001E004 70BBA7AC */  sw         $a3, %lo(g_nt + 0x8)($a1)
.L8001E008:
/* E808 8001E008 0980013C */  lui        $at, %hi(MoveVec)
/* E80C 8001E00C E44D20A4 */  sh         $zero, %lo(MoveVec)($at)
/* E810 8001E010 0980013C */  lui        $at, %hi(MoveVec + 0x2)
/* E814 8001E014 E64D20A4 */  sh         $zero, %lo(MoveVec + 0x2)($at)
/* E818 8001E018 0980013C */  lui        $at, %hi(MoveVec + 0x4)
/* E81C 8001E01C E84D20A4 */  sh         $zero, %lo(MoveVec + 0x4)($at)
/* E820 8001E020 8400BF8F */  lw         $ra, 0x84($sp)
/* E824 8001E024 8000BE8F */  lw         $fp, 0x80($sp)
/* E828 8001E028 7C00B78F */  lw         $s7, 0x7C($sp)
/* E82C 8001E02C 7800B68F */  lw         $s6, 0x78($sp)
/* E830 8001E030 7400B58F */  lw         $s5, 0x74($sp)
/* E834 8001E034 7000B48F */  lw         $s4, 0x70($sp)
/* E838 8001E038 6C00B38F */  lw         $s3, 0x6C($sp)
/* E83C 8001E03C 6800B28F */  lw         $s2, 0x68($sp)
/* E840 8001E040 6400B18F */  lw         $s1, 0x64($sp)
/* E844 8001E044 6000B08F */  lw         $s0, 0x60($sp)
/* E848 8001E048 0800E003 */  jr         $ra
/* E84C 8001E04C 8800BD27 */   addiu     $sp, $sp, 0x88
.size DrawHud, . - DrawHud
