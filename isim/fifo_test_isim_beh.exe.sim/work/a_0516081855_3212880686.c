/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;
static const char *ng2 = "C:/Users/Mins/Documents/Xilinx/RealTimeFiltering/fifo_test.vhd";
extern char *IEEE_P_3564397177;
extern char *STD_TEXTIO;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
void ieee_p_3564397177_sub_1281154728_91900896(char *, char *, char *, char *, char *, unsigned char , int );


char *work_a_0516081855_3212880686_sub_3577097316_3057020925(char *t1, char *t2, char *t3, char *t4)
{
    char t5[128];
    char t6[24];
    char t7[16];
    char t18[16];
    char t46[16];
    char *t0;
    char *t8;
    unsigned int t9;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    int t14;
    int t15;
    int t16;
    unsigned int t17;
    char *t19;
    unsigned int t20;
    int t21;
    int t22;
    char *t23;
    char *t24;
    int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned char t34;
    char *t35;
    char *t36;
    int t37;
    char *t38;
    int t39;
    char *t40;
    int t41;
    int t42;
    int t43;
    int t44;
    int t45;
    char *t47;
    char *t48;
    int t49;
    char *t50;
    int t51;
    int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    unsigned char t56;
    char *t57;
    char *t58;
    char *t59;
    int t60;
    int t61;
    int t62;
    unsigned int t63;
    int t64;
    int t65;
    char *t66;
    int t67;
    char *t68;
    int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;
    char *t73;
    unsigned int t74;

LAB0:    t8 = (t4 + 12U);
    t9 = *((unsigned int *)t8);
    t10 = (t7 + 0U);
    t11 = (t10 + 0U);
    *((unsigned int *)t11) = t9;
    t11 = (t10 + 4U);
    *((int *)t11) = 1;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t12 = (1 - t9);
    t13 = (t12 * -1);
    t13 = (t13 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t13;
    t11 = (t4 + 12U);
    t13 = *((unsigned int *)t11);
    t14 = (8 * t13);
    t15 = (t14 - 1);
    t16 = (0 - t15);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t17 = (t17 * 1U);
    t19 = (t4 + 12U);
    t20 = *((unsigned int *)t19);
    t21 = (8 * t20);
    t22 = (t21 - 1);
    t23 = (t18 + 0U);
    t24 = (t23 + 0U);
    *((int *)t24) = t22;
    t24 = (t23 + 4U);
    *((int *)t24) = 0;
    t24 = (t23 + 8U);
    *((int *)t24) = -1;
    t25 = (0 - t22);
    t26 = (t25 * -1);
    t26 = (t26 + 1);
    t24 = (t23 + 12U);
    *((unsigned int *)t24) = t26;
    t24 = (t5 + 4U);
    t27 = ((IEEE_P_2592010699) + 4024);
    t28 = (t24 + 88U);
    *((char **)t28) = t27;
    t29 = (char *)alloca(t17);
    t30 = (t24 + 56U);
    *((char **)t30) = t29;
    xsi_type_set_default_value(t27, t29, t18);
    t31 = (t24 + 64U);
    *((char **)t31) = t18;
    t32 = (t24 + 80U);
    *((unsigned int *)t32) = t17;
    t33 = (t6 + 4U);
    t34 = (t3 != 0);
    if (t34 == 1)
        goto LAB3;

LAB2:    t35 = (t6 + 12U);
    *((char **)t35) = t4;
    t36 = (t7 + 8U);
    t37 = *((int *)t36);
    t38 = (t7 + 4U);
    t39 = *((int *)t38);
    t40 = (t7 + 0U);
    t41 = *((int *)t40);
    t42 = t41;
    t43 = t39;

LAB4:    t44 = (t43 * t37);
    t45 = (t42 * t37);
    if (t45 <= t44)
        goto LAB5;

LAB7:    t8 = (t24 + 56U);
    t10 = *((char **)t8);
    t8 = (t18 + 12U);
    t9 = *((unsigned int *)t8);
    t9 = (t9 * 1U);
    t0 = xsi_get_transient_memory(t9);
    memcpy(t0, t10, t9);
    t11 = (t18 + 0U);
    t12 = *((int *)t11);
    t19 = (t18 + 4U);
    t14 = *((int *)t19);
    t23 = (t18 + 8U);
    t15 = *((int *)t23);
    t27 = (t2 + 0U);
    t28 = (t27 + 0U);
    *((int *)t28) = t12;
    t28 = (t27 + 4U);
    *((int *)t28) = t14;
    t28 = (t27 + 8U);
    *((int *)t28) = t15;
    t16 = (t14 - t12);
    t13 = (t16 * t15);
    t13 = (t13 + 1);
    t28 = (t27 + 12U);
    *((unsigned int *)t28) = t13;

LAB1:    return t0;
LAB3:    *((char **)t33) = t3;
    goto LAB2;

LAB5:    t47 = (t3 + 0);
    t48 = (t7 + 0U);
    t49 = *((int *)t48);
    t50 = (t7 + 8U);
    t51 = *((int *)t50);
    t52 = (t42 - t49);
    t26 = (t52 * t51);
    t53 = (1U * t26);
    t54 = (0 + t53);
    t55 = (t47 + t54);
    t56 = *((unsigned char *)t55);
    t57 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t46, ((int)(t56)), 8);
    t58 = (t24 + 56U);
    t59 = *((char **)t58);
    t58 = (t18 + 0U);
    t60 = *((int *)t58);
    t61 = (8 * t42);
    t62 = (t61 - 1);
    t63 = (t60 - t62);
    t64 = (8 * t42);
    t65 = (t64 - 8);
    t66 = (t18 + 4U);
    t67 = *((int *)t66);
    t68 = (t18 + 8U);
    t69 = *((int *)t68);
    xsi_vhdl_check_range_of_slice(t60, t67, t69, t62, t65, -1);
    t70 = (t63 * 1U);
    t71 = (0 + t70);
    t72 = (t59 + t71);
    t73 = (t46 + 12U);
    t74 = *((unsigned int *)t73);
    t74 = (t74 * 1U);
    memcpy(t72, t57, t74);

LAB6:    if (t42 == t43)
        goto LAB7;

LAB8:    t12 = (t42 + t37);
    t42 = t12;
    goto LAB4;

LAB9:;
}

