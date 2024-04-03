.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel OptionsService
/* 1739C 80026B9C 58FFBD27 */  addiu      $sp, $sp, -0xA8
/* 173A0 80026BA0 9C00B7AF */  sw         $s7, 0x9C($sp)
/* 173A4 80026BA4 21B80000 */  addu       $s7, $zero, $zero
/* 173A8 80026BA8 8800B2AF */  sw         $s2, 0x88($sp)
/* 173AC 80026BAC 0980123C */  lui        $s2, %hi(gworldchars)
/* 173B0 80026BB0 4C565226 */  addiu      $s2, $s2, %lo(gworldchars)
/* 173B4 80026BB4 9800B6AF */  sw         $s6, 0x98($sp)
/* 173B8 80026BB8 9407968F */  lw         $s6, %gp_rel(MENUSTARTYPOS)($gp)
/* 173BC 80026BBC 8407828F */  lw         $v0, %gp_rel(gmenuworld)($gp)
/* 173C0 80026BC0 0980073C */  lui        $a3, %hi(ot_ndx)
/* 173C4 80026BC4 4853E78C */  lw         $a3, %lo(ot_ndx)($a3)
/* 173C8 80026BC8 21204002 */  addu       $a0, $s2, $zero
/* 173CC 80026BCC 8000B0AF */  sw         $s0, 0x80($sp)
/* 173D0 80026BD0 0980103C */  lui        $s0, %hi(gLevel)
/* 173D4 80026BD4 3456108E */  lw         $s0, %lo(gLevel)($s0)
/* 173D8 80026BD8 03000624 */  addiu      $a2, $zero, 0x3
/* 173DC 80026BDC 9000B4AF */  sw         $s4, 0x90($sp)
/* 173E0 80026BE0 0880143C */  lui        $s4, %hi(WorldList)
/* 173E4 80026BE4 A000BEAF */  sw         $fp, 0xA0($sp)
/* 173E8 80026BE8 48079E8F */  lw         $fp, %gp_rel(MainMenuSelection)($gp)
/* 173EC 80026BEC 6C648926 */  addiu      $t1, $s4, %lo(WorldList)
/* 173F0 80026BF0 8C00B3AF */  sw         $s3, 0x8C($sp)
/* 173F4 80026BF4 2000B327 */  addiu      $s3, $sp, 0x20
/* 173F8 80026BF8 A400BFAF */  sw         $ra, 0xA4($sp)
/* 173FC 80026BFC 9400B5AF */  sw         $s5, 0x94($sp)
/* 17400 80026C00 8400B1AF */  sw         $s1, 0x84($sp)
/* 17404 80026C04 80400200 */  sll        $t0, $v0, 2
/* 17408 80026C08 21400201 */  addu       $t0, $t0, $v0
/* 1740C 80026C0C 80400800 */  sll        $t0, $t0, 2
/* 17410 80026C10 21102801 */  addu       $v0, $t1, $t0
/* 17414 80026C14 80180700 */  sll        $v1, $a3, 2
/* 17418 80026C18 21186700 */  addu       $v1, $v1, $a3
/* 1741C 80026C1C C0180300 */  sll        $v1, $v1, 3
/* 17420 80026C20 1000458C */  lw         $a1, 0x10($v0)
/* 17424 80026C24 0A80023C */  lui        $v0, %hi(pausemenuFT4 + 0xA0)
/* 17428 80026C28 40874224 */  addiu      $v0, $v0, %lo(pausemenuFT4 + 0xA0)
/* 1742C 80026C2C 21A86200 */  addu       $s5, $v1, $v0
/* 17430 80026C30 21482801 */  addu       $t1, $t1, $t0
/* 17434 80026C34 0C00318D */  lw         $s1, 0xC($t1)
/* 17438 80026C38 D3C2010C */  jal        strncpy
/* 1743C 80026C3C 01001026 */   addiu     $s0, $s0, 0x1
/* 17440 80026C40 21206002 */  addu       $a0, $s3, $zero
/* 17444 80026C44 0180053C */  lui        $a1, %hi(D_80011508)
/* 17448 80026C48 0815A524 */  addiu      $a1, $a1, %lo(D_80011508)
/* 1744C 80026C4C 21302002 */  addu       $a2, $s1, $zero
/* 17450 80026C50 21384002 */  addu       $a3, $s2, $zero
/* 17454 80026C54 030040A2 */  sb         $zero, 0x3($s2)
/* 17458 80026C58 53C5010C */  jal        sprintf
/* 1745C 80026C5C 1000B0AF */   sw        $s0, 0x10($sp)
/* 17460 80026C60 CC07848F */  lw         $a0, %gp_rel(MENU_TRIANGLE_X)($gp)
/* 17464 80026C64 D007908F */  lw         $s0, %gp_rel(MENU_TRIANGLE_Y)($gp)
/* 17468 80026C68 C4078397 */  lhu        $v1, %gp_rel(MENU_TRIANGLE_XOFFSET)($gp)
/* 1746C 80026C6C C8078297 */  lhu        $v0, %gp_rel(MENU_TRIANGLE_YOFFSET)($gp)
/* 17470 80026C70 21186400 */  addu       $v1, $v1, $a0
/* 17474 80026C74 21105000 */  addu       $v0, $v0, $s0
/* 17478 80026C78 18006424 */  addiu      $a0, $v1, 0x18
/* 1747C 80026C7C 0A00A2A6 */  sh         $v0, 0xA($s5)
/* 17480 80026C80 1200A2A6 */  sh         $v0, 0x12($s5)
/* 17484 80026C84 18004224 */  addiu      $v0, $v0, 0x18
/* 17488 80026C88 0800A3A6 */  sh         $v1, 0x8($s5)
/* 1748C 80026C8C 1800A3A6 */  sh         $v1, 0x18($s5)
/* 17490 80026C90 0B80033C */  lui        $v1, %hi(g_nt3 + 0x8)
/* 17494 80026C94 1A00A2A6 */  sh         $v0, 0x1A($s5)
/* 17498 80026C98 2200A2A6 */  sh         $v0, 0x22($s5)
/* 1749C 80026C9C 40776224 */  addiu      $v0, $v1, %lo(g_nt3 + 0x8)
/* 174A0 80026CA0 1000A4A6 */  sh         $a0, 0x10($s5)
/* 174A4 80026CA4 2000A4A6 */  sh         $a0, 0x20($s5)
/* 174A8 80026CA8 4077648C */  lw         $a0, %lo(g_nt3 + 0x8)($v1)
/* 174AC 80026CAC 00000000 */  nop
/* 174B0 80026CB0 09008010 */  beqz       $a0, .L80026CD8
/* 174B4 80026CB4 21386000 */   addu      $a3, $v1, $zero
/* 174B8 80026CB8 FF00033C */  lui        $v1, (0xFFFFFF >> 16)
/* 174BC 80026CBC FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
/* 174C0 80026CC0 0089023C */  lui        $v0, (0x89000000 >> 16)
/* 174C4 80026CC4 26108200 */  xor        $v0, $a0, $v0
/* 174C8 80026CC8 2418A302 */  and        $v1, $s5, $v1
/* 174CC 80026CCC 0000A2AE */  sw         $v0, 0x0($s5)
/* 174D0 80026CD0 379B0008 */  j          .L80026CDC
/* 174D4 80026CD4 4077E3AC */   sw        $v1, %lo(g_nt3 + 0x8)($a3)
.L80026CD8:
/* 174D8 80026CD8 040055AC */  sw         $s5, 0x4($v0)
.L80026CDC:
/* 174DC 80026CDC DF000424 */  addiu      $a0, $zero, 0xDF
/* 174E0 80026CE0 DF000524 */  addiu      $a1, $zero, 0xDF
/* 174E4 80026CE4 DF000624 */  addiu      $a2, $zero, 0xDF
/* 174E8 80026CE8 5363010C */  jal        TextSetTextColor
/* 174EC 80026CEC 4077F5AC */   sw        $s5, %lo(g_nt3 + 0x8)($a3)
/* 174F0 80026CF0 0980043C */  lui        $a0, %hi(D_80094A38)
/* 174F4 80026CF4 384A8424 */  addiu      $a0, $a0, %lo(D_80094A38)
/* 174F8 80026CF8 A0000524 */  addiu      $a1, $zero, 0xA0
/* 174FC 80026CFC 21300002 */  addu       $a2, $s0, $zero
/* 17500 80026D00 7163010C */  jal        TextAddStringC
/* 17504 80026D04 01000724 */   addiu     $a3, $zero, 0x1
/* 17508 80026D08 0980153C */  lui        $s5, (0x80090000 >> 16)
/* 1750C 80026D0C 0B80133C */  lui        $s3, (0x800B0000 >> 16)
/* 17510 80026D10 0980023C */  lui        $v0, %hi(Trg0)
/* 17514 80026D14 30594294 */  lhu        $v0, %lo(Trg0)($v0)
/* 17518 80026D18 00000000 */  nop
/* 1751C 80026D1C FFFF4330 */  andi       $v1, $v0, 0xFFFF
/* 17520 80026D20 40006010 */  beqz       $v1, .L80026E24
/* 17524 80026D24 7000B227 */   addiu     $s2, $sp, 0x70
/* 17528 80026D28 000F4230 */  andi       $v0, $v0, 0xF00
/* 1752C 80026D2C 3E004010 */  beqz       $v0, .L80026E28
/* 17530 80026D30 0300023C */   lui       $v0, (0x38B83 >> 16)
/* 17534 80026D34 7807848F */  lw         $a0, %gp_rel(levelcheatcount)($gp)
/* 17538 80026D38 00000000 */  nop
/* 1753C 80026D3C 07008014 */  bnez       $a0, .L80026D5C
/* 17540 80026D40 01000224 */   addiu     $v0, $zero, 0x1
/* 17544 80026D44 00010224 */  addiu      $v0, $zero, 0x100
/* 17548 80026D48 04006214 */  bne        $v1, $v0, .L80026D5C
/* 1754C 80026D4C 01000224 */   addiu     $v0, $zero, 0x1
/* 17550 80026D50 780782AF */  sw         $v0, %gp_rel(levelcheatcount)($gp)
/* 17554 80026D54 839B0008 */  j          .L80026E0C
/* 17558 80026D58 09001024 */   addiu     $s0, $zero, 0x9
.L80026D5C:
/* 1755C 80026D5C 06008214 */  bne        $a0, $v0, .L80026D78
/* 17560 80026D60 02000224 */   addiu     $v0, $zero, 0x2
/* 17564 80026D64 0980033C */  lui        $v1, %hi(Trg0)
/* 17568 80026D68 30596394 */  lhu        $v1, %lo(Trg0)($v1)
/* 1756C 80026D6C 00040224 */  addiu      $v0, $zero, 0x400
/* 17570 80026D70 08006210 */  beq        $v1, $v0, .L80026D94
/* 17574 80026D74 02000224 */   addiu     $v0, $zero, 0x2
.L80026D78:
/* 17578 80026D78 10008214 */  bne        $a0, $v0, .L80026DBC
/* 1757C 80026D7C 03000224 */   addiu     $v0, $zero, 0x3
/* 17580 80026D80 0980033C */  lui        $v1, %hi(Trg0)
/* 17584 80026D84 30596394 */  lhu        $v1, %lo(Trg0)($v1)
/* 17588 80026D88 00020224 */  addiu      $v0, $zero, 0x200
/* 1758C 80026D8C 0B006214 */  bne        $v1, $v0, .L80026DBC
/* 17590 80026D90 03000224 */   addiu     $v0, $zero, 0x3
.L80026D94:
/* 17594 80026D94 19000424 */  addiu      $a0, $zero, 0x19
/* 17598 80026D98 21280000 */  addu       $a1, $zero, $zero
/* 1759C 80026D9C 6F4A010C */  jal        pxm_sendevent
/* 175A0 80026DA0 21300000 */   addu      $a2, $zero, $zero
/* 175A4 80026DA4 7807838F */  lw         $v1, %gp_rel(levelcheatcount)($gp)
/* 175A8 80026DA8 00000000 */  nop
/* 175AC 80026DAC 01006324 */  addiu      $v1, $v1, 0x1
/* 175B0 80026DB0 780783AF */  sw         $v1, %gp_rel(levelcheatcount)($gp)
/* 175B4 80026DB4 809B0008 */  j          .L80026E00
/* 175B8 80026DB8 0980153C */   lui       $s5, (0x80090000 >> 16)
.L80026DBC:
/* 175BC 80026DBC 0E008214 */  bne        $a0, $v0, .L80026DF8
/* 175C0 80026DC0 00080224 */   addiu     $v0, $zero, 0x800
/* 175C4 80026DC4 0980033C */  lui        $v1, %hi(Trg0)
/* 175C8 80026DC8 30596394 */  lhu        $v1, %lo(Trg0)($v1)
/* 175CC 80026DCC 00000000 */  nop
/* 175D0 80026DD0 09006214 */  bne        $v1, $v0, .L80026DF8
/* 175D4 80026DD4 18000424 */   addiu     $a0, $zero, 0x18
/* 175D8 80026DD8 21280000 */  addu       $a1, $zero, $zero
/* 175DC 80026DDC 6F4A010C */  jal        pxm_sendevent
/* 175E0 80026DE0 21300000 */   addu      $a2, $zero, $zero
/* 175E4 80026DE4 0300033C */  lui        $v1, (0x38B83 >> 16)
/* 175E8 80026DE8 838B6334 */  ori        $v1, $v1, (0x38B83 & 0xFFFF)
/* 175EC 80026DEC 740783AF */  sw         $v1, %gp_rel(LevelCheat)($gp)
/* 175F0 80026DF0 809B0008 */  j          .L80026E00
/* 175F4 80026DF4 0980153C */   lui       $s5, (0x80090000 >> 16)
.L80026DF8:
/* 175F8 80026DF8 780780AF */  sw         $zero, %gp_rel(levelcheatcount)($gp)
/* 175FC 80026DFC 0980153C */  lui        $s5, %hi(AudioSliders)
.L80026E00:
/* 17600 80026E00 0B80133C */  lui        $s3, %hi(g_nt3 + 0x50)
/* 17604 80026E04 7000B227 */  addiu      $s2, $sp, 0x70
/* 17608 80026E08 09001024 */  addiu      $s0, $zero, 0x9
.L80026E0C:
/* 1760C 80026E0C EBD6010C */  jal        VSync
/* 17610 80026E10 21200000 */   addu      $a0, $zero, $zero
/* 17614 80026E14 5B4C010C */  jal        pxm_frameh
/* 17618 80026E18 FFFF1026 */   addiu     $s0, $s0, -0x1
/* 1761C 80026E1C FBFF0106 */  bgez       $s0, .L80026E0C
/* 17620 80026E20 00000000 */   nop
.L80026E24:
/* 17624 80026E24 0300023C */  lui        $v0, (0x38B83 >> 16)
.L80026E28:
/* 17628 80026E28 7407838F */  lw         $v1, %gp_rel(LevelCheat)($gp)
/* 1762C 80026E2C 838B4234 */  ori        $v0, $v0, (0x38B83 & 0xFFFF)
/* 17630 80026E30 D9006214 */  bne        $v1, $v0, .L80027198
/* 17634 80026E34 2110E002 */   addu      $v0, $s7, $zero
/* 17638 80026E38 3900C017 */  bnez       $fp, .L80026F20
/* 1763C 80026E3C 01001724 */   addiu     $s7, $zero, 0x1
/* 17640 80026E40 7C078493 */  lbu        $a0, %gp_rel(HLR)($gp)
/* 17644 80026E44 7D078593 */  lbu        $a1, %gp_rel(HLG)($gp)
/* 17648 80026E48 7E078693 */  lbu        $a2, %gp_rel(HLB)($gp)
/* 1764C 80026E4C 5363010C */  jal        TextSetTextColor
/* 17650 80026E50 00000000 */   nop
/* 17654 80026E54 0980033C */  lui        $v1, %hi(Trg0)
/* 17658 80026E58 30596394 */  lhu        $v1, %lo(Trg0)($v1)
/* 1765C 80026E5C 00000000 */  nop
/* 17660 80026E60 80006330 */  andi       $v1, $v1, 0x80
/* 17664 80026E64 0A006010 */  beqz       $v1, .L80026E90
/* 17668 80026E68 00000000 */   nop
/* 1766C 80026E6C 8407828F */  lw         $v0, %gp_rel(gmenuworld)($gp)
/* 17670 80026E70 00000000 */  nop
/* 17674 80026E74 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 17678 80026E78 02004104 */  bgez       $v0, .L80026E84
/* 1767C 80026E7C 00000000 */   nop
/* 17680 80026E80 08000224 */  addiu      $v0, $zero, 0x8
.L80026E84:
/* 17684 80026E84 840782AF */  sw         $v0, %gp_rel(gmenuworld)($gp)
/* 17688 80026E88 880780AF */  sw         $zero, %gp_rel(gmenulevel)($gp)
/* 1768C 80026E8C 900797AF */  sw         $s7, %gp_rel(levelexists)($gp)
.L80026E90:
/* 17690 80026E90 0980023C */  lui        $v0, %hi(Trg0)
/* 17694 80026E94 30594294 */  lhu        $v0, %lo(Trg0)($v0)
/* 17698 80026E98 00000000 */  nop
/* 1769C 80026E9C 20004230 */  andi       $v0, $v0, 0x20
/* 176A0 80026EA0 11004010 */  beqz       $v0, .L80026EE8
/* 176A4 80026EA4 00000000 */   nop
/* 176A8 80026EA8 8407858F */  lw         $a1, %gp_rel(gmenuworld)($gp)
/* 176AC 80026EAC 00000000 */  nop
/* 176B0 80026EB0 0100A524 */  addiu      $a1, $a1, 0x1
/* 176B4 80026EB4 0900A22C */  sltiu      $v0, $a1, 0x9
/* 176B8 80026EB8 02004014 */  bnez       $v0, .L80026EC4
/* 176BC 80026EBC 6C648226 */   addiu     $v0, $s4, %lo(WorldList)
/* 176C0 80026EC0 21280000 */  addu       $a1, $zero, $zero
.L80026EC4:
/* 176C4 80026EC4 80180500 */  sll        $v1, $a1, 2
/* 176C8 80026EC8 21186500 */  addu       $v1, $v1, $a1
/* 176CC 80026ECC 80180300 */  sll        $v1, $v1, 2
/* 176D0 80026ED0 21186200 */  addu       $v1, $v1, $v0
/* 176D4 80026ED4 0000648C */  lw         $a0, 0x0($v1)
/* 176D8 80026ED8 840785AF */  sw         $a1, %gp_rel(gmenuworld)($gp)
/* 176DC 80026EDC 880780AF */  sw         $zero, %gp_rel(gmenulevel)($gp)
/* 176E0 80026EE0 0980013C */  lui        $at, %hi(gWorld)
/* 176E4 80026EE4 3C5624AC */  sw         $a0, %lo(gWorld)($at)
.L80026EE8:
/* 176E8 80026EE8 0980023C */  lui        $v0, %hi(Trg0)
/* 176EC 80026EEC 30594294 */  lhu        $v0, %lo(Trg0)($v0)
/* 176F0 80026EF0 00000000 */  nop
/* 176F4 80026EF4 00404230 */  andi       $v0, $v0, 0x4000
/* 176F8 80026EF8 0D004010 */  beqz       $v0, .L80026F30
/* 176FC 80026EFC 19000424 */   addiu     $a0, $zero, 0x19
/* 17700 80026F00 21280000 */  addu       $a1, $zero, $zero
/* 17704 80026F04 6F4A010C */  jal        pxm_sendevent
/* 17708 80026F08 21300000 */   addu      $a2, $zero, $zero
/* 1770C 80026F0C 01000324 */  addiu      $v1, $zero, 0x1
/* 17710 80026F10 440783AF */  sw         $v1, %gp_rel(MainMenuState)($gp)
/* 17714 80026F14 480780AF */  sw         $zero, %gp_rel(MainMenuSelection)($gp)
/* 17718 80026F18 CD9B0008 */  j          .L80026F34
/* 1771C 80026F1C 0980023C */   lui       $v0, %hi(tempstring)
.L80026F20:
/* 17720 80026F20 DF000424 */  addiu      $a0, $zero, 0xDF
/* 17724 80026F24 DF000524 */  addiu      $a1, $zero, 0xDF
/* 17728 80026F28 5363010C */  jal        TextSetTextColor
/* 1772C 80026F2C DF000624 */   addiu     $a2, $zero, 0xDF
.L80026F30:
/* 17730 80026F30 0980023C */  lui        $v0, %hi(tempstring)
.L80026F34:
/* 17734 80026F34 907E5024 */  addiu      $s0, $v0, %lo(tempstring)
/* 17738 80026F38 21200002 */  addu       $a0, $s0, $zero
/* 1773C 80026F3C 0980053C */  lui        $a1, %hi(D_80094A20)
/* 17740 80026F40 204AA524 */  addiu      $a1, $a1, %lo(D_80094A20)
/* 17744 80026F44 8407838F */  lw         $v1, %gp_rel(gmenuworld)($gp)
/* 17748 80026F48 6C649126 */  addiu      $s1, $s4, %lo(WorldList)
/* 1774C 80026F4C 80100300 */  sll        $v0, $v1, 2
/* 17750 80026F50 21104300 */  addu       $v0, $v0, $v1
/* 17754 80026F54 80100200 */  sll        $v0, $v0, 2
/* 17758 80026F58 21102202 */  addu       $v0, $s1, $v0
/* 1775C 80026F5C 0800468C */  lw         $a2, 0x8($v0)
/* 17760 80026F60 53C5010C */  jal        sprintf
/* 17764 80026F64 02001724 */   addiu     $s7, $zero, 0x2
/* 17768 80026F68 21200002 */  addu       $a0, $s0, $zero
/* 1776C 80026F6C A0000524 */  addiu      $a1, $zero, 0xA0
/* 17770 80026F70 2130C002 */  addu       $a2, $s6, $zero
/* 17774 80026F74 8407838F */  lw         $v1, %gp_rel(gmenuworld)($gp)
/* 17778 80026F78 01000724 */  addiu      $a3, $zero, 0x1
/* 1777C 80026F7C 80100300 */  sll        $v0, $v1, 2
/* 17780 80026F80 21104300 */  addu       $v0, $v0, $v1
/* 17784 80026F84 80100200 */  sll        $v0, $v0, 2
/* 17788 80026F88 21105100 */  addu       $v0, $v0, $s1
/* 1778C 80026F8C 0000438C */  lw         $v1, 0x0($v0)
/* 17790 80026F90 0980013C */  lui        $at, %hi(gWorld)
/* 17794 80026F94 3C5623AC */  sw         $v1, %lo(gWorld)($at)
/* 17798 80026F98 7163010C */  jal        TextAddStringC
/* 1779C 80026F9C 1000D626 */   addiu     $s6, $s6, 0x10
/* 177A0 80026FA0 01000324 */  addiu      $v1, $zero, 0x1
/* 177A4 80026FA4 5600C317 */  bne        $fp, $v1, .L80027100
/* 177A8 80026FA8 00000000 */   nop
/* 177AC 80026FAC 9007828F */  lw         $v0, %gp_rel(levelexists)($gp)
/* 177B0 80026FB0 00000000 */  nop
/* 177B4 80026FB4 08004010 */  beqz       $v0, .L80026FD8
/* 177B8 80026FB8 DF000424 */   addiu     $a0, $zero, 0xDF
/* 177BC 80026FBC 7C078493 */  lbu        $a0, %gp_rel(HLR)($gp)
/* 177C0 80026FC0 7D078593 */  lbu        $a1, %gp_rel(HLG)($gp)
/* 177C4 80026FC4 7E078693 */  lbu        $a2, %gp_rel(HLB)($gp)
/* 177C8 80026FC8 5363010C */  jal        TextSetTextColor
/* 177CC 80026FCC 00000000 */   nop
/* 177D0 80026FD0 F99B0008 */  j          .L80026FE4
/* 177D4 80026FD4 00000000 */   nop
.L80026FD8:
/* 177D8 80026FD8 21280000 */  addu       $a1, $zero, $zero
/* 177DC 80026FDC 5363010C */  jal        TextSetTextColor
/* 177E0 80026FE0 21300000 */   addu      $a2, $zero, $zero
.L80026FE4:
/* 177E4 80026FE4 0980023C */  lui        $v0, %hi(Trg0)
/* 177E8 80026FE8 30594294 */  lhu        $v0, %lo(Trg0)($v0)
/* 177EC 80026FEC 00000000 */  nop
/* 177F0 80026FF0 80004230 */  andi       $v0, $v0, 0x80
/* 177F4 80026FF4 16004010 */  beqz       $v0, .L80027050
/* 177F8 80026FF8 00000000 */   nop
/* 177FC 80026FFC 900780AF */  sw         $zero, %gp_rel(levelexists)($gp)
/* 17800 80027000 BB5C010C */  jal        FileExist
/* 17804 80027004 2000A427 */   addiu     $a0, $sp, 0x20
/* 17808 80027008 02004018 */  blez       $v0, .L80027014
/* 1780C 8002700C 01000224 */   addiu     $v0, $zero, 0x1
/* 17810 80027010 900782AF */  sw         $v0, %gp_rel(levelexists)($gp)
.L80027014:
/* 17814 80027014 8807838F */  lw         $v1, %gp_rel(gmenulevel)($gp)
/* 17818 80027018 00000000 */  nop
/* 1781C 8002701C FFFF6324 */  addiu      $v1, $v1, -0x1
/* 17820 80027020 0A006104 */  bgez       $v1, .L8002704C
/* 17824 80027024 6C648426 */   addiu     $a0, $s4, %lo(WorldList)
/* 17828 80027028 8407838F */  lw         $v1, %gp_rel(gmenuworld)($gp)
/* 1782C 8002702C 00000000 */  nop
/* 17830 80027030 80100300 */  sll        $v0, $v1, 2
/* 17834 80027034 21104300 */  addu       $v0, $v0, $v1
/* 17838 80027038 80100200 */  sll        $v0, $v0, 2
/* 1783C 8002703C 21208200 */  addu       $a0, $a0, $v0
/* 17840 80027040 0400838C */  lw         $v1, 0x4($a0)
/* 17844 80027044 00000000 */  nop
/* 17848 80027048 FFFF6324 */  addiu      $v1, $v1, -0x1
.L8002704C:
/* 1784C 8002704C 880783AF */  sw         $v1, %gp_rel(gmenulevel)($gp)
.L80027050:
/* 17850 80027050 0980023C */  lui        $v0, %hi(Trg0)
/* 17854 80027054 30594294 */  lhu        $v0, %lo(Trg0)($v0)
/* 17858 80027058 00000000 */  nop
/* 1785C 8002705C 20004230 */  andi       $v0, $v0, 0x20
/* 17860 80027060 15004010 */  beqz       $v0, .L800270B8
/* 17864 80027064 00000000 */   nop
/* 17868 80027068 900780AF */  sw         $zero, %gp_rel(levelexists)($gp)
/* 1786C 8002706C BB5C010C */  jal        FileExist
/* 17870 80027070 2000A427 */   addiu     $a0, $sp, 0x20
/* 17874 80027074 02004018 */  blez       $v0, .L80027080
/* 17878 80027078 01000224 */   addiu     $v0, $zero, 0x1
/* 1787C 8002707C 900782AF */  sw         $v0, %gp_rel(levelexists)($gp)
.L80027080:
/* 17880 80027080 6C648426 */  addiu      $a0, $s4, %lo(WorldList)
/* 17884 80027084 8407838F */  lw         $v1, %gp_rel(gmenuworld)($gp)
/* 17888 80027088 8807858F */  lw         $a1, %gp_rel(gmenulevel)($gp)
/* 1788C 8002708C 80100300 */  sll        $v0, $v1, 2
/* 17890 80027090 21104300 */  addu       $v0, $v0, $v1
/* 17894 80027094 80100200 */  sll        $v0, $v0, 2
/* 17898 80027098 21208200 */  addu       $a0, $a0, $v0
/* 1789C 8002709C 0400838C */  lw         $v1, 0x4($a0)
/* 178A0 800270A0 0100A524 */  addiu      $a1, $a1, 0x1
/* 178A4 800270A4 2A18A300 */  slt        $v1, $a1, $v1
/* 178A8 800270A8 02006014 */  bnez       $v1, .L800270B4
/* 178AC 800270AC 00000000 */   nop
/* 178B0 800270B0 21280000 */  addu       $a1, $zero, $zero
.L800270B4:
/* 178B4 800270B4 880785AF */  sw         $a1, %gp_rel(gmenulevel)($gp)
.L800270B8:
/* 178B8 800270B8 0980023C */  lui        $v0, %hi(Trg0)
/* 178BC 800270BC 30594294 */  lhu        $v0, %lo(Trg0)($v0)
/* 178C0 800270C0 00000000 */  nop
/* 178C4 800270C4 00404230 */  andi       $v0, $v0, 0x4000
/* 178C8 800270C8 1B004010 */  beqz       $v0, .L80027138
/* 178CC 800270CC 0980033C */   lui       $v1, %hi(tempstring)
/* 178D0 800270D0 9007828F */  lw         $v0, %gp_rel(levelexists)($gp)
/* 178D4 800270D4 00000000 */  nop
/* 178D8 800270D8 17004010 */  beqz       $v0, .L80027138
/* 178DC 800270DC 19000424 */   addiu     $a0, $zero, 0x19
/* 178E0 800270E0 21280000 */  addu       $a1, $zero, $zero
/* 178E4 800270E4 6F4A010C */  jal        pxm_sendevent
/* 178E8 800270E8 21300000 */   addu      $a2, $zero, $zero
/* 178EC 800270EC 01000324 */  addiu      $v1, $zero, 0x1
/* 178F0 800270F0 440783AF */  sw         $v1, %gp_rel(MainMenuState)($gp)
/* 178F4 800270F4 480780AF */  sw         $zero, %gp_rel(MainMenuSelection)($gp)
/* 178F8 800270F8 4E9C0008 */  j          .L80027138
/* 178FC 800270FC 0980033C */   lui       $v1, %hi(tempstring)
.L80027100:
/* 17900 80027100 9007828F */  lw         $v0, %gp_rel(levelexists)($gp)
/* 17904 80027104 00000000 */  nop
/* 17908 80027108 06004010 */  beqz       $v0, .L80027124
/* 1790C 8002710C DF000424 */   addiu     $a0, $zero, 0xDF
/* 17910 80027110 DF000524 */  addiu      $a1, $zero, 0xDF
/* 17914 80027114 5363010C */  jal        TextSetTextColor
/* 17918 80027118 DF000624 */   addiu     $a2, $zero, 0xDF
/* 1791C 8002711C 4E9C0008 */  j          .L80027138
/* 17920 80027120 0980033C */   lui       $v1, %hi(tempstring)
.L80027124:
/* 17924 80027124 6F000424 */  addiu      $a0, $zero, 0x6F
/* 17928 80027128 21280000 */  addu       $a1, $zero, $zero
/* 1792C 8002712C 5363010C */  jal        TextSetTextColor
/* 17930 80027130 21300000 */   addu      $a2, $zero, $zero
/* 17934 80027134 0980033C */  lui        $v1, %hi(tempstring)
.L80027138:
/* 17938 80027138 907E7024 */  addiu      $s0, $v1, %lo(tempstring)
/* 1793C 8002713C 21200002 */  addu       $a0, $s0, $zero
/* 17940 80027140 0180053C */  lui        $a1, %hi(D_800115B0)
/* 17944 80027144 B015A524 */  addiu      $a1, $a1, %lo(D_800115B0)
/* 17948 80027148 8407868F */  lw         $a2, %gp_rel(gmenuworld)($gp)
/* 1794C 8002714C 6C648326 */  addiu      $v1, $s4, %lo(WorldList)
/* 17950 80027150 80100600 */  sll        $v0, $a2, 2
/* 17954 80027154 21104600 */  addu       $v0, $v0, $a2
/* 17958 80027158 80100200 */  sll        $v0, $v0, 2
/* 1795C 8002715C 21186200 */  addu       $v1, $v1, $v0
/* 17960 80027160 8807868F */  lw         $a2, %gp_rel(gmenulevel)($gp)
/* 17964 80027164 0400678C */  lw         $a3, 0x4($v1)
/* 17968 80027168 53C5010C */  jal        sprintf
/* 1796C 8002716C 0100C624 */   addiu     $a2, $a2, 0x1
/* 17970 80027170 21200002 */  addu       $a0, $s0, $zero
/* 17974 80027174 A0000524 */  addiu      $a1, $zero, 0xA0
/* 17978 80027178 2130C002 */  addu       $a2, $s6, $zero
/* 1797C 8002717C 01000724 */  addiu      $a3, $zero, 0x1
/* 17980 80027180 8807828F */  lw         $v0, %gp_rel(gmenulevel)($gp)
/* 17984 80027184 0980013C */  lui        $at, %hi(gLevel)
/* 17988 80027188 345622AC */  sw         $v0, %lo(gLevel)($at)
/* 1798C 8002718C 7163010C */  jal        TextAddStringC
/* 17990 80027190 1000D626 */   addiu     $s6, $s6, 0x10
/* 17994 80027194 2110E002 */  addu       $v0, $s7, $zero
.L80027198:
/* 17998 80027198 38005E14 */  bne        $v0, $fp, .L8002727C
/* 1799C 8002719C 0100F726 */   addiu     $s7, $s7, 0x1
/* 179A0 800271A0 21200000 */  addu       $a0, $zero, $zero
/* 179A4 800271A4 7F000524 */  addiu      $a1, $zero, 0x7F
/* 179A8 800271A8 80000624 */  addiu      $a2, $zero, 0x80
/* 179AC 800271AC 20000724 */  addiu      $a3, $zero, 0x20
/* 179B0 800271B0 0980033C */  lui        $v1, %hi(Pad0)
/* 179B4 800271B4 2C596384 */  lh         $v1, %lo(Pad0)($v1)
/* 179B8 800271B8 38078227 */  addiu      $v0, $gp, %gp_rel(MusicVolume)
/* 179BC 800271BC 1400A0AF */  sw         $zero, 0x14($sp)
/* 179C0 800271C0 1800A2AF */  sw         $v0, 0x18($sp)
/* 179C4 800271C4 4649010C */  jal        CheckOption
/* 179C8 800271C8 1000A3AF */   sw        $v1, 0x10($sp)
/* 179CC 800271CC 1C004010 */  beqz       $v0, .L80027240
/* 179D0 800271D0 00000000 */   nop
/* 179D4 800271D4 EBD6010C */  jal        VSync
/* 179D8 800271D8 FFFF0424 */   addiu     $a0, $zero, -0x1
/* 179DC 800271DC 0980033C */  lui        $v1, %hi(Vsync_since_last_sound)
/* 179E0 800271E0 6856638C */  lw         $v1, %lo(Vsync_since_last_sound)($v1)
/* 179E4 800271E4 00000000 */  nop
/* 179E8 800271E8 23104300 */  subu       $v0, $v0, $v1
/* 179EC 800271EC 06004228 */  slti       $v0, $v0, 0x6
/* 179F0 800271F0 0B004010 */  beqz       $v0, .L80027220
/* 179F4 800271F4 00000000 */   nop
/* 179F8 800271F8 0980023C */  lui        $v0, %hi(Trg0)
/* 179FC 800271FC 30594294 */  lhu        $v0, %lo(Trg0)($v0)
/* 17A00 80027200 00000000 */  nop
/* 17A04 80027204 06004014 */  bnez       $v0, .L80027220
/* 17A08 80027208 00000000 */   nop
/* 17A0C 8002720C 0980023C */  lui        $v0, %hi(TrgRel0)
/* 17A10 80027210 18594294 */  lhu        $v0, %lo(TrgRel0)($v0)
/* 17A14 80027214 00000000 */  nop
/* 17A18 80027218 09004010 */  beqz       $v0, .L80027240
/* 17A1C 8002721C 00000000 */   nop
.L80027220:
/* 17A20 80027220 1B000424 */  addiu      $a0, $zero, 0x1B
/* 17A24 80027224 21280000 */  addu       $a1, $zero, $zero
/* 17A28 80027228 6F4A010C */  jal        pxm_sendevent
/* 17A2C 8002722C 21300000 */   addu      $a2, $zero, $zero
/* 17A30 80027230 EBD6010C */  jal        VSync
/* 17A34 80027234 FFFF0424 */   addiu     $a0, $zero, -0x1
/* 17A38 80027238 0980013C */  lui        $at, %hi(Vsync_since_last_sound)
/* 17A3C 8002723C 685622AC */  sw         $v0, %lo(Vsync_since_last_sound)($at)
.L80027240:
/* 17A40 80027240 0980043C */  lui        $a0, %hi(atv)
/* 17A44 80027244 08588424 */  addiu      $a0, $a0, %lo(atv)
/* 17A48 80027248 3807838F */  lw         $v1, %gp_rel(MusicVolume)($gp)
/* 17A4C 8002724C 0A80023C */  lui        $v0, %hi(pxm_mix)
/* 17A50 80027250 21286000 */  addu       $a1, $v1, $zero
/* 17A54 80027254 C87F43AC */  sw         $v1, %lo(pxm_mix)($v0)
/* 17A58 80027258 2BCD000C */  jal        cdSetVol
/* 17A5C 8002725C 00000000 */   nop
/* 17A60 80027260 7C078493 */  lbu        $a0, %gp_rel(HLR)($gp)
/* 17A64 80027264 7D078593 */  lbu        $a1, %gp_rel(HLG)($gp)
/* 17A68 80027268 7E078693 */  lbu        $a2, %gp_rel(HLB)($gp)
/* 17A6C 8002726C 5363010C */  jal        TextSetTextColor
/* 17A70 80027270 00000000 */   nop
/* 17A74 80027274 A49C0008 */  j          .L80027290
/* 17A78 80027278 80000524 */   addiu     $a1, $zero, 0x80
.L8002727C:
/* 17A7C 8002727C DF000424 */  addiu      $a0, $zero, 0xDF
/* 17A80 80027280 DF000524 */  addiu      $a1, $zero, 0xDF
/* 17A84 80027284 5363010C */  jal        TextSetTextColor
/* 17A88 80027288 DF000624 */   addiu     $a2, $zero, 0xDF
/* 17A8C 8002728C 80000524 */  addiu      $a1, $zero, 0x80
.L80027290:
/* 17A90 80027290 2130C002 */  addu       $a2, $s6, $zero
/* 17A94 80027294 01000724 */  addiu      $a3, $zero, 0x1
/* 17A98 80027298 0880043C */  lui        $a0, %hi(MainMenu_Ambience)
/* 17A9C 8002729C 0980023C */  lui        $v0, %hi(gLanguage)
/* 17AA0 800272A0 7C56428C */  lw         $v0, %lo(gLanguage)($v0)
/* 17AA4 800272A4 B0638324 */  addiu      $v1, $a0, %lo(MainMenu_Ambience)
/* 17AA8 800272A8 80100200 */  sll        $v0, $v0, 2
/* 17AAC 800272AC 21104300 */  addu       $v0, $v0, $v1
/* 17AB0 800272B0 0000448C */  lw         $a0, 0x0($v0)
/* 17AB4 800272B4 7163010C */  jal        TextAddStringC
/* 17AB8 800272B8 1000D626 */   addiu     $s6, $s6, 0x10
/* 17ABC 800272BC 0980023C */  lui        $v0, %hi(D_80094A40)
/* 17AC0 800272C0 5963010C */  jal        StringWidth
/* 17AC4 800272C4 404A4424 */   addiu     $a0, $v0, %lo(D_80094A40)
/* 17AC8 800272C8 C21F0200 */  srl        $v1, $v0, 31
/* 17ACC 800272CC 21186200 */  addu       $v1, $v1, $v0
/* 17AD0 800272D0 43180300 */  sra        $v1, $v1, 1
/* 17AD4 800272D4 84006824 */  addiu      $t0, $v1, 0x84
/* 17AD8 800272D8 F87EA326 */  addiu      $v1, $s5, %lo(AudioSliders)
/* 17ADC 800272DC 0980023C */  lui        $v0, %hi(ot_ndx)
/* 17AE0 800272E0 4853428C */  lw         $v0, %lo(ot_ndx)($v0)
/* 17AE4 800272E4 3807868F */  lw         $a2, %gp_rel(MusicVolume)($gp)
/* 17AE8 800272E8 3007858F */  lw         $a1, %gp_rel(SliderWidth)($gp)
/* 17AEC 800272EC C0200200 */  sll        $a0, $v0, 3
/* 17AF0 800272F0 21208200 */  addu       $a0, $a0, $v0
/* 17AF4 800272F4 1800A600 */  mult       $a1, $a2
/* 17AF8 800272F8 80200400 */  sll        $a0, $a0, 2
/* 17AFC 800272FC 21388300 */  addu       $a3, $a0, $v1
/* 17B00 80027300 34078297 */  lhu        $v0, %gp_rel(SliderHeight)($gp)
/* 17B04 80027304 FAFFC326 */  addiu      $v1, $s6, -0x6
/* 17B08 80027308 2200E3A4 */  sh         $v1, 0x22($a3)
/* 17B0C 8002730C 1A00E3A4 */  sh         $v1, 0x1A($a3)
/* 17B10 80027310 0800E8A4 */  sh         $t0, 0x8($a3)
/* 17B14 80027314 1800E8A4 */  sh         $t0, 0x18($a3)
/* 17B18 80027318 23106200 */  subu       $v0, $v1, $v0
/* 17B1C 8002731C 1200E2A4 */  sh         $v0, 0x12($a3)
/* 17B20 80027320 0A00E2A4 */  sh         $v0, 0xA($a3)
/* 17B24 80027324 12280000 */  mflo       $a1
/* 17B28 80027328 C3290500 */  sra        $a1, $a1, 7
/* 17B2C 8002732C 21280501 */  addu       $a1, $t0, $a1
/* 17B30 80027330 1000E5A4 */  sh         $a1, 0x10($a3)
/* 17B34 80027334 2000E5A4 */  sh         $a1, 0x20($a3)
/* 17B38 80027338 8877628E */  lw         $v0, %lo(g_nt3 + 0x50)($s3)
/* 17B3C 8002733C 00000000 */  nop
/* 17B40 80027340 09004010 */  beqz       $v0, .L80027368
/* 17B44 80027344 88776326 */   addiu     $v1, $s3, %lo(g_nt3 + 0x50)
/* 17B48 80027348 02006388 */  lwl        $v1, 0x2($v1)
/* 17B4C 8002734C 8877628E */  lw         $v0, %lo(g_nt3 + 0x50)($s3)
/* 17B50 80027350 00000000 */  nop
/* 17B54 80027354 00120200 */  sll        $v0, $v0, 8
/* 17B58 80027358 0200E2A8 */  swl        $v0, 0x2($a3)
/* 17B5C 8002735C 0200E3A8 */  swl        $v1, 0x2($a3)
/* 17B60 80027360 DB9C0008 */  j          .L8002736C
/* 17B64 80027364 00000000 */   nop
.L80027368:
/* 17B68 80027368 040067AC */  sw         $a3, 0x4($v1)
.L8002736C:
/* 17B6C 8002736C 0980033C */  lui        $v1, %hi(ot_ndx)
/* 17B70 80027370 4853638C */  lw         $v1, %lo(ot_ndx)($v1)
/* 17B74 80027374 3007848F */  lw         $a0, %gp_rel(SliderWidth)($gp)
/* 17B78 80027378 7F000524 */  addiu      $a1, $zero, 0x7F
/* 17B7C 8002737C 887767AE */  sw         $a3, %lo(g_nt3 + 0x50)($s3)
/* 17B80 80027380 C0100300 */  sll        $v0, $v1, 3
/* 17B84 80027384 21104300 */  addu       $v0, $v0, $v1
/* 17B88 80027388 80100200 */  sll        $v0, $v0, 2
/* 17B8C 8002738C F87EA326 */  addiu      $v1, $s5, %lo(AudioSliders)
/* 17B90 80027390 21104300 */  addu       $v0, $v0, $v1
/* 17B94 80027394 18008500 */  mult       $a0, $a1
/* 17B98 80027398 90004624 */  addiu      $a2, $v0, 0x90
/* 17B9C 8002739C 34078397 */  lhu        $v1, %gp_rel(SliderHeight)($gp)
/* 17BA0 800273A0 FAFFC226 */  addiu      $v0, $s6, -0x6
/* 17BA4 800273A4 2200C2A4 */  sh         $v0, 0x22($a2)
/* 17BA8 800273A8 1A00C2A4 */  sh         $v0, 0x1A($a2)
/* 17BAC 800273AC 0800C8A4 */  sh         $t0, 0x8($a2)
/* 17BB0 800273B0 1800C8A4 */  sh         $t0, 0x18($a2)
/* 17BB4 800273B4 23184300 */  subu       $v1, $v0, $v1
/* 17BB8 800273B8 88776226 */  addiu      $v0, $s3, %lo(g_nt3 + 0x50)
/* 17BBC 800273BC 1200C3A4 */  sh         $v1, 0x12($a2)
/* 17BC0 800273C0 0A00C3A4 */  sh         $v1, 0xA($a2)
/* 17BC4 800273C4 12200000 */  mflo       $a0
/* 17BC8 800273C8 C3210400 */  sra        $a0, $a0, 7
/* 17BCC 800273CC 21200401 */  addu       $a0, $t0, $a0
/* 17BD0 800273D0 1000C4A4 */  sh         $a0, 0x10($a2)
/* 17BD4 800273D4 0900E010 */  beqz       $a3, .L800273FC
/* 17BD8 800273D8 2000C4A4 */   sh        $a0, 0x20($a2)
/* 17BDC 800273DC 02004388 */  lwl        $v1, 0x2($v0)
/* 17BE0 800273E0 8877628E */  lw         $v0, %lo(g_nt3 + 0x50)($s3)
/* 17BE4 800273E4 00000000 */  nop
/* 17BE8 800273E8 00120200 */  sll        $v0, $v0, 8
/* 17BEC 800273EC 0200C2A8 */  swl        $v0, 0x2($a2)
/* 17BF0 800273F0 0200C3A8 */  swl        $v1, 0x2($a2)
/* 17BF4 800273F4 019D0008 */  j          .L80027404
/* 17BF8 800273F8 887766AE */   sw        $a2, %lo(g_nt3 + 0x50)($s3)
.L800273FC:
/* 17BFC 800273FC 040046AC */  sw         $a2, 0x4($v0)
/* 17C00 80027400 887766AE */  sw         $a2, %lo(g_nt3 + 0x50)($s3)
.L80027404:
/* 17C04 80027404 2110E002 */  addu       $v0, $s7, $zero
/* 17C08 80027408 33005E14 */  bne        $v0, $fp, .L800274D8
/* 17C0C 8002740C 0100F726 */   addiu     $s7, $s7, 0x1
/* 17C10 80027410 21200000 */  addu       $a0, $zero, $zero
/* 17C14 80027414 7F000524 */  addiu      $a1, $zero, 0x7F
/* 17C18 80027418 80000624 */  addiu      $a2, $zero, 0x80
/* 17C1C 8002741C 20000724 */  addiu      $a3, $zero, 0x20
/* 17C20 80027420 0980033C */  lui        $v1, %hi(Pad0)
/* 17C24 80027424 2C596384 */  lh         $v1, %lo(Pad0)($v1)
/* 17C28 80027428 3C078227 */  addiu      $v0, $gp, %gp_rel(EffectsVolume)
/* 17C2C 8002742C 1400A0AF */  sw         $zero, 0x14($sp)
/* 17C30 80027430 1800A2AF */  sw         $v0, 0x18($sp)
/* 17C34 80027434 4649010C */  jal        CheckOption
/* 17C38 80027438 1000A3AF */   sw        $v1, 0x10($sp)
/* 17C3C 8002743C 1F004010 */  beqz       $v0, .L800274BC
/* 17C40 80027440 0A80023C */   lui       $v0, %hi(pxm_mix)
/* 17C44 80027444 FFFF0424 */  addiu      $a0, $zero, -0x1
/* 17C48 80027448 3C07838F */  lw         $v1, %gp_rel(EffectsVolume)($gp)
/* 17C4C 8002744C C87F4224 */  addiu      $v0, $v0, %lo(pxm_mix)
/* 17C50 80027450 040043AC */  sw         $v1, 0x4($v0)
/* 17C54 80027454 EBD6010C */  jal        VSync
/* 17C58 80027458 00000000 */   nop
/* 17C5C 8002745C 0980033C */  lui        $v1, %hi(Vsync_since_last_sound)
/* 17C60 80027460 6856638C */  lw         $v1, %lo(Vsync_since_last_sound)($v1)
/* 17C64 80027464 00000000 */  nop
/* 17C68 80027468 23104300 */  subu       $v0, $v0, $v1
/* 17C6C 8002746C 06004228 */  slti       $v0, $v0, 0x6
/* 17C70 80027470 0B004010 */  beqz       $v0, .L800274A0
/* 17C74 80027474 1B000424 */   addiu     $a0, $zero, 0x1B
/* 17C78 80027478 0980023C */  lui        $v0, %hi(Trg0)
/* 17C7C 8002747C 30594294 */  lhu        $v0, %lo(Trg0)($v0)
/* 17C80 80027480 00000000 */  nop
/* 17C84 80027484 07004014 */  bnez       $v0, .L800274A4
/* 17C88 80027488 21280000 */   addu      $a1, $zero, $zero
/* 17C8C 8002748C 0980023C */  lui        $v0, %hi(TrgRel0)
/* 17C90 80027490 18594294 */  lhu        $v0, %lo(TrgRel0)($v0)
/* 17C94 80027494 00000000 */  nop
/* 17C98 80027498 08004010 */  beqz       $v0, .L800274BC
/* 17C9C 8002749C 00000000 */   nop
.L800274A0:
/* 17CA0 800274A0 21280000 */  addu       $a1, $zero, $zero
.L800274A4:
/* 17CA4 800274A4 6F4A010C */  jal        pxm_sendevent
/* 17CA8 800274A8 21300000 */   addu      $a2, $zero, $zero
/* 17CAC 800274AC EBD6010C */  jal        VSync
/* 17CB0 800274B0 FFFF0424 */   addiu     $a0, $zero, -0x1
/* 17CB4 800274B4 0980013C */  lui        $at, %hi(Vsync_since_last_sound)
/* 17CB8 800274B8 685622AC */  sw         $v0, %lo(Vsync_since_last_sound)($at)
.L800274BC:
/* 17CBC 800274BC 7C078493 */  lbu        $a0, %gp_rel(HLR)($gp)
/* 17CC0 800274C0 7D078593 */  lbu        $a1, %gp_rel(HLG)($gp)
/* 17CC4 800274C4 7E078693 */  lbu        $a2, %gp_rel(HLB)($gp)
/* 17CC8 800274C8 5363010C */  jal        TextSetTextColor
/* 17CCC 800274CC 00000000 */   nop
/* 17CD0 800274D0 3B9D0008 */  j          .L800274EC
/* 17CD4 800274D4 80000524 */   addiu     $a1, $zero, 0x80
.L800274D8:
/* 17CD8 800274D8 DF000424 */  addiu      $a0, $zero, 0xDF
/* 17CDC 800274DC DF000524 */  addiu      $a1, $zero, 0xDF
/* 17CE0 800274E0 5363010C */  jal        TextSetTextColor
/* 17CE4 800274E4 DF000624 */   addiu     $a2, $zero, 0xDF
/* 17CE8 800274E8 80000524 */  addiu      $a1, $zero, 0x80
.L800274EC:
/* 17CEC 800274EC 2130C002 */  addu       $a2, $s6, $zero
/* 17CF0 800274F0 01000724 */  addiu      $a3, $zero, 0x1
/* 17CF4 800274F4 0880043C */  lui        $a0, %hi(MainMenu_Sound)
/* 17CF8 800274F8 0980023C */  lui        $v0, %hi(gLanguage)
/* 17CFC 800274FC 7C56428C */  lw         $v0, %lo(gLanguage)($v0)
/* 17D00 80027500 C4638324 */  addiu      $v1, $a0, %lo(MainMenu_Sound)
/* 17D04 80027504 80100200 */  sll        $v0, $v0, 2
/* 17D08 80027508 21104300 */  addu       $v0, $v0, $v1
/* 17D0C 8002750C 0000448C */  lw         $a0, 0x0($v0)
/* 17D10 80027510 7163010C */  jal        TextAddStringC
/* 17D14 80027514 1000D626 */   addiu     $s6, $s6, 0x10
/* 17D18 80027518 0980023C */  lui        $v0, %hi(D_80094A48)
/* 17D1C 8002751C 5963010C */  jal        StringWidth
/* 17D20 80027520 484A4424 */   addiu     $a0, $v0, %lo(D_80094A48)
/* 17D24 80027524 C21F0200 */  srl        $v1, $v0, 31
/* 17D28 80027528 21186200 */  addu       $v1, $v1, $v0
/* 17D2C 8002752C 43180300 */  sra        $v1, $v1, 1
/* 17D30 80027530 84006824 */  addiu      $t0, $v1, 0x84
/* 17D34 80027534 F87EA326 */  addiu      $v1, $s5, %lo(AudioSliders)
/* 17D38 80027538 0980043C */  lui        $a0, %hi(ot_ndx)
/* 17D3C 8002753C 4853848C */  lw         $a0, %lo(ot_ndx)($a0)
/* 17D40 80027540 3C07858F */  lw         $a1, %gp_rel(EffectsVolume)($gp)
/* 17D44 80027544 C0100400 */  sll        $v0, $a0, 3
/* 17D48 80027548 21104400 */  addu       $v0, $v0, $a0
/* 17D4C 8002754C 3007848F */  lw         $a0, %gp_rel(SliderWidth)($gp)
/* 17D50 80027550 80100200 */  sll        $v0, $v0, 2
/* 17D54 80027554 18008500 */  mult       $a0, $a1
/* 17D58 80027558 21104300 */  addu       $v0, $v0, $v1
/* 17D5C 8002755C 48004724 */  addiu      $a3, $v0, 0x48
/* 17D60 80027560 34078397 */  lhu        $v1, %gp_rel(SliderHeight)($gp)
/* 17D64 80027564 FAFFC226 */  addiu      $v0, $s6, -0x6
/* 17D68 80027568 2200E2A4 */  sh         $v0, 0x22($a3)
/* 17D6C 8002756C 1A00E2A4 */  sh         $v0, 0x1A($a3)
/* 17D70 80027570 0800E8A4 */  sh         $t0, 0x8($a3)
/* 17D74 80027574 1800E8A4 */  sh         $t0, 0x18($a3)
/* 17D78 80027578 23184300 */  subu       $v1, $v0, $v1
/* 17D7C 8002757C 1200E3A4 */  sh         $v1, 0x12($a3)
/* 17D80 80027580 0A00E3A4 */  sh         $v1, 0xA($a3)
/* 17D84 80027584 12200000 */  mflo       $a0
/* 17D88 80027588 C3210400 */  sra        $a0, $a0, 7
/* 17D8C 8002758C 21200401 */  addu       $a0, $t0, $a0
/* 17D90 80027590 1000E4A4 */  sh         $a0, 0x10($a3)
/* 17D94 80027594 2000E4A4 */  sh         $a0, 0x20($a3)
/* 17D98 80027598 8877628E */  lw         $v0, %lo(g_nt3 + 0x50)($s3)
/* 17D9C 8002759C 00000000 */  nop
/* 17DA0 800275A0 09004010 */  beqz       $v0, .L800275C8
/* 17DA4 800275A4 88776326 */   addiu     $v1, $s3, %lo(g_nt3 + 0x50)
/* 17DA8 800275A8 02006388 */  lwl        $v1, 0x2($v1)
/* 17DAC 800275AC 8877628E */  lw         $v0, %lo(g_nt3 + 0x50)($s3)
/* 17DB0 800275B0 00000000 */  nop
/* 17DB4 800275B4 00120200 */  sll        $v0, $v0, 8
/* 17DB8 800275B8 0200E2A8 */  swl        $v0, 0x2($a3)
/* 17DBC 800275BC 0200E3A8 */  swl        $v1, 0x2($a3)
/* 17DC0 800275C0 739D0008 */  j          .L800275CC
/* 17DC4 800275C4 00000000 */   nop
.L800275C8:
/* 17DC8 800275C8 040067AC */  sw         $a3, 0x4($v1)
.L800275CC:
/* 17DCC 800275CC 0980033C */  lui        $v1, %hi(ot_ndx)
/* 17DD0 800275D0 4853638C */  lw         $v1, %lo(ot_ndx)($v1)
/* 17DD4 800275D4 3007848F */  lw         $a0, %gp_rel(SliderWidth)($gp)
/* 17DD8 800275D8 7F000524 */  addiu      $a1, $zero, 0x7F
/* 17DDC 800275DC 887767AE */  sw         $a3, %lo(g_nt3 + 0x50)($s3)
/* 17DE0 800275E0 C0100300 */  sll        $v0, $v1, 3
/* 17DE4 800275E4 21104300 */  addu       $v0, $v0, $v1
/* 17DE8 800275E8 80100200 */  sll        $v0, $v0, 2
/* 17DEC 800275EC F87EA326 */  addiu      $v1, $s5, %lo(AudioSliders)
/* 17DF0 800275F0 21104300 */  addu       $v0, $v0, $v1
/* 17DF4 800275F4 18008500 */  mult       $a0, $a1
/* 17DF8 800275F8 D8004624 */  addiu      $a2, $v0, 0xD8
/* 17DFC 800275FC 34078397 */  lhu        $v1, %gp_rel(SliderHeight)($gp)
/* 17E00 80027600 FAFFC226 */  addiu      $v0, $s6, -0x6
/* 17E04 80027604 2200C2A4 */  sh         $v0, 0x22($a2)
/* 17E08 80027608 1A00C2A4 */  sh         $v0, 0x1A($a2)
/* 17E0C 8002760C 0800C8A4 */  sh         $t0, 0x8($a2)
/* 17E10 80027610 1800C8A4 */  sh         $t0, 0x18($a2)
/* 17E14 80027614 23184300 */  subu       $v1, $v0, $v1
/* 17E18 80027618 88776226 */  addiu      $v0, $s3, %lo(g_nt3 + 0x50)
/* 17E1C 8002761C 1200C3A4 */  sh         $v1, 0x12($a2)
/* 17E20 80027620 0A00C3A4 */  sh         $v1, 0xA($a2)
/* 17E24 80027624 12200000 */  mflo       $a0
/* 17E28 80027628 C3210400 */  sra        $a0, $a0, 7
/* 17E2C 8002762C 21200401 */  addu       $a0, $t0, $a0
/* 17E30 80027630 1000C4A4 */  sh         $a0, 0x10($a2)
/* 17E34 80027634 0900E010 */  beqz       $a3, .L8002765C
/* 17E38 80027638 2000C4A4 */   sh        $a0, 0x20($a2)
/* 17E3C 8002763C 02004388 */  lwl        $v1, 0x2($v0)
/* 17E40 80027640 8877628E */  lw         $v0, %lo(g_nt3 + 0x50)($s3)
/* 17E44 80027644 00000000 */  nop
/* 17E48 80027648 00120200 */  sll        $v0, $v0, 8
/* 17E4C 8002764C 0200C2A8 */  swl        $v0, 0x2($a2)
/* 17E50 80027650 0200C3A8 */  swl        $v1, 0x2($a2)
/* 17E54 80027654 999D0008 */  j          .L80027664
/* 17E58 80027658 887766AE */   sw        $a2, %lo(g_nt3 + 0x50)($s3)
.L8002765C:
/* 17E5C 8002765C 040046AC */  sw         $a2, 0x4($v0)
/* 17E60 80027660 887766AE */  sw         $a2, %lo(g_nt3 + 0x50)($s3)
.L80027664:
/* 17E64 80027664 5266010C */  jal        Sys_CanPadVibrate
/* 17E68 80027668 21200000 */   addu      $a0, $zero, $zero
/* 17E6C 8002766C FFFF5130 */  andi       $s1, $v0, 0xFFFF
/* 17E70 80027670 02002016 */  bnez       $s1, .L8002767C
/* 17E74 80027674 2110E002 */   addu      $v0, $s7, $zero
/* 17E78 80027678 600780AF */  sw         $zero, %gp_rel(gMenuRumbleFlag)($gp)
.L8002767C:
/* 17E7C 8002767C 18005E14 */  bne        $v0, $fp, .L800276E0
/* 17E80 80027680 0100F726 */   addiu     $s7, $s7, 0x1
/* 17E84 80027684 7C078493 */  lbu        $a0, %gp_rel(HLR)($gp)
/* 17E88 80027688 7D078593 */  lbu        $a1, %gp_rel(HLG)($gp)
/* 17E8C 8002768C 7E078693 */  lbu        $a2, %gp_rel(HLB)($gp)
/* 17E90 80027690 5363010C */  jal        TextSetTextColor
/* 17E94 80027694 00000000 */   nop
/* 17E98 80027698 21200000 */  addu       $a0, $zero, $zero
/* 17E9C 8002769C 02000524 */  addiu      $a1, $zero, 0x2
/* 17EA0 800276A0 80000624 */  addiu      $a2, $zero, 0x80
/* 17EA4 800276A4 20000724 */  addiu      $a3, $zero, 0x20
/* 17EA8 800276A8 0980033C */  lui        $v1, %hi(Trg0)
/* 17EAC 800276AC 30596384 */  lh         $v1, %lo(Trg0)($v1)
/* 17EB0 800276B0 60078227 */  addiu      $v0, $gp, %gp_rel(gMenuRumbleFlag)
/* 17EB4 800276B4 1400A0AF */  sw         $zero, 0x14($sp)
/* 17EB8 800276B8 1800A2AF */  sw         $v0, 0x18($sp)
/* 17EBC 800276BC 4649010C */  jal        CheckOption
/* 17EC0 800276C0 1000A3AF */   sw        $v1, 0x10($sp)
/* 17EC4 800276C4 0A004010 */  beqz       $v0, .L800276F0
/* 17EC8 800276C8 18000424 */   addiu     $a0, $zero, 0x18
/* 17ECC 800276CC 21280000 */  addu       $a1, $zero, $zero
/* 17ED0 800276D0 6F4A010C */  jal        pxm_sendevent
/* 17ED4 800276D4 21300000 */   addu      $a2, $zero, $zero
/* 17ED8 800276D8 BC9D0008 */  j          .L800276F0
/* 17EDC 800276DC 00000000 */   nop
.L800276E0:
/* 17EE0 800276E0 DF000424 */  addiu      $a0, $zero, 0xDF
/* 17EE4 800276E4 DF000524 */  addiu      $a1, $zero, 0xDF
/* 17EE8 800276E8 5363010C */  jal        TextSetTextColor
/* 17EEC 800276EC DF000624 */   addiu     $a2, $zero, 0xDF
.L800276F0:
/* 17EF0 800276F0 04002016 */  bnez       $s1, .L80027704
/* 17EF4 800276F4 40000424 */   addiu     $a0, $zero, 0x40
/* 17EF8 800276F8 40000524 */  addiu      $a1, $zero, 0x40
/* 17EFC 800276FC 5363010C */  jal        TextSetTextColor
/* 17F00 80027700 40000624 */   addiu     $a2, $zero, 0x40
.L80027704:
/* 17F04 80027704 6007828F */  lw         $v0, %gp_rel(gMenuRumbleFlag)($gp)
/* 17F08 80027708 00000000 */  nop
/* 17F0C 8002770C 0C004010 */  beqz       $v0, .L80027740
/* 17F10 80027710 0880033C */   lui       $v1, %hi(MainMenu_Vibration_On)
/* 17F14 80027714 0980023C */  lui        $v0, %hi(gLanguage)
/* 17F18 80027718 7C56428C */  lw         $v0, %lo(gLanguage)($v0)
/* 17F1C 8002771C 4C636324 */  addiu      $v1, $v1, %lo(MainMenu_Vibration_On)
/* 17F20 80027720 80100200 */  sll        $v0, $v0, 2
/* 17F24 80027724 21104300 */  addu       $v0, $v0, $v1
/* 17F28 80027728 0000458C */  lw         $a1, 0x0($v0)
/* 17F2C 8002772C 0980023C */  lui        $v0, %hi(tempstring)
/* 17F30 80027730 53C5010C */  jal        sprintf
/* 17F34 80027734 907E4424 */   addiu     $a0, $v0, %lo(tempstring)
/* 17F38 80027738 DB9D0008 */  j          .L8002776C
/* 17F3C 8002773C 0980023C */   lui       $v0, %hi(tempstring)
.L80027740:
/* 17F40 80027740 0880033C */  lui        $v1, %hi(MainMenu_Vibration_Off)
/* 17F44 80027744 0980023C */  lui        $v0, %hi(gLanguage)
/* 17F48 80027748 7C56428C */  lw         $v0, %lo(gLanguage)($v0)
/* 17F4C 8002774C 60636324 */  addiu      $v1, $v1, %lo(MainMenu_Vibration_Off)
/* 17F50 80027750 80100200 */  sll        $v0, $v0, 2
/* 17F54 80027754 21104300 */  addu       $v0, $v0, $v1
/* 17F58 80027758 0980033C */  lui        $v1, %hi(tempstring)
/* 17F5C 8002775C 0000458C */  lw         $a1, 0x0($v0)
/* 17F60 80027760 53C5010C */  jal        sprintf
/* 17F64 80027764 907E6424 */   addiu     $a0, $v1, %lo(tempstring)
/* 17F68 80027768 0980023C */  lui        $v0, %hi(tempstring)
.L8002776C:
/* 17F6C 8002776C 907E4424 */  addiu      $a0, $v0, %lo(tempstring)
/* 17F70 80027770 A0000524 */  addiu      $a1, $zero, 0xA0
/* 17F74 80027774 2130C002 */  addu       $a2, $s6, $zero
/* 17F78 80027778 7163010C */  jal        TextAddStringC
/* 17F7C 8002777C 01000724 */   addiu     $a3, $zero, 0x1
/* 17F80 80027780 2407838F */  lw         $v1, %gp_rel(SCG_CREDITS)($gp)
/* 17F84 80027784 00000000 */  nop
/* 17F88 80027788 31006010 */  beqz       $v1, .L80027850
/* 17F8C 8002778C 1000D626 */   addiu     $s6, $s6, 0x10
/* 17F90 80027790 1800FE16 */  bne        $s7, $fp, .L800277F4
/* 17F94 80027794 DF000424 */   addiu     $a0, $zero, 0xDF
/* 17F98 80027798 7C078493 */  lbu        $a0, %gp_rel(HLR)($gp)
/* 17F9C 8002779C 7D078593 */  lbu        $a1, %gp_rel(HLG)($gp)
/* 17FA0 800277A0 7E078693 */  lbu        $a2, %gp_rel(HLB)($gp)
/* 17FA4 800277A4 5363010C */  jal        TextSetTextColor
/* 17FA8 800277A8 00000000 */   nop
/* 17FAC 800277AC 0980033C */  lui        $v1, %hi(Trg0)
/* 17FB0 800277B0 30596394 */  lhu        $v1, %lo(Trg0)($v1)
/* 17FB4 800277B4 00000000 */  nop
/* 17FB8 800277B8 00406330 */  andi       $v1, $v1, 0x4000
/* 17FBC 800277BC 11006010 */  beqz       $v1, .L80027804
/* 17FC0 800277C0 0980033C */   lui       $v1, %hi(tempstring)
/* 17FC4 800277C4 9007828F */  lw         $v0, %gp_rel(levelexists)($gp)
/* 17FC8 800277C8 00000000 */  nop
/* 17FCC 800277CC 0D004010 */  beqz       $v0, .L80027804
/* 17FD0 800277D0 19000424 */   addiu     $a0, $zero, 0x19
/* 17FD4 800277D4 21280000 */  addu       $a1, $zero, $zero
/* 17FD8 800277D8 6F4A010C */  jal        pxm_sendevent
/* 17FDC 800277DC 21300000 */   addu      $a2, $zero, $zero
/* 17FE0 800277E0 05000324 */  addiu      $v1, $zero, 0x5
/* 17FE4 800277E4 440783AF */  sw         $v1, %gp_rel(MainMenuState)($gp)
/* 17FE8 800277E8 480780AF */  sw         $zero, %gp_rel(MainMenuSelection)($gp)
/* 17FEC 800277EC 019E0008 */  j          .L80027804
/* 17FF0 800277F0 0980033C */   lui       $v1, %hi(tempstring)
.L800277F4:
/* 17FF4 800277F4 DF000524 */  addiu      $a1, $zero, 0xDF
/* 17FF8 800277F8 5363010C */  jal        TextSetTextColor
/* 17FFC 800277FC DF000624 */   addiu     $a2, $zero, 0xDF
/* 18000 80027800 0980033C */  lui        $v1, %hi(tempstring)
.L80027804:
/* 18004 80027804 907E7024 */  addiu      $s0, $v1, %lo(tempstring)
/* 18008 80027808 21200002 */  addu       $a0, $s0, $zero
/* 1800C 8002780C 0980053C */  lui        $a1, %hi(D_80094A50)
/* 18010 80027810 504AA524 */  addiu      $a1, $a1, %lo(D_80094A50)
/* 18014 80027814 8407868F */  lw         $a2, %gp_rel(gmenuworld)($gp)
/* 18018 80027818 6C648326 */  addiu      $v1, $s4, %lo(WorldList)
/* 1801C 8002781C 80100600 */  sll        $v0, $a2, 2
/* 18020 80027820 21104600 */  addu       $v0, $v0, $a2
/* 18024 80027824 80100200 */  sll        $v0, $v0, 2
/* 18028 80027828 21186200 */  addu       $v1, $v1, $v0
/* 1802C 8002782C 8807868F */  lw         $a2, %gp_rel(gmenulevel)($gp)
/* 18030 80027830 0400678C */  lw         $a3, 0x4($v1)
/* 18034 80027834 53C5010C */  jal        sprintf
/* 18038 80027838 0100C624 */   addiu     $a2, $a2, 0x1
/* 1803C 8002783C 21200002 */  addu       $a0, $s0, $zero
/* 18040 80027840 A0000524 */  addiu      $a1, $zero, 0xA0
/* 18044 80027844 2130C002 */  addu       $a2, $s6, $zero
/* 18048 80027848 7163010C */  jal        TextAddStringC
/* 1804C 8002784C 01000724 */   addiu     $a3, $zero, 0x1
.L80027850:
/* 18050 80027850 08002012 */  beqz       $s1, .L80027874
/* 18054 80027854 0300023C */   lui       $v0, (0x38B83 >> 16)
/* 18058 80027858 838B4234 */  ori        $v0, $v0, (0x38B83 & 0xFFFF)
/* 1805C 8002785C 7407838F */  lw         $v1, %gp_rel(LevelCheat)($gp)
/* 18060 80027860 00000000 */  nop
/* 18064 80027864 09006214 */  bne        $v1, $v0, .L8002788C
/* 18068 80027868 03000524 */   addiu     $a1, $zero, 0x3
/* 1806C 8002786C 239E0008 */  j          .L8002788C
/* 18070 80027870 05000524 */   addiu     $a1, $zero, 0x5
.L80027874:
/* 18074 80027874 838B4234 */  ori        $v0, $v0, (0x38B83 & 0xFFFF)
/* 18078 80027878 7407838F */  lw         $v1, %gp_rel(LevelCheat)($gp)
/* 1807C 8002787C 00000000 */  nop
/* 18080 80027880 02006214 */  bne        $v1, $v0, .L8002788C
/* 18084 80027884 02000524 */   addiu     $a1, $zero, 0x2
/* 18088 80027888 04000524 */  addiu      $a1, $zero, 0x4
.L8002788C:
/* 1808C 8002788C 2407828F */  lw         $v0, %gp_rel(SCG_CREDITS)($gp)
/* 18090 80027890 00000000 */  nop
/* 18094 80027894 02004010 */  beqz       $v0, .L800278A0
/* 18098 80027898 21200000 */   addu      $a0, $zero, $zero
/* 1809C 8002789C 0100A524 */  addiu      $a1, $a1, 0x1
.L800278A0:
/* 180A0 800278A0 10000624 */  addiu      $a2, $zero, 0x10
/* 180A4 800278A4 40000724 */  addiu      $a3, $zero, 0x40
/* 180A8 800278A8 0980023C */  lui        $v0, %hi(Trg0)
/* 180AC 800278AC 30594284 */  lh         $v0, %lo(Trg0)($v0)
/* 180B0 800278B0 48078327 */  addiu      $v1, $gp, %gp_rel(MainMenuSelection)
/* 180B4 800278B4 1400A0AF */  sw         $zero, 0x14($sp)
/* 180B8 800278B8 1800A3AF */  sw         $v1, 0x18($sp)
/* 180BC 800278BC 4649010C */  jal        CheckOption
/* 180C0 800278C0 1000A2AF */   sw        $v0, 0x10($sp)
/* 180C4 800278C4 04004010 */  beqz       $v0, .L800278D8
/* 180C8 800278C8 16000424 */   addiu     $a0, $zero, 0x16
/* 180CC 800278CC 21280000 */  addu       $a1, $zero, $zero
/* 180D0 800278D0 6F4A010C */  jal        pxm_sendevent
/* 180D4 800278D4 21300000 */   addu      $a2, $zero, $zero
.L800278D8:
/* 180D8 800278D8 0980023C */  lui        $v0, %hi(Trg0)
/* 180DC 800278DC 30594294 */  lhu        $v0, %lo(Trg0)($v0)
/* 180E0 800278E0 00000000 */  nop
/* 180E4 800278E4 00104230 */  andi       $v0, $v0, 0x1000
/* 180E8 800278E8 1A004010 */  beqz       $v0, .L80027954
/* 180EC 800278EC 21280000 */   addu      $a1, $zero, $zero
/* 180F0 800278F0 1A000424 */  addiu      $a0, $zero, 0x1A
/* 180F4 800278F4 6F4A010C */  jal        pxm_sendevent
/* 180F8 800278F8 21300000 */   addu      $a2, $zero, $zero
/* 180FC 800278FC 21204002 */  addu       $a0, $s2, $zero
/* 18100 80027900 02000224 */  addiu      $v0, $zero, 0x2
/* 18104 80027904 9C13908F */  lw         $s0, %gp_rel(Menu00)($gp)
/* 18108 80027908 C0020324 */  addiu      $v1, $zero, 0x2C0
/* 1810C 8002790C 480782AF */  sw         $v0, %gp_rel(MainMenuSelection)($gp)
/* 18110 80027910 40010224 */  addiu      $v0, $zero, 0x140
/* 18114 80027914 7000A3A7 */  sh         $v1, 0x70($sp)
/* 18118 80027918 F0000324 */  addiu      $v1, $zero, 0xF0
/* 1811C 8002791C 440780AF */  sw         $zero, %gp_rel(MainMenuState)($gp)
/* 18120 80027920 7200A0A7 */  sh         $zero, 0x72($sp)
/* 18124 80027924 040042A6 */  sh         $v0, 0x4($s2)
/* 18128 80027928 060043A6 */  sh         $v1, 0x6($s2)
/* 1812C 8002792C E1DB010C */  jal        LoadImage
/* 18130 80027930 08020526 */   addiu     $a1, $s0, 0x208
/* 18134 80027934 36DB010C */  jal        DrawSync
/* 18138 80027938 21200000 */   addu      $a0, $zero, $zero
/* 1813C 8002793C 03000016 */  bnez       $s0, .L8002794C
/* 18140 80027940 00000000 */   nop
/* 18144 80027944 1C40010C */  jal        new_free
/* 18148 80027948 21200000 */   addu      $a0, $zero, $zero
.L8002794C:
/* 1814C 8002794C EBD6010C */  jal        VSync
/* 18150 80027950 21200000 */   addu      $a0, $zero, $zero
.L80027954:
/* 18154 80027954 A400BF8F */  lw         $ra, 0xA4($sp)
/* 18158 80027958 A000BE8F */  lw         $fp, 0xA0($sp)
/* 1815C 8002795C 9C00B78F */  lw         $s7, 0x9C($sp)
/* 18160 80027960 9800B68F */  lw         $s6, 0x98($sp)
/* 18164 80027964 9400B58F */  lw         $s5, 0x94($sp)
/* 18168 80027968 9000B48F */  lw         $s4, 0x90($sp)
/* 1816C 8002796C 8C00B38F */  lw         $s3, 0x8C($sp)
/* 18170 80027970 8800B28F */  lw         $s2, 0x88($sp)
/* 18174 80027974 8400B18F */  lw         $s1, 0x84($sp)
/* 18178 80027978 8000B08F */  lw         $s0, 0x80($sp)
/* 1817C 8002797C 0800E003 */  jr         $ra
/* 18180 80027980 A800BD27 */   addiu     $sp, $sp, 0xA8
.size OptionsService, . - OptionsService
