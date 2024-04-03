.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetLeftAnalogToDigitalMaskFromOctant
/* AFD4 8001A7D4 0800822C */  sltiu      $v0, $a0, 0x8
/* AFD8 8001A7D8 17004010 */  beqz       $v0, .L8001A838
/* AFDC 8001A7DC 80180400 */   sll       $v1, $a0, 2
/* AFE0 8001A7E0 0180023C */  lui        $v0, %hi(jtbl_80010198)
/* AFE4 8001A7E4 98014224 */  addiu      $v0, $v0, %lo(jtbl_80010198)
/* AFE8 8001A7E8 21186200 */  addu       $v1, $v1, $v0
/* AFEC 8001A7EC 0000648C */  lw         $a0, 0x0($v1)
/* AFF0 8001A7F0 00000000 */  nop
/* AFF4 8001A7F4 08008000 */  jr         $a0
/* AFF8 8001A7F8 00000000 */   nop
jlabel .L8001A7FC
/* AFFC 8001A7FC 0800E003 */  jr         $ra
/* B000 8001A800 20000224 */   addiu     $v0, $zero, 0x20
jlabel .L8001A804
/* B004 8001A804 0800E003 */  jr         $ra
/* B008 8001A808 30000224 */   addiu     $v0, $zero, 0x30
jlabel .L8001A80C
/* B00C 8001A80C 0800E003 */  jr         $ra
/* B010 8001A810 10000224 */   addiu     $v0, $zero, 0x10
jlabel .L8001A814
/* B014 8001A814 0800E003 */  jr         $ra
/* B018 8001A818 90000224 */   addiu     $v0, $zero, 0x90
jlabel .L8001A81C
/* B01C 8001A81C 0800E003 */  jr         $ra
/* B020 8001A820 80000224 */   addiu     $v0, $zero, 0x80
jlabel .L8001A824
/* B024 8001A824 0800E003 */  jr         $ra
/* B028 8001A828 C0000224 */   addiu     $v0, $zero, 0xC0
jlabel .L8001A82C
/* B02C 8001A82C 0800E003 */  jr         $ra
/* B030 8001A830 40000224 */   addiu     $v0, $zero, 0x40
jlabel .L8001A834
/* B034 8001A834 60000224 */  addiu      $v0, $zero, 0x60
.L8001A838:
/* B038 8001A838 0800E003 */  jr         $ra
/* B03C 8001A83C 00000000 */   nop
.size GetLeftAnalogToDigitalMaskFromOctant, . - GetLeftAnalogToDigitalMaskFromOctant