static void work_a_0516081855_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 7496U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(148, ng2);
    t2 = (t0 + 8688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(149, ng2);
    t2 = (t0 + 5968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 7304);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(150, ng2);
    t2 = (t0 + 8688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(151, ng2);
    t2 = (t0 + 5968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 7304);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_0516081855_3212880686_p_1(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int t15;

LAB0:    xsi_set_current_line(159, ng2);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 8560);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(160, ng2);
    t4 = (t0 + 3752U);
    t8 = *((char **)t4);
    t9 = *((int *)t8);
    t10 = (t9 == 127);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(163, ng2);
    t2 = (t0 + 3752U);
    t4 = *((char **)t2);
    t9 = *((int *)t4);
    t15 = (t9 + 1);
    t2 = (t0 + 8752);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((int *)t12) = t15;
    xsi_driver_first_trans_fast(t2);

LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(161, ng2);
    t4 = (t0 + 8752);
    t11 = (t4 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((int *)t14) = 0;
    xsi_driver_first_trans_fast(t4);
    goto LAB9;

}

static void work_a_0516081855_3212880686_p_2(char *t0)
{
    char t28[16];
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    unsigned char t18;
    unsigned char t19;
    unsigned char t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    int t29;

LAB0:    xsi_set_current_line(198, ng2);
    t5 = (t0 + 1992U);
    t6 = *((char **)t5);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    if (t8 == 1)
        goto LAB14;

LAB15:    t4 = (unsigned char)0;

LAB16:    if (t4 == 1)
        goto LAB11;

LAB12:    t3 = (unsigned char)0;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(226, ng2);

LAB3:    t5 = (t0 + 8576);
    *((int *)t5) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(200, ng2);
    t16 = (t0 + 6416U);
    t20 = std_textio_endfile(t16);
    t21 = (!(t20));
    if (t21 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(221, ng2);
    t5 = (t0 + 9584);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t16 = *((char **)t12);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(222, ng2);
    t5 = (t0 + 6416U);
    std_textio_file_close(t5);
    xsi_set_current_line(223, ng2);
    t5 = xsi_get_transient_memory(8U);
    memset(t5, 0, 8U);
    t6 = t5;
    memset(t6, (unsigned char)2, 8U);
    t9 = (t0 + 9648);
    t12 = (t9 + 56U);
    t16 = *((char **)t12);
    t17 = (t16 + 56U);
    t22 = *((char **)t17);
    memcpy(t22, t5, 8U);
    xsi_driver_first_trans_fast(t9);

LAB18:    goto LAB3;

LAB5:    t16 = (t0 + 1032U);
    t17 = *((char **)t16);
    t18 = *((unsigned char *)t17);
    t19 = (t18 == (unsigned char)3);
    t1 = t19;
    goto LAB7;

LAB8:    t5 = (t0 + 992U);
    t15 = xsi_signal_has_event(t5);
    t2 = t15;
    goto LAB10;

LAB11:    t5 = (t0 + 1192U);
    t12 = *((char **)t5);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)2);
    t3 = t14;
    goto LAB13;

LAB14:    t5 = (t0 + 3112U);
    t9 = *((char **)t5);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)2);
    t4 = t11;
    goto LAB16;

