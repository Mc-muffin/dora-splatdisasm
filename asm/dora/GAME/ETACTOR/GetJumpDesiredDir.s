.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetJumpDesiredDir
/* B040 8001A840 0980023C */  lui        $v0, %hi(Pad0)
/* B044 8001A844 2C594294 */  lhu        $v0, %lo(Pad0)($v0)
/* B048 8001A848 00000000 */  nop
/* B04C 8001A84C F0004330 */  andi       $v1, $v0, 0xF0
/* B050 8001A850 0B006010 */  beqz       $v1, .L8001A880
/* B054 8001A854 40000224 */   addiu     $v0, $zero, 0x40
/* B058 8001A858 29006210 */  beq        $v1, $v0, .L8001A900
/* B05C 8001A85C 41006228 */   slti      $v0, $v1, 0x41
/* B060 8001A860 0E004010 */  beqz       $v0, .L8001A89C
/* B064 8001A864 20000224 */   addiu     $v0, $zero, 0x20
/* B068 8001A868 20006210 */  beq        $v1, $v0, .L8001A8EC
/* B06C 8001A86C 21006228 */   slti      $v0, $v1, 0x21
/* B070 8001A870 05004010 */  beqz       $v0, .L8001A888
/* B074 8001A874 10000224 */   addiu     $v0, $zero, 0x10
/* B078 8001A878 18006210 */  beq        $v1, $v0, .L8001A8DC
/* B07C 8001A87C 00080224 */   addiu     $v0, $zero, 0x800
.L8001A880:
/* B080 8001A880 0800E003 */  jr         $ra
/* B084 8001A884 00000000 */   nop
.L8001A888:
/* B088 8001A888 30000224 */  addiu      $v0, $zero, 0x30
/* B08C 8001A88C 15006210 */  beq        $v1, $v0, .L8001A8E4
/* B090 8001A890 000A0224 */   addiu     $v0, $zero, 0xA00
/* B094 8001A894 0800E003 */  jr         $ra
/* B098 8001A898 00000000 */   nop
.L8001A89C:
/* B09C 8001A89C 80000224 */  addiu      $v0, $zero, 0x80
/* B0A0 8001A8A0 1B006210 */  beq        $v1, $v0, .L8001A910
/* B0A4 8001A8A4 81006228 */   slti      $v0, $v1, 0x81
/* B0A8 8001A8A8 05004010 */  beqz       $v0, .L8001A8C0
/* B0AC 8001A8AC 60000224 */   addiu     $v0, $zero, 0x60
/* B0B0 8001A8B0 11006210 */  beq        $v1, $v0, .L8001A8F8
/* B0B4 8001A8B4 000E0224 */   addiu     $v0, $zero, 0xE00
/* B0B8 8001A8B8 0800E003 */  jr         $ra
/* B0BC 8001A8BC 00000000 */   nop
.L8001A8C0:
/* B0C0 8001A8C0 90000224 */  addiu      $v0, $zero, 0x90
/* B0C4 8001A8C4 15006210 */  beq        $v1, $v0, .L8001A91C
/* B0C8 8001A8C8 C0000224 */   addiu     $v0, $zero, 0xC0
/* B0CC 8001A8CC 0E006210 */  beq        $v1, $v0, .L8001A908
/* B0D0 8001A8D0 00020224 */   addiu     $v0, $zero, 0x200
/* B0D4 8001A8D4 0800E003 */  jr         $ra
/* B0D8 8001A8D8 00000000 */   nop
.L8001A8DC:
/* B0DC 8001A8DC 0800E003 */  jr         $ra
/* B0E0 8001A8E0 580082AC */   sw        $v0, 0x58($a0)
.L8001A8E4:
/* B0E4 8001A8E4 0800E003 */  jr         $ra
/* B0E8 8001A8E8 580082AC */   sw        $v0, 0x58($a0)
.L8001A8EC:
/* B0EC 8001A8EC 000C0224 */  addiu      $v0, $zero, 0xC00
/* B0F0 8001A8F0 0800E003 */  jr         $ra
/* B0F4 8001A8F4 580082AC */   sw        $v0, 0x58($a0)
.L8001A8F8:
/* B0F8 8001A8F8 0800E003 */  jr         $ra
/* B0FC 8001A8FC 580082AC */   sw        $v0, 0x58($a0)
.L8001A900:
/* B100 8001A900 0800E003 */  jr         $ra
/* B104 8001A904 580080AC */   sw        $zero, 0x58($a0)
.L8001A908:
/* B108 8001A908 0800E003 */  jr         $ra
/* B10C 8001A90C 580082AC */   sw        $v0, 0x58($a0)
.L8001A910:
/* B110 8001A910 00040224 */  addiu      $v0, $zero, 0x400
/* B114 8001A914 0800E003 */  jr         $ra
/* B118 8001A918 580082AC */   sw        $v0, 0x58($a0)
.L8001A91C:
/* B11C 8001A91C 00060224 */  addiu      $v0, $zero, 0x600
/* B120 8001A920 580082AC */  sw         $v0, 0x58($a0)
/* B124 8001A924 0800E003 */  jr         $ra
/* B128 8001A928 00000000 */   nop
.size GetJumpDesiredDir, . - GetJumpDesiredDir
