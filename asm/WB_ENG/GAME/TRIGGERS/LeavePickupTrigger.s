.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LeavePickupTrigger
/* 3108C 8004088C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 31090 80040890 0A80023C */  lui        $v0, %hi(PickupTrigger)
/* 31094 80040894 D0BB4224 */  addiu      $v0, $v0, %lo(PickupTrigger)
/* 31098 80040898 80200400 */  sll        $a0, $a0, 2
/* 3109C 8004089C 21208200 */  addu       $a0, $a0, $v0
/* 310A0 800408A0 1800BFAF */  sw         $ra, 0x18($sp)
/* 310A4 800408A4 1400B1AF */  sw         $s1, 0x14($sp)
/* 310A8 800408A8 1000B0AF */  sw         $s0, 0x10($sp)
/* 310AC 800408AC 0000908C */  lw         $s0, 0x0($a0)
/* 310B0 800408B0 2140A000 */  addu       $t0, $a1, $zero
/* 310B4 800408B4 4400048E */  lw         $a0, 0x44($s0)
/* 310B8 800408B8 1000023C */  lui        $v0, (0x100000 >> 16)
/* 310BC 800408BC 1C00838C */  lw         $v1, 0x1C($a0)
/* 310C0 800408C0 00000000 */  nop
/* 310C4 800408C4 24106200 */  and        $v0, $v1, $v0
/* 310C8 800408C8 1C004010 */  beqz       $v0, .L8004093C
/* 310CC 800408CC 6C001126 */   addiu     $s1, $s0, 0x6C
/* 310D0 800408D0 EFFF023C */  lui        $v0, (0xFFEFFFFF >> 16)
/* 310D4 800408D4 FFFF4234 */  ori        $v0, $v0, (0xFFEFFFFF & 0xFFFF)
/* 310D8 800408D8 24106200 */  and        $v0, $v1, $v0
/* 310DC 800408DC 1C0082AC */  sw         $v0, 0x1C($a0)
/* 310E0 800408E0 4400058E */  lw         $a1, 0x44($s0)
/* 310E4 800408E4 00000000 */  nop
/* 310E8 800408E8 1C00A28C */  lw         $v0, 0x1C($a1)
/* 310EC 800408EC 21202002 */  addu       $a0, $s1, $zero
/* 310F0 800408F0 08004234 */  ori        $v0, $v0, 0x8
/* 310F4 800408F4 1C00A2AC */  sw         $v0, 0x1C($a1)
/* 310F8 800408F8 1000038E */  lw         $v1, 0x10($s0)
/* 310FC 800408FC 21280001 */  addu       $a1, $t0, $zero
/* 31100 80040900 00016334 */  ori        $v1, $v1, 0x100
/* 31104 80040904 77FB000C */  jal        MotionPhysics_SetPosition
/* 31108 80040908 100003AE */   sw        $v1, 0x10($s0)
/* 3110C 8004090C 21200002 */  addu       $a0, $s0, $zero
/* 31110 80040910 21282002 */  addu       $a1, $s1, $zero
/* 31114 80040914 009C0224 */  addiu      $v0, $zero, -0x6400
/* 31118 80040918 9B87010C */  jal        UpdateMotionPhysicsToActor
/* 3111C 8004091C A00002AE */   sw        $v0, 0xA0($s0)
/* 31120 80040920 3990000C */  jal        GameOption
/* 31124 80040924 21200000 */   addu      $a0, $zero, $zero
/* 31128 80040928 04004010 */  beqz       $v0, .L8004093C
/* 3112C 8004092C 1E000324 */   addiu     $v1, $zero, 0x1E
/* 31130 80040930 64000224 */  addiu      $v0, $zero, 0x64
/* 31134 80040934 0C0002AE */  sw         $v0, 0xC($s0)
/* 31138 80040938 640003AE */  sw         $v1, 0x64($s0)
.L8004093C:
/* 3113C 8004093C 1800BF8F */  lw         $ra, 0x18($sp)
/* 31140 80040940 1400B18F */  lw         $s1, 0x14($sp)
/* 31144 80040944 1000B08F */  lw         $s0, 0x10($sp)
/* 31148 80040948 0800E003 */  jr         $ra
/* 3114C 8004094C 2000BD27 */   addiu     $sp, $sp, 0x20
.size LeavePickupTrigger, . - LeavePickupTrigger
