.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel EditLevelMainMenu
/* 3E658 8004DE58 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 3E65C 8004DE5C 00A00434 */  ori        $a0, $zero, 0xA000
/* 3E660 8004DE60 2400BFAF */  sw         $ra, 0x24($sp)
/* 3E664 8004DE64 E9EC000C */  jal        SetLocale
/* 3E668 8004DE68 2000B0AF */   sw        $s0, 0x20($sp)
/* 3E66C 8004DE6C 8F49010C */  jal        UITB_SetBoxStyle
/* 3E670 8004DE70 21200000 */   addu      $a0, $zero, $zero
/* 3E674 8004DE74 8949010C */  jal        UITB_SetBorderStyle
/* 3E678 8004DE78 21200000 */   addu      $a0, $zero, $zero
/* 3E67C 8004DE7C 21200000 */  addu       $a0, $zero, $zero
/* 3E680 8004DE80 21280000 */  addu       $a1, $zero, $zero
/* 3E684 8004DE84 45000624 */  addiu      $a2, $zero, 0x45
/* 3E688 8004DE88 05000724 */  addiu      $a3, $zero, 0x5
/* 3E68C 8004DE8C 05000224 */  addiu      $v0, $zero, 0x5
/* 3E690 8004DE90 80000324 */  addiu      $v1, $zero, 0x80
/* 3E694 8004DE94 1000A2AF */  sw         $v0, 0x10($sp)
/* 3E698 8004DE98 7A49010C */  jal        UITB_SetDrawBoxColor
/* 3E69C 8004DE9C 1400A3AF */   sw        $v1, 0x14($sp)
/* 3E6A0 8004DEA0 0A000424 */  addiu      $a0, $zero, 0xA
/* 3E6A4 8004DEA4 1E000524 */  addiu      $a1, $zero, 0x1E
/* 3E6A8 8004DEA8 70000624 */  addiu      $a2, $zero, 0x70
/* 3E6AC 8004DEAC 30000724 */  addiu      $a3, $zero, 0x30
/* 3E6B0 8004DEB0 01000224 */  addiu      $v0, $zero, 0x1
/* 3E6B4 8004DEB4 32000324 */  addiu      $v1, $zero, 0x32
/* 3E6B8 8004DEB8 1000A0AF */  sw         $zero, 0x10($sp)
/* 3E6BC 8004DEBC 1400A2AF */  sw         $v0, 0x14($sp)
/* 3E6C0 8004DEC0 B043010C */  jal        UITB_DrawBox
/* 3E6C4 8004DEC4 1800A3AF */   sw        $v1, 0x18($sp)
/* 3E6C8 8004DEC8 980E8493 */  lbu        $a0, %gp_rel(ISOHL_R)($gp)
/* 3E6CC 8004DECC 990E8593 */  lbu        $a1, %gp_rel(ISOHL_G)($gp)
/* 3E6D0 8004DED0 9A0E8693 */  lbu        $a2, %gp_rel(ISOHL_B)($gp)
/* 3E6D4 8004DED4 5363010C */  jal        TextSetTextColor
/* 3E6D8 8004DED8 00000000 */   nop
/* 3E6DC 8004DEDC 12000424 */  addiu      $a0, $zero, 0x12
/* 3E6E0 8004DEE0 1E000524 */  addiu      $a1, $zero, 0x1E
/* 3E6E4 8004DEE4 21300000 */  addu       $a2, $zero, $zero
/* 3E6E8 8004DEE8 0180073C */  lui        $a3, %hi(D_80012E64)
/* 3E6EC 8004DEEC 3063010C */  jal        Print
/* 3E6F0 8004DEF0 642EE724 */   addiu     $a3, $a3, %lo(D_80012E64)
/* 3E6F4 8004DEF4 100E838F */  lw         $v1, %gp_rel(MainMenuStateSel)($gp)
/* 3E6F8 8004DEF8 00000000 */  nop
/* 3E6FC 8004DEFC 08006014 */  bnez       $v1, .L8004DF20
/* 3E700 8004DF00 00000000 */   nop
/* 3E704 8004DF04 980E8493 */  lbu        $a0, %gp_rel(ISOHL_R)($gp)
/* 3E708 8004DF08 990E8593 */  lbu        $a1, %gp_rel(ISOHL_G)($gp)
/* 3E70C 8004DF0C 9A0E8693 */  lbu        $a2, %gp_rel(ISOHL_B)($gp)
/* 3E710 8004DF10 5363010C */  jal        TextSetTextColor
/* 3E714 8004DF14 00000000 */   nop
/* 3E718 8004DF18 CE370108 */  j          .L8004DF38
/* 3E71C 8004DF1C 01000224 */   addiu     $v0, $zero, 0x1
.L8004DF20:
/* 3E720 8004DF20 9B0E8493 */  lbu        $a0, %gp_rel(ISO_R)($gp)
/* 3E724 8004DF24 9C0E8593 */  lbu        $a1, %gp_rel(ISO_G)($gp)
/* 3E728 8004DF28 9D0E8693 */  lbu        $a2, %gp_rel(ISO_B)($gp)
/* 3E72C 8004DF2C 5363010C */  jal        TextSetTextColor
/* 3E730 8004DF30 00000000 */   nop
/* 3E734 8004DF34 21100000 */  addu       $v0, $zero, $zero
.L8004DF38:
/* 3E738 8004DF38 FFFF4230 */  andi       $v0, $v0, 0xFFFF
/* 3E73C 8004DF3C 0A004010 */  beqz       $v0, .L8004DF68
/* 3E740 8004DF40 12000424 */   addiu     $a0, $zero, 0x12
/* 3E744 8004DF44 0980023C */  lui        $v0, %hi(Trg0)
/* 3E748 8004DF48 30594294 */  lhu        $v0, %lo(Trg0)($v0)
/* 3E74C 8004DF4C 00000000 */  nop
/* 3E750 8004DF50 00404230 */  andi       $v0, $v0, 0x4000
/* 3E754 8004DF54 03004010 */  beqz       $v0, .L8004DF64
/* 3E758 8004DF58 01000424 */   addiu     $a0, $zero, 0x1
/* 3E75C 8004DF5C F887000C */  jal        LoadLevel
/* 3E760 8004DF60 01000524 */   addiu     $a1, $zero, 0x1
.L8004DF64:
/* 3E764 8004DF64 12000424 */  addiu      $a0, $zero, 0x12
.L8004DF68:
/* 3E768 8004DF68 27000524 */  addiu      $a1, $zero, 0x27
/* 3E76C 8004DF6C 21300000 */  addu       $a2, $zero, $zero
/* 3E770 8004DF70 0980073C */  lui        $a3, %hi(D_80095104)
/* 3E774 8004DF74 0451E724 */  addiu      $a3, $a3, %lo(D_80095104)
/* 3E778 8004DF78 3063010C */  jal        Print
/* 3E77C 8004DF7C 1000A0AF */   sw        $zero, 0x10($sp)
/* 3E780 8004DF80 100E838F */  lw         $v1, %gp_rel(MainMenuStateSel)($gp)
/* 3E784 8004DF84 01001024 */  addiu      $s0, $zero, 0x1
/* 3E788 8004DF88 08007014 */  bne        $v1, $s0, .L8004DFAC
/* 3E78C 8004DF8C 00000000 */   nop
/* 3E790 8004DF90 980E8493 */  lbu        $a0, %gp_rel(ISOHL_R)($gp)
/* 3E794 8004DF94 990E8593 */  lbu        $a1, %gp_rel(ISOHL_G)($gp)
/* 3E798 8004DF98 9A0E8693 */  lbu        $a2, %gp_rel(ISOHL_B)($gp)
/* 3E79C 8004DF9C 5363010C */  jal        TextSetTextColor
/* 3E7A0 8004DFA0 00000000 */   nop
/* 3E7A4 8004DFA4 F1370108 */  j          .L8004DFC4
/* 3E7A8 8004DFA8 01000224 */   addiu     $v0, $zero, 0x1
.L8004DFAC:
/* 3E7AC 8004DFAC 9B0E8493 */  lbu        $a0, %gp_rel(ISO_R)($gp)
/* 3E7B0 8004DFB0 9C0E8593 */  lbu        $a1, %gp_rel(ISO_G)($gp)
/* 3E7B4 8004DFB4 9D0E8693 */  lbu        $a2, %gp_rel(ISO_B)($gp)
/* 3E7B8 8004DFB8 5363010C */  jal        TextSetTextColor
/* 3E7BC 8004DFBC 00000000 */   nop
/* 3E7C0 8004DFC0 21100000 */  addu       $v0, $zero, $zero
.L8004DFC4:
/* 3E7C4 8004DFC4 FFFF4230 */  andi       $v0, $v0, 0xFFFF
/* 3E7C8 8004DFC8 17004010 */  beqz       $v0, .L8004E028
/* 3E7CC 8004DFCC 12000424 */   addiu     $a0, $zero, 0x12
/* 3E7D0 8004DFD0 0980023C */  lui        $v0, %hi(Trg0)
/* 3E7D4 8004DFD4 30594294 */  lhu        $v0, %lo(Trg0)($v0)
/* 3E7D8 8004DFD8 00000000 */  nop
/* 3E7DC 8004DFDC 00404230 */  andi       $v0, $v0, 0x4000
/* 3E7E0 8004DFE0 11004010 */  beqz       $v0, .L8004E028
/* 3E7E4 8004DFE4 0880033C */   lui       $v1, %hi(TestWorld)
/* 3E7E8 8004DFE8 8C656724 */  addiu      $a3, $v1, %lo(TestWorld)
/* 3E7EC 8004DFEC 8C65668C */  lw         $a2, %lo(TestWorld)($v1)
/* 3E7F0 8004DFF0 0400E28C */  lw         $v0, 0x4($a3)
/* 3E7F4 8004DFF4 00000000 */  nop
/* 3E7F8 8004DFF8 1800C200 */  mult       $a2, $v0
/* 3E7FC 8004DFFC 12300000 */  mflo       $a2
/* 3E800 8004E000 0800E38C */  lw         $v1, 0x8($a3)
/* 3E804 8004E004 00000000 */  nop
/* 3E808 8004E008 1800C300 */  mult       $a2, $v1
/* 3E80C 8004E00C 0180043C */  lui        $a0, %hi(D_80012E48)
/* 3E810 8004E010 482E8424 */  addiu      $a0, $a0, %lo(D_80012E48)
/* 3E814 8004E014 1400E58C */  lw         $a1, 0x14($a3)
/* 3E818 8004E018 12300000 */  mflo       $a2
/* 3E81C 8004E01C 685C010C */  jal        SaveFile
/* 3E820 8004E020 80300600 */   sll       $a2, $a2, 2
/* 3E824 8004E024 12000424 */  addiu      $a0, $zero, 0x12
.L8004E028:
/* 3E828 8004E028 30000524 */  addiu      $a1, $zero, 0x30
/* 3E82C 8004E02C 21300000 */  addu       $a2, $zero, $zero
/* 3E830 8004E030 0980073C */  lui        $a3, %hi(D_8009510C)
/* 3E834 8004E034 0C51E724 */  addiu      $a3, $a3, %lo(D_8009510C)
/* 3E838 8004E038 3063010C */  jal        Print
/* 3E83C 8004E03C 1000A0AF */   sw        $zero, 0x10($sp)
/* 3E840 8004E040 100E828F */  lw         $v0, %gp_rel(MainMenuStateSel)($gp)
/* 3E844 8004E044 02001024 */  addiu      $s0, $zero, 0x2
/* 3E848 8004E048 08005014 */  bne        $v0, $s0, .L8004E06C
/* 3E84C 8004E04C 00000000 */   nop
/* 3E850 8004E050 980E8493 */  lbu        $a0, %gp_rel(ISOHL_R)($gp)
/* 3E854 8004E054 990E8593 */  lbu        $a1, %gp_rel(ISOHL_G)($gp)
/* 3E858 8004E058 9A0E8693 */  lbu        $a2, %gp_rel(ISOHL_B)($gp)
/* 3E85C 8004E05C 5363010C */  jal        TextSetTextColor
/* 3E860 8004E060 00000000 */   nop
/* 3E864 8004E064 21380108 */  j          .L8004E084
/* 3E868 8004E068 01000224 */   addiu     $v0, $zero, 0x1
.L8004E06C:
/* 3E86C 8004E06C 9B0E8493 */  lbu        $a0, %gp_rel(ISO_R)($gp)
/* 3E870 8004E070 9C0E8593 */  lbu        $a1, %gp_rel(ISO_G)($gp)
/* 3E874 8004E074 9D0E8693 */  lbu        $a2, %gp_rel(ISO_B)($gp)
/* 3E878 8004E078 5363010C */  jal        TextSetTextColor
/* 3E87C 8004E07C 00000000 */   nop
/* 3E880 8004E080 21100000 */  addu       $v0, $zero, $zero
.L8004E084:
/* 3E884 8004E084 FFFF4230 */  andi       $v0, $v0, 0xFFFF
/* 3E888 8004E088 09004010 */  beqz       $v0, .L8004E0B0
/* 3E88C 8004E08C 12000424 */   addiu     $a0, $zero, 0x12
/* 3E890 8004E090 0980023C */  lui        $v0, %hi(Trg0)
/* 3E894 8004E094 30594294 */  lhu        $v0, %lo(Trg0)($v0)
/* 3E898 8004E098 00000000 */  nop
/* 3E89C 8004E09C 00404230 */  andi       $v0, $v0, 0x4000
/* 3E8A0 8004E0A0 03004010 */  beqz       $v0, .L8004E0B0
/* 3E8A4 8004E0A4 01000224 */   addiu     $v0, $zero, 0x1
/* 3E8A8 8004E0A8 0C0E82AF */  sw         $v0, %gp_rel(EditLevelState)($gp)
/* 3E8AC 8004E0AC 12000424 */  addiu      $a0, $zero, 0x12
.L8004E0B0:
/* 3E8B0 8004E0B0 39000524 */  addiu      $a1, $zero, 0x39
/* 3E8B4 8004E0B4 21300000 */  addu       $a2, $zero, $zero
/* 3E8B8 8004E0B8 0980073C */  lui        $a3, %hi(D_80095114)
/* 3E8BC 8004E0BC 1451E724 */  addiu      $a3, $a3, %lo(D_80095114)
/* 3E8C0 8004E0C0 3063010C */  jal        Print
/* 3E8C4 8004E0C4 1000A0AF */   sw        $zero, 0x10($sp)
/* 3E8C8 8004E0C8 21200000 */  addu       $a0, $zero, $zero
/* 3E8CC 8004E0CC 01000526 */  addiu      $a1, $s0, 0x1
/* 3E8D0 8004E0D0 10000624 */  addiu      $a2, $zero, 0x10
/* 3E8D4 8004E0D4 40000724 */  addiu      $a3, $zero, 0x40
/* 3E8D8 8004E0D8 0980033C */  lui        $v1, %hi(Trg0)
/* 3E8DC 8004E0DC 30596384 */  lh         $v1, %lo(Trg0)($v1)
/* 3E8E0 8004E0E0 100E8227 */  addiu      $v0, $gp, %gp_rel(MainMenuStateSel)
/* 3E8E4 8004E0E4 1400A0AF */  sw         $zero, 0x14($sp)
/* 3E8E8 8004E0E8 1800A2AF */  sw         $v0, 0x18($sp)
/* 3E8EC 8004E0EC 4649010C */  jal        CheckOption
/* 3E8F0 8004E0F0 1000A3AF */   sw        $v1, 0x10($sp)
/* 3E8F4 8004E0F4 2400BF8F */  lw         $ra, 0x24($sp)
/* 3E8F8 8004E0F8 2000B08F */  lw         $s0, 0x20($sp)
/* 3E8FC 8004E0FC 0800E003 */  jr         $ra
/* 3E900 8004E100 2800BD27 */   addiu     $sp, $sp, 0x28
.size EditLevelMainMenu, . - EditLevelMainMenu
