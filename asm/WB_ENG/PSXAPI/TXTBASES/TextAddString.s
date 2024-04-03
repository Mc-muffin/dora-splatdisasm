.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TextAddString
/* 48BA8 800583A8 6C10838F */  lw         $v1, %gp_rel(gTextNumStrings)($gp)
/* 48BAC 800583AC C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 48BB0 800583B0 2400B5AF */  sw         $s5, 0x24($sp)
/* 48BB4 800583B4 21A8A000 */  addu       $s5, $a1, $zero
/* 48BB8 800583B8 1000B0AF */  sw         $s0, 0x10($sp)
/* 48BBC 800583BC 2180A002 */  addu       $s0, $s5, $zero
/* 48BC0 800583C0 1400B1AF */  sw         $s1, 0x14($sp)
/* 48BC4 800583C4 2188C000 */  addu       $s1, $a2, $zero
/* 48BC8 800583C8 2000B4AF */  sw         $s4, 0x20($sp)
/* 48BCC 800583CC 21A08000 */  addu       $s4, $a0, $zero
/* 48BD0 800583D0 2800B6AF */  sw         $s6, 0x28($sp)
/* 48BD4 800583D4 5C10968F */  lw         $s6, %gp_rel(gTextCurrentFontIndex)($gp)
/* 48BD8 800583D8 9010828F */  lw         $v0, %gp_rel(gpTextStringLetterIndex)($gp)
/* 48BDC 800583DC 7410858F */  lw         $a1, %gp_rel(gTextCurrentLetter)($gp)
/* 48BE0 800583E0 9410868F */  lw         $a2, %gp_rel(gpTextStringOTZ)($gp)
/* 48BE4 800583E4 1800B2AF */  sw         $s2, 0x18($sp)
/* 48BE8 800583E8 21900000 */  addu       $s2, $zero, $zero
/* 48BEC 800583EC 3000BFAF */  sw         $ra, 0x30($sp)
/* 48BF0 800583F0 2C00B7AF */  sw         $s7, 0x2C($sp)
/* 48BF4 800583F4 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 48BF8 800583F8 80180300 */  sll        $v1, $v1, 2
/* 48BFC 800583FC 21106200 */  addu       $v0, $v1, $v0
/* 48C00 80058400 21186600 */  addu       $v1, $v1, $a2
/* 48C04 80058404 000045AC */  sw         $a1, 0x0($v0)
/* 48C08 80058408 A3C2010C */  jal        strlen
/* 48C0C 8005840C 000067AC */   sw        $a3, 0x0($v1)
/* 48C10 80058410 21584000 */  addu       $t3, $v0, $zero
/* 48C14 80058414 0C80073C */  lui        $a3, %hi(VRAMItems)
/* 48C18 80058418 80481600 */  sll        $t1, $s6, 2
/* 48C1C 8005841C 21B8E000 */  addu       $s7, $a3, $zero
/* 48C20 80058420 7410848F */  lw         $a0, %gp_rel(gTextCurrentLetter)($gp)
/* 48C24 80058424 0980053C */  lui        $a1, %hi(ot_ndx)
/* 48C28 80058428 4853A58C */  lw         $a1, %lo(ot_ndx)($a1)
/* 48C2C 8005842C 7C10828F */  lw         $v0, %gp_rel(gpTextFontVRAMIndex)($gp)
/* 48C30 80058430 40200400 */  sll        $a0, $a0, 1
/* 48C34 80058434 21208500 */  addu       $a0, $a0, $a1
/* 48C38 80058438 80180400 */  sll        $v1, $a0, 2
/* 48C3C 8005843C 21186400 */  addu       $v1, $v1, $a0
/* 48C40 80058440 80180300 */  sll        $v1, $v1, 2
/* 48C44 80058444 21102201 */  addu       $v0, $t1, $v0
/* 48C48 80058448 7810858F */  lw         $a1, %gp_rel(gpTextLetterSprites)($gp)
/* 48C4C 8005844C 8010848F */  lw         $a0, %gp_rel(gpTextFontCLUTIndex)($gp)
/* 48C50 80058450 2140A300 */  addu       $t0, $a1, $v1
/* 48C54 80058454 38ADE524 */  addiu      $a1, $a3, %lo(VRAMItems)
/* 48C58 80058458 21202401 */  addu       $a0, $t1, $a0
/* 48C5C 8005845C 0000438C */  lw         $v1, 0x0($v0)
/* 48C60 80058460 00009984 */  lh         $t9, 0x0($a0)
/* 48C64 80058464 80100300 */  sll        $v0, $v1, 2
/* 48C68 80058468 21104300 */  addu       $v0, $v0, $v1
/* 48C6C 8005846C 80100200 */  sll        $v0, $v0, 2
/* 48C70 80058470 21104500 */  addu       $v0, $v0, $a1
/* 48C74 80058474 0980053C */  lui        $a1, %hi(gTextCurrentTextColor)
/* 48C78 80058478 8C82A624 */  addiu      $a2, $a1, %lo(gTextCurrentTextColor)
/* 48C7C 8005847C 8810838F */  lw         $v1, %gp_rel(gppTextFonts)($gp)
/* 48C80 80058480 0E005390 */  lbu        $s3, 0xE($v0)
/* 48C84 80058484 0F004790 */  lbu        $a3, 0xF($v0)
/* 48C88 80058488 8C82B884 */  lh         $t8, %lo(gTextCurrentTextColor)($a1)
/* 48C8C 8005848C 0400CF84 */  lh         $t7, 0x4($a2)
/* 48C90 80058490 21182301 */  addu       $v1, $t1, $v1
/* 48C94 80058494 0000628C */  lw         $v0, 0x0($v1)
/* 48C98 80058498 0800CE84 */  lh         $t6, 0x8($a2)
/* 48C9C 8005849C 00004D84 */  lh         $t5, 0x0($v0)
/* 48CA0 800584A0 18004C84 */  lh         $t4, 0x18($v0)
/* 48CA4 800584A4 2F006019 */  blez       $t3, .L80058564
/* 48CA8 800584A8 21500000 */   addu      $t2, $zero, $zero
/* 48CAC 800584AC 21302001 */  addu       $a2, $t1, $zero
/* 48CB0 800584B0 0A000924 */  addiu      $t1, $zero, 0xA
/* 48CB4 800584B4 21108A02 */  addu       $v0, $s4, $t2
.L800584B8:
/* 48CB8 800584B8 8810838F */  lw         $v1, %gp_rel(gppTextFonts)($gp)
/* 48CBC 800584BC 00004490 */  lbu        $a0, 0x0($v0)
/* 48CC0 800584C0 2118C300 */  addu       $v1, $a2, $v1
/* 48CC4 800584C4 80100400 */  sll        $v0, $a0, 2
/* 48CC8 800584C8 0000638C */  lw         $v1, 0x0($v1)
/* 48CCC 800584CC 20004224 */  addiu      $v0, $v0, 0x20
/* 48CD0 800584D0 1B008910 */  beq        $a0, $t1, .L80058540
/* 48CD4 800584D4 21286200 */   addu      $a1, $v1, $v0
/* 48CD8 800584D8 080010A5 */  sh         $s0, 0x8($t0)
/* 48CDC 800584DC 0A0011A5 */  sh         $s1, 0xA($t0)
/* 48CE0 800584E0 0000A390 */  lbu        $v1, 0x0($a1)
/* 48CE4 800584E4 12000DA5 */  sh         $t5, 0x12($t0)
/* 48CE8 800584E8 040018A1 */  sb         $t8, 0x4($t0)
/* 48CEC 800584EC 05000FA1 */  sb         $t7, 0x5($t0)
/* 48CF0 800584F0 06000EA1 */  sb         $t6, 0x6($t0)
/* 48CF4 800584F4 0E0019A5 */  sh         $t9, 0xE($t0)
/* 48CF8 800584F8 100003A5 */  sh         $v1, 0x10($t0)
/* 48CFC 800584FC 0200A290 */  lbu        $v0, 0x2($a1)
/* 48D00 80058500 00000000 */  nop
/* 48D04 80058504 21105300 */  addu       $v0, $v0, $s3
/* 48D08 80058508 0C0002A1 */  sb         $v0, 0xC($t0)
/* 48D0C 8005850C 0300A390 */  lbu        $v1, 0x3($a1)
/* 48D10 80058510 00000000 */  nop
/* 48D14 80058514 21186700 */  addu       $v1, $v1, $a3
/* 48D18 80058518 0D0003A1 */  sb         $v1, 0xD($t0)
/* 48D1C 8005851C 7410828F */  lw         $v0, %gp_rel(gTextCurrentLetter)($gp)
/* 48D20 80058520 01001224 */  addiu      $s2, $zero, 0x1
/* 48D24 80058524 01004224 */  addiu      $v0, $v0, 0x1
/* 48D28 80058528 741082AF */  sw         $v0, %gp_rel(gTextCurrentLetter)($gp)
/* 48D2C 8005852C 0000A390 */  lbu        $v1, 0x0($a1)
/* 48D30 80058530 28000825 */  addiu      $t0, $t0, 0x28
/* 48D34 80058534 21186C00 */  addu       $v1, $v1, $t4
/* 48D38 80058538 55610108 */  j          .L80058554
/* 48D3C 8005853C 21800302 */   addu      $s0, $s0, $v1
.L80058540:
/* 48D40 80058540 0000628C */  lw         $v0, 0x0($v1)
/* 48D44 80058544 1C00638C */  lw         $v1, 0x1C($v1)
/* 48D48 80058548 2180A002 */  addu       $s0, $s5, $zero
/* 48D4C 8005854C 21104300 */  addu       $v0, $v0, $v1
/* 48D50 80058550 21882202 */  addu       $s1, $s1, $v0
.L80058554:
/* 48D54 80058554 01004A25 */  addiu      $t2, $t2, 0x1
/* 48D58 80058558 2A104B01 */  slt        $v0, $t2, $t3
/* 48D5C 8005855C D6FF4014 */  bnez       $v0, .L800584B8
/* 48D60 80058560 21108A02 */   addu      $v0, $s4, $t2
.L80058564:
/* 48D64 80058564 1A004012 */  beqz       $s2, .L800585D0
/* 48D68 80058568 00000000 */   nop
/* 48D6C 8005856C 6C10848F */  lw         $a0, %gp_rel(gTextNumStrings)($gp)
/* 48D70 80058570 0980023C */  lui        $v0, %hi(ot_ndx)
/* 48D74 80058574 4853428C */  lw         $v0, %lo(ot_ndx)($v0)
/* 48D78 80058578 8C10838F */  lw         $v1, %gp_rel(gpTextFontTPage)($gp)
/* 48D7C 8005857C 7C10858F */  lw         $a1, %gp_rel(gpTextFontVRAMIndex)($gp)
/* 48D80 80058580 40200400 */  sll        $a0, $a0, 1
/* 48D84 80058584 21208200 */  addu       $a0, $a0, $v0
/* 48D88 80058588 C0200400 */  sll        $a0, $a0, 3
/* 48D8C 8005858C 21206400 */  addu       $a0, $v1, $a0
/* 48D90 80058590 80101600 */  sll        $v0, $s6, 2
/* 48D94 80058594 21104500 */  addu       $v0, $v0, $a1
/* 48D98 80058598 38ADE326 */  addiu      $v1, $s7, %lo(VRAMItems)
/* 48D9C 8005859C 0000468C */  lw         $a2, 0x0($v0)
/* 48DA0 800585A0 21280000 */  addu       $a1, $zero, $zero
/* 48DA4 800585A4 80100600 */  sll        $v0, $a2, 2
/* 48DA8 800585A8 21104600 */  addu       $v0, $v0, $a2
/* 48DAC 800585AC 80100200 */  sll        $v0, $v0, 2
/* 48DB0 800585B0 21186200 */  addu       $v1, $v1, $v0
/* 48DB4 800585B4 08006794 */  lhu        $a3, 0x8($v1)
/* 48DB8 800585B8 23E7010C */  jal        SetDrawTPage
/* 48DBC 800585BC 01000624 */   addiu     $a2, $zero, 0x1
/* 48DC0 800585C0 6C10828F */  lw         $v0, %gp_rel(gTextNumStrings)($gp)
/* 48DC4 800585C4 00000000 */  nop
/* 48DC8 800585C8 01004224 */  addiu      $v0, $v0, 0x1
/* 48DCC 800585CC 6C1082AF */  sw         $v0, %gp_rel(gTextNumStrings)($gp)
.L800585D0:
/* 48DD0 800585D0 3000BF8F */  lw         $ra, 0x30($sp)
/* 48DD4 800585D4 2C00B78F */  lw         $s7, 0x2C($sp)
/* 48DD8 800585D8 2800B68F */  lw         $s6, 0x28($sp)
/* 48DDC 800585DC 2400B58F */  lw         $s5, 0x24($sp)
/* 48DE0 800585E0 2000B48F */  lw         $s4, 0x20($sp)
/* 48DE4 800585E4 1C00B38F */  lw         $s3, 0x1C($sp)
/* 48DE8 800585E8 1800B28F */  lw         $s2, 0x18($sp)
/* 48DEC 800585EC 1400B18F */  lw         $s1, 0x14($sp)
/* 48DF0 800585F0 1000B08F */  lw         $s0, 0x10($sp)
/* 48DF4 800585F4 0800E003 */  jr         $ra
/* 48DF8 800585F8 3800BD27 */   addiu     $sp, $sp, 0x38
.size TextAddString, . - TextAddString
