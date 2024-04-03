.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckETSlide
/* B800 8001B000 5C00828F */  lw         $v0, %gp_rel(SlideFlag)($gp)
/* B804 8001B004 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B808 8001B008 0D004014 */  bnez       $v0, .L8001B040
/* B80C 8001B00C 1000BFAF */   sw        $ra, 0x10($sp)
/* B810 8001B010 15000524 */  addiu      $a1, $zero, 0x15
/* B814 8001B014 02000624 */  addiu      $a2, $zero, 0x2
/* B818 8001B018 60DE000C */  jal        CheckAnimLoop
/* B81C 8001B01C 2C018724 */   addiu     $a3, $a0, 0x12C
/* B820 8001B020 25000424 */  addiu      $a0, $zero, 0x25
/* B824 8001B024 21280000 */  addu       $a1, $zero, $zero
/* B828 8001B028 6F4A010C */  jal        pxm_sendevent
/* B82C 8001B02C 21300000 */   addu      $a2, $zero, $zero
/* B830 8001B030 01000324 */  addiu      $v1, $zero, 0x1
/* B834 8001B034 5C0083AF */  sw         $v1, %gp_rel(SlideFlag)($gp)
/* B838 8001B038 146C0008 */  j          .L8001B050
/* B83C 8001B03C 00000000 */   nop
.L8001B040:
/* B840 8001B040 15000524 */  addiu      $a1, $zero, 0x15
/* B844 8001B044 02000624 */  addiu      $a2, $zero, 0x2
/* B848 8001B048 60DE000C */  jal        CheckAnimLoop
/* B84C 8001B04C 2C018724 */   addiu     $a3, $a0, 0x12C
.L8001B050:
/* B850 8001B050 1000BF8F */  lw         $ra, 0x10($sp)
/* B854 8001B054 00000000 */  nop
/* B858 8001B058 0800E003 */  jr         $ra
/* B85C 8001B05C 1800BD27 */   addiu     $sp, $sp, 0x18
.size CheckETSlide, . - CheckETSlide
