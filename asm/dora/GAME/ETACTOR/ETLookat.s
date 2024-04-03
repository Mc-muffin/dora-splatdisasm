.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ETLookat
/* B12C 8001A92C 5800858C */  lw         $a1, 0x58($a0)
/* B130 8001A930 5400878C */  lw         $a3, 0x54($a0)
/* B134 8001A934 FF0FA530 */  andi       $a1, $a1, 0xFFF
/* B138 8001A938 2318E500 */  subu       $v1, $a3, $a1
/* B13C 8001A93C 03006104 */  bgez       $v1, .L8001A94C
/* B140 8001A940 00086228 */   slti      $v0, $v1, 0x800
/* B144 8001A944 2318A700 */  subu       $v1, $a1, $a3
/* B148 8001A948 00086228 */  slti       $v0, $v1, 0x800
.L8001A94C:
/* B14C 8001A94C 04004014 */  bnez       $v0, .L8001A960
/* B150 8001A950 2110E300 */   addu      $v0, $a3, $v1
/* B154 8001A954 00100224 */  addiu      $v0, $zero, 0x1000
/* B158 8001A958 23184300 */  subu       $v1, $v0, $v1
/* B15C 8001A95C 2110E300 */  addu       $v0, $a3, $v1
.L8001A960:
/* B160 8001A960 FF0F4230 */  andi       $v0, $v0, 0xFFF
/* B164 8001A964 08004514 */  bne        $v0, $a1, .L8001A988
/* B168 8001A968 00000000 */   nop
/* B16C 8001A96C 5C00868C */  lw         $a2, 0x5C($a0)
/* B170 8001A970 00000000 */  nop
/* B174 8001A974 2A10C300 */  slt        $v0, $a2, $v1
/* B178 8001A978 0A004010 */  beqz       $v0, .L8001A9A4
/* B17C 8001A97C 2110E600 */   addu      $v0, $a3, $a2
/* B180 8001A980 0800E003 */  jr         $ra
/* B184 8001A984 540082AC */   sw        $v0, 0x54($a0)
.L8001A988:
/* B188 8001A988 5C00868C */  lw         $a2, 0x5C($a0)
/* B18C 8001A98C 00000000 */  nop
/* B190 8001A990 2A10C300 */  slt        $v0, $a2, $v1
/* B194 8001A994 03004010 */  beqz       $v0, .L8001A9A4
/* B198 8001A998 2310E600 */   subu      $v0, $a3, $a2
/* B19C 8001A99C 0800E003 */  jr         $ra
/* B1A0 8001A9A0 540082AC */   sw        $v0, 0x54($a0)
.L8001A9A4:
/* B1A4 8001A9A4 0800E003 */  jr         $ra
/* B1A8 8001A9A8 540085AC */   sw        $a1, 0x54($a0)
.size ETLookat, . - ETLookat