LAB17:    xsi_set_current_line(202, ng2);
    t22 = (t0 + 4552U);
    t23 = *((char **)t22);
    t22 = (t0 + 8816);
    t24 = (t22 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t23, 8U);
    xsi_driver_first_trans_fast(t22);
    xsi_set_current_line(203, ng2);
    t5 = (t0 + 4712U);
    t6 = *((char **)t5);
    t5 = (t0 + 8880);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t6, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(204, ng2);
    t5 = (t0 + 2952U);
    t6 = *((char **)t5);
    t5 = (t0 + 8944);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t6, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(206, ng2);
    t5 = (t0 + 4872U);
    t6 = *((char **)t5);
    t5 = (t0 + 9008);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t6, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(207, ng2);
    t5 = (t0 + 5032U);
    t6 = *((char **)t5);
    t5 = (t0 + 9072);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t6, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(208, ng2);
    t5 = (t0 + 5192U);
    t6 = *((char **)t5);
    t5 = (t0 + 9136);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t6, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(209, ng2);
    t5 = (t0 + 1832U);
    t6 = *((char **)t5);
    t5 = (t0 + 9200);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t6, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(211, ng2);
    t5 = (t0 + 5352U);
    t6 = *((char **)t5);
    t5 = (t0 + 9264);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t6, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(212, ng2);
    t5 = (t0 + 5512U);
    t6 = *((char **)t5);
    t5 = (t0 + 9328);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t6, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(213, ng2);
    t5 = (t0 + 5672U);
    t6 = *((char **)t5);
    t5 = (t0 + 9392);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t6, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(217, ng2);
    t5 = (t0 + 3752U);
    t6 = *((char **)t5);
    t29 = *((int *)t6);
    t5 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t28, t29, 8);
    t9 = (t0 + 9456);
    t12 = (t9 + 56U);
    t16 = *((char **)t12);
    t17 = (t16 + 56U);
    t22 = *((char **)t17);
    memcpy(t22, t5, 8U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(219, ng2);
    t5 = (t0 + 9520);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t16 = *((char **)t12);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast(t5);
    goto LAB18;

}

static void work_a_0516081855_3212880686_p_3(char *t0)
{
    char t12[8];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(234, ng2);
    t2 = (t0 + 4072U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)2);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(240, ng2);
    t2 = (t0 + 4072U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB8;

LAB10:
LAB9:
LAB3:    t2 = (t0 + 8592);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(236, ng2);
    t2 = (t0 + 8048);
    t9 = (t0 + 6840U);
    t10 = (t0 + 3912U);
    t11 = *((char **)t10);
    memcpy(t12, t11, 8U);
    t10 = (t0 + 14684U);
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t9, t12, t10, (unsigned char)0, 0);
    xsi_set_current_line(237, ng2);
    t2 = (t0 + 8048);
    t3 = (t0 + 6520U);
    t6 = (t0 + 6840U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t6);
    goto LAB3;

LAB5:    t2 = (t0 + 4232U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;
    goto LAB7;

LAB8:    xsi_set_current_line(241, ng2);
    t2 = (t0 + 6520U);
    std_textio_file_close(t2);
    goto LAB9;

}


extern void work_a_0516081855_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0516081855_3212880686_p_0,(void *)work_a_0516081855_3212880686_p_1,(void *)work_a_0516081855_3212880686_p_2,(void *)work_a_0516081855_3212880686_p_3};
	static char *se[] = {(void *)work_a_0516081855_3212880686_sub_3577097316_3057020925};
	xsi_register_didat("work_a_0516081855_3212880686", "isim/fifo_test_isim_beh.exe.sim/work/a_0516081855_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
