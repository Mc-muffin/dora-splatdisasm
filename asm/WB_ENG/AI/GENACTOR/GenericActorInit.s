.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GenericActorInit
/* 39F68 80049768 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 39F6C 8004976C 2000B2AF */  sw         $s2, 0x20($sp)
/* 39F70 80049770 21908000 */  addu       $s2, $a0, $zero
/* 39F74 80049774 2400BFAF */  sw         $ra, 0x24($sp)
/* 39F78 80049778 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 39F7C 8004977C 1800B0AF */  sw         $s0, 0x18($sp)
/* 39F80 80049780 0000458E */  lw         $a1, 0x0($s2)
/* 39F84 80049784 0400468E */  lw         $a2, 0x4($s2)
/* 39F88 80049788 0800478E */  lw         $a3, 0x8($s2)
/* 39F8C 8004978C 0A001124 */  addiu      $s1, $zero, 0xA
/* 39F90 80049790 600051AE */  sw         $s1, 0x60($s2)
/* 39F94 80049794 1000A0AF */  sw         $zero, 0x10($sp)
/* 39F98 80049798 4400428E */  lw         $v0, 0x44($s2)
/* 39F9C 8004979C 0880043C */  lui        $a0, %hi(MeshIDTable)
/* 39FA0 800497A0 1000438C */  lw         $v1, 0x10($v0)
/* 39FA4 800497A4 60548424 */  addiu      $a0, $a0, %lo(MeshIDTable)
/* 39FA8 800497A8 40100300 */  sll        $v0, $v1, 1
/* 39FAC 800497AC 21104300 */  addu       $v0, $v0, $v1
/* 39FB0 800497B0 80100200 */  sll        $v0, $v0, 2
/* 39FB4 800497B4 23104300 */  subu       $v0, $v0, $v1
/* 39FB8 800497B8 80100200 */  sll        $v0, $v0, 2
/* 39FBC 800497BC 21208200 */  addu       $a0, $a0, $v0
/* 39FC0 800497C0 0C00838C */  lw         $v1, 0xC($a0)
/* 39FC4 800497C4 6C004426 */  addiu      $a0, $s2, 0x6C
/* 39FC8 800497C8 B2F9000C */  jal        InitObjectPhysics
/* 39FCC 800497CC 1400A3AF */   sw        $v1, 0x14($sp)
/* 39FD0 800497D0 8587010C */  jal        InitCollisionSpheres
/* 39FD4 800497D4 21204002 */   addu      $a0, $s2, $zero
/* 39FD8 800497D8 21204002 */  addu       $a0, $s2, $zero
/* 39FDC 800497DC 2C015026 */  addiu      $s0, $s2, 0x12C
/* 39FE0 800497E0 5AE2000C */  jal        InitAnimateActor
/* 39FE4 800497E4 21280002 */   addu      $a1, $s0, $zero
/* 39FE8 800497E8 21204002 */  addu       $a0, $s2, $zero
/* 39FEC 800497EC 21280000 */  addu       $a1, $zero, $zero
/* 39FF0 800497F0 21300002 */  addu       $a2, $s0, $zero
/* 39FF4 800497F4 440140AE */  sw         $zero, 0x144($s2)
/* 39FF8 800497F8 EEE2000C */  jal        SetAnim
/* 39FFC 800497FC 5C0051AE */   sw        $s1, 0x5C($s2)
/* 3A000 80049800 4400438E */  lw         $v1, 0x44($s2)
/* 3A004 80049804 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 3A008 80049808 580042AE */  sw         $v0, 0x58($s2)
/* 3A00C 8004980C 1400658C */  lw         $a1, 0x14($v1)
/* 3A010 80049810 A501010C */  jal        LinkActiveActorToTrigger
/* 3A014 80049814 21204002 */   addu      $a0, $s2, $zero
/* 3A018 80049818 1000438E */  lw         $v1, 0x10($s2)
/* 3A01C 8004981C 4400448E */  lw         $a0, 0x44($s2)
/* 3A020 80049820 00016334 */  ori        $v1, $v1, 0x100
/* 3A024 80049824 100043AE */  sw         $v1, 0x10($s2)
/* 3A028 80049828 1C00828C */  lw         $v0, 0x1C($a0)
/* 3A02C 8004982C 8000033C */  lui        $v1, (0x800000 >> 16)
/* 3A030 80049830 24104300 */  and        $v0, $v0, $v1
/* 3A034 80049834 07004010 */  beqz       $v0, .L80049854
/* 3A038 80049838 00000000 */   nop
/* 3A03C 8004983C 1800838C */  lw         $v1, 0x18($a0)
/* 3A040 80049840 00000000 */  nop
/* 3A044 80049844 240143AE */  sw         $v1, 0x124($s2)
/* 3A048 80049848 3800628C */  lw         $v0, 0x38($v1)
/* 3A04C 8004984C 19260108 */  j          .L80049864
/* 3A050 80049850 280142AE */   sw        $v0, 0x128($s2)
.L80049854:
/* 3A054 80049854 240140AE */  sw         $zero, 0x124($s2)
/* 3A058 80049858 1800828C */  lw         $v0, 0x18($a0)
/* 3A05C 8004985C 00000000 */  nop
/* 3A060 80049860 280142AE */  sw         $v0, 0x128($s2)
.L80049864:
/* 3A064 80049864 2401508E */  lw         $s0, 0x124($s2)
/* 3A068 80049868 04000224 */  addiu      $v0, $zero, 0x4
/* 3A06C 8004986C 2C000012 */  beqz       $s0, .L80049920
/* 3A070 80049870 0C0042AE */   sw        $v0, 0xC($s2)
/* 3A074 80049874 140000AE */  sw         $zero, 0x14($s0)
/* 3A078 80049878 180000AE */  sw         $zero, 0x18($s0)
/* 3A07C 8004987C 1C0000AE */  sw         $zero, 0x1C($s0)
/* 3A080 80049880 340000AE */  sw         $zero, 0x34($s0)
/* 3A084 80049884 4400428E */  lw         $v0, 0x44($s2)
/* 3A088 80049888 00000000 */  nop
/* 3A08C 8004988C 0000448C */  lw         $a0, 0x0($v0)
/* 3A090 80049890 0400458C */  lw         $a1, 0x4($v0)
/* 3A094 80049894 0800468C */  lw         $a2, 0x8($v0)
/* 3A098 80049898 C3210400 */  sra        $a0, $a0, 7
/* 3A09C 8004989C C3290500 */  sra        $a1, $a1, 7
/* 3A0A0 800498A0 FFFFA524 */  addiu      $a1, $a1, -0x1
/* 3A0A4 800498A4 090C010C */  jal        LookUpSpawn
/* 3A0A8 800498A8 C3310600 */   sra       $a2, $a2, 7
/* 3A0AC 800498AC 05004010 */  beqz       $v0, .L800498C4
/* 3A0B0 800498B0 00000000 */   nop
/* 3A0B4 800498B4 E701010C */  jal        GetSpawnTriggerIndex
/* 3A0B8 800498B8 21204000 */   addu      $a0, $v0, $zero
/* 3A0BC 800498BC 33260108 */  j          .L800498CC
/* 3A0C0 800498C0 3C0002A6 */   sh        $v0, 0x3C($s0)
.L800498C4:
/* 3A0C4 800498C4 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 3A0C8 800498C8 3C0002A6 */  sh         $v0, 0x3C($s0)
.L800498CC:
/* 3A0CC 800498CC 0400058E */  lw         $a1, 0x4($s0)
/* 3A0D0 800498D0 00000000 */  nop
/* 3A0D4 800498D4 1200A010 */  beqz       $a1, .L80049920
/* 3A0D8 800498D8 00000000 */   nop
/* 3A0DC 800498DC 0000068E */  lw         $a2, 0x0($s0)
/* 3A0E0 800498E0 0C00078E */  lw         $a3, 0xC($s0)
/* 3A0E4 800498E4 9C13010C */  jal        InitPath
/* 3A0E8 800498E8 21204002 */   addu      $a0, $s2, $zero
/* 3A0EC 800498EC 3C01438E */  lw         $v1, 0x13C($s2)
/* 3A0F0 800498F0 01000224 */  addiu      $v0, $zero, 0x1
/* 3A0F4 800498F4 05006210 */  beq        $v1, $v0, .L8004990C
/* 3A0F8 800498F8 440142AE */   sw        $v0, 0x144($s2)
/* 3A0FC 800498FC 21204002 */  addu       $a0, $s2, $zero
/* 3A100 80049900 01000524 */  addiu      $a1, $zero, 0x1
/* 3A104 80049904 DCE2000C */  jal        ForceAnim
/* 3A108 80049908 2C014626 */   addiu     $a2, $s2, 0x12C
.L8004990C:
/* 3A10C 8004990C 0000458E */  lw         $a1, 0x0($s2)
/* 3A110 80049910 0400468E */  lw         $a2, 0x4($s2)
/* 3A114 80049914 0800478E */  lw         $a3, 0x8($s2)
/* 3A118 80049918 77FB000C */  jal        MotionPhysics_SetPosition
/* 3A11C 8004991C 6C004426 */   addiu     $a0, $s2, 0x6C
.L80049920:
/* 3A120 80049920 2400BF8F */  lw         $ra, 0x24($sp)
/* 3A124 80049924 2000B28F */  lw         $s2, 0x20($sp)
/* 3A128 80049928 1C00B18F */  lw         $s1, 0x1C($sp)
/* 3A12C 8004992C 1800B08F */  lw         $s0, 0x18($sp)
/* 3A130 80049930 0800E003 */  jr         $ra
/* 3A134 80049934 2800BD27 */   addiu     $sp, $sp, 0x28
.size GenericActorInit, . - GenericActorInit
