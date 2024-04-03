.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CreditsService
/* 19084 80028884 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 19088 80028888 0880023C */  lui        $v0, %hi(MenuServiceListCredits)
/* 1908C 8002888C 0008838F */  lw         $v1, %gp_rel(CreditsOffset)($gp)
/* 19090 80028890 68694224 */  addiu      $v0, $v0, %lo(MenuServiceListCredits)
/* 19094 80028894 1000BFAF */  sw         $ra, 0x10($sp)
/* 19098 80028898 80180300 */  sll        $v1, $v1, 2
/* 1909C 8002889C 21186200 */  addu       $v1, $v1, $v0
/* 190A0 800288A0 0000628C */  lw         $v0, 0x0($v1)
/* 190A4 800288A4 00000000 */  nop
/* 190A8 800288A8 09F84000 */  jalr       $v0
/* 190AC 800288AC 00000000 */   nop
/* 190B0 800288B0 0408838F */  lw         $v1, %gp_rel(CreditsTimer)($gp)
/* 190B4 800288B4 0808828F */  lw         $v0, %gp_rel(CreditsTimerMax)($gp)
/* 190B8 800288B8 01006324 */  addiu      $v1, $v1, 0x1
/* 190BC 800288BC 2A104300 */  slt        $v0, $v0, $v1
/* 190C0 800288C0 040883AF */  sw         $v1, %gp_rel(CreditsTimer)($gp)
/* 190C4 800288C4 0D004010 */  beqz       $v0, .L800288FC
/* 190C8 800288C8 00000000 */   nop
/* 190CC 800288CC 0008828F */  lw         $v0, %gp_rel(CreditsOffset)($gp)
/* 190D0 800288D0 040880AF */  sw         $zero, %gp_rel(CreditsTimer)($gp)
/* 190D4 800288D4 01004224 */  addiu      $v0, $v0, 0x1
/* 190D8 800288D8 000882AF */  sw         $v0, %gp_rel(CreditsOffset)($gp)
/* 190DC 800288DC 0E004228 */  slti       $v0, $v0, 0xE
/* 190E0 800288E0 06004014 */  bnez       $v0, .L800288FC
/* 190E4 800288E4 06000324 */   addiu     $v1, $zero, 0x6
/* 190E8 800288E8 03000224 */  addiu      $v0, $zero, 0x3
/* 190EC 800288EC 440782AF */  sw         $v0, %gp_rel(MainMenuState)($gp)
/* 190F0 800288F0 480783AF */  sw         $v1, %gp_rel(MainMenuSelection)($gp)
/* 190F4 800288F4 000880AF */  sw         $zero, %gp_rel(CreditsOffset)($gp)
/* 190F8 800288F8 040880AF */  sw         $zero, %gp_rel(CreditsTimer)($gp)
.L800288FC:
/* 190FC 800288FC 1000BF8F */  lw         $ra, 0x10($sp)
/* 19100 80028900 00000000 */  nop
/* 19104 80028904 0800E003 */  jr         $ra
/* 19108 80028908 1800BD27 */   addiu     $sp, $sp, 0x18
.size CreditsService, . - CreditsService
