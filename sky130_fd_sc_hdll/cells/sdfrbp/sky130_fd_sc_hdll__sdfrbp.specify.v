/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/

specify
if (CLK==1'b0&&D==1'b0&&SCD==1'b0&&SCE==1'b0) (negedge RESET_B => (Q +: 1'b0))=(0:0:0, 0:0:0);
if (CLK==1'b0&&D==1'b0&&SCD==1'b0&&SCE==1'b1) (negedge RESET_B => (Q +: 1'b0))=(0:0:0, 0:0:0);
if (CLK==1'b0&&D==1'b0&&SCD==1'b1&&SCE==1'b0) (negedge RESET_B => (Q +: 1'b0))=(0:0:0, 0:0:0);
if (CLK==1'b0&&D==1'b0&&SCD==1'b1&&SCE==1'b1) (negedge RESET_B => (Q +: 1'b0))=(0:0:0, 0:0:0);
if (CLK==1'b0&&D==1'b1&&SCD==1'b0&&SCE==1'b0) (negedge RESET_B => (Q +: 1'b0))=(0:0:0, 0:0:0);
if (CLK==1'b0&&D==1'b1&&SCD==1'b0&&SCE==1'b1) (negedge RESET_B => (Q +: 1'b0))=(0:0:0, 0:0:0);
if (CLK==1'b0&&D==1'b1&&SCD==1'b1&&SCE==1'b0) (negedge RESET_B => (Q +: 1'b0))=(0:0:0, 0:0:0);
if (CLK==1'b0&&D==1'b1&&SCD==1'b1&&SCE==1'b1) (negedge RESET_B => (Q +: 1'b0))=(0:0:0, 0:0:0);
if (CLK==1'b1&&D==1'b0&&SCD==1'b0&&SCE==1'b0) (negedge RESET_B => (Q +: 1'b0))=(0:0:0, 0:0:0);
if (CLK==1'b1&&D==1'b0&&SCD==1'b0&&SCE==1'b1) (negedge RESET_B => (Q +: 1'b0))=(0:0:0, 0:0:0);
if (CLK==1'b1&&D==1'b0&&SCD==1'b1&&SCE==1'b0) (negedge RESET_B => (Q +: 1'b0))=(0:0:0, 0:0:0);
if (CLK==1'b1&&D==1'b0&&SCD==1'b1&&SCE==1'b1) (negedge RESET_B => (Q +: 1'b0))=(0:0:0, 0:0:0);
if (CLK==1'b1&&D==1'b1&&SCD==1'b0&&SCE==1'b0) (negedge RESET_B => (Q +: 1'b0))=(0:0:0, 0:0:0);
if (CLK==1'b1&&D==1'b1&&SCD==1'b0&&SCE==1'b1) (negedge RESET_B => (Q +: 1'b0))=(0:0:0, 0:0:0);
if (CLK==1'b1&&D==1'b1&&SCD==1'b1&&SCE==1'b0) (negedge RESET_B => (Q +: 1'b0))=(0:0:0, 0:0:0);
if (CLK==1'b1&&D==1'b1&&SCD==1'b1&&SCE==1'b1) (negedge RESET_B => (Q +: 1'b0))=(0:0:0, 0:0:0);
if (D==1'b0&&RESET_B==1'b1&&SCD==1'b1&&SCE==1'b1) (posedge CLK => (Q +: 1'b1))=(0:0:0, 0:0:0);
if (D==1'b1&&RESET_B==1'b1&&SCD==1'b0&&SCE==1'b0) (posedge CLK => (Q +: 1'b1))=(0:0:0, 0:0:0);
if (D==1'b1&&RESET_B==1'b1&&SCD==1'b1&&SCE==1'b0) (posedge CLK => (Q +: 1'b1))=(0:0:0, 0:0:0);
if (D==1'b1&&RESET_B==1'b1&&SCD==1'b1&&SCE==1'b1) (posedge CLK => (Q +: 1'b1))=(0:0:0, 0:0:0);
if (D==1'b0&&RESET_B==1'b1&&SCD==1'b0&&SCE==1'b0) (posedge CLK => (Q -: 1'b1))=(0:0:0, 0:0:0);
if (D==1'b0&&RESET_B==1'b1&&SCD==1'b0&&SCE==1'b1) (posedge CLK => (Q -: 1'b1))=(0:0:0, 0:0:0);
if (D==1'b0&&RESET_B==1'b1&&SCD==1'b1&&SCE==1'b0) (posedge CLK => (Q -: 1'b1))=(0:0:0, 0:0:0);
if (D==1'b1&&RESET_B==1'b1&&SCD==1'b0&&SCE==1'b1) (posedge CLK => (Q -: 1'b1))=(0:0:0, 0:0:0);
if (CLK==1'b0&&D==1'b0&&SCD==1'b0&&SCE==1'b0) (negedge RESET_B => (Q_N -: 1'b1))=(0:0:0, 0:0:0);
if (CLK==1'b0&&D==1'b0&&SCD==1'b0&&SCE==1'b1) (negedge RESET_B => (Q_N -: 1'b1))=(0:0:0, 0:0:0);
if (CLK==1'b0&&D==1'b0&&SCD==1'b1&&SCE==1'b0) (negedge RESET_B => (Q_N -: 1'b1))=(0:0:0, 0:0:0);
if (CLK==1'b0&&D==1'b0&&SCD==1'b1&&SCE==1'b1) (negedge RESET_B => (Q_N -: 1'b1))=(0:0:0, 0:0:0);
if (CLK==1'b0&&D==1'b1&&SCD==1'b0&&SCE==1'b0) (negedge RESET_B => (Q_N -: 1'b1))=(0:0:0, 0:0:0);
if (CLK==1'b0&&D==1'b1&&SCD==1'b0&&SCE==1'b1) (negedge RESET_B => (Q_N -: 1'b1))=(0:0:0, 0:0:0);
if (CLK==1'b0&&D==1'b1&&SCD==1'b1&&SCE==1'b0) (negedge RESET_B => (Q_N -: 1'b1))=(0:0:0, 0:0:0);
if (CLK==1'b0&&D==1'b1&&SCD==1'b1&&SCE==1'b1) (negedge RESET_B => (Q_N -: 1'b1))=(0:0:0, 0:0:0);
if (CLK==1'b1&&D==1'b0&&SCD==1'b0&&SCE==1'b0) (negedge RESET_B => (Q_N -: 1'b1))=(0:0:0, 0:0:0);
if (CLK==1'b1&&D==1'b0&&SCD==1'b0&&SCE==1'b1) (negedge RESET_B => (Q_N -: 1'b1))=(0:0:0, 0:0:0);
if (CLK==1'b1&&D==1'b0&&SCD==1'b1&&SCE==1'b0) (negedge RESET_B => (Q_N -: 1'b1))=(0:0:0, 0:0:0);
if (CLK==1'b1&&D==1'b0&&SCD==1'b1&&SCE==1'b1) (negedge RESET_B => (Q_N -: 1'b1))=(0:0:0, 0:0:0);
if (CLK==1'b1&&D==1'b1&&SCD==1'b0&&SCE==1'b0) (negedge RESET_B => (Q_N -: 1'b1))=(0:0:0, 0:0:0);
if (CLK==1'b1&&D==1'b1&&SCD==1'b0&&SCE==1'b1) (negedge RESET_B => (Q_N -: 1'b1))=(0:0:0, 0:0:0);
if (CLK==1'b1&&D==1'b1&&SCD==1'b1&&SCE==1'b0) (negedge RESET_B => (Q_N -: 1'b1))=(0:0:0, 0:0:0);
if (CLK==1'b1&&D==1'b1&&SCD==1'b1&&SCE==1'b1) (negedge RESET_B => (Q_N -: 1'b1))=(0:0:0, 0:0:0);
if (D==1'b0&&RESET_B==1'b1&&SCD==1'b0&&SCE==1'b0) (posedge CLK => (Q_N +: 1'b1))=(0:0:0, 0:0:0);
if (D==1'b0&&RESET_B==1'b1&&SCD==1'b0&&SCE==1'b1) (posedge CLK => (Q_N +: 1'b1))=(0:0:0, 0:0:0);
if (D==1'b0&&RESET_B==1'b1&&SCD==1'b1&&SCE==1'b0) (posedge CLK => (Q_N +: 1'b1))=(0:0:0, 0:0:0);
if (D==1'b1&&RESET_B==1'b1&&SCD==1'b0&&SCE==1'b1) (posedge CLK => (Q_N +: 1'b1))=(0:0:0, 0:0:0);
if (D==1'b0&&RESET_B==1'b1&&SCD==1'b1&&SCE==1'b1) (posedge CLK => (Q_N -: 1'b1))=(0:0:0, 0:0:0);
if (D==1'b1&&RESET_B==1'b1&&SCD==1'b0&&SCE==1'b0) (posedge CLK => (Q_N -: 1'b1))=(0:0:0, 0:0:0);
if (D==1'b1&&RESET_B==1'b1&&SCD==1'b1&&SCE==1'b0) (posedge CLK => (Q_N -: 1'b1))=(0:0:0, 0:0:0);
if (D==1'b1&&RESET_B==1'b1&&SCD==1'b1&&SCE==1'b1) (posedge CLK => (Q_N -: 1'b1))=(0:0:0, 0:0:0);
$recrem ( posedge RESET_B , posedge CLK , 0:0:0 , 0:0:0 , notifier , AWAKE , AWAKE , RESETB_delayed , CLK_delayed ) ;
$setuphold ( posedge CLK , posedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ;
$setuphold ( posedge CLK , negedge D , 0:0:0 , 0:0:0 , notifier , COND1 , COND1 , CLK_delayed , D_delayed ) ;
$setuphold ( posedge CLK , posedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ;
$setuphold ( posedge CLK , negedge SCD , 0:0:0 , 0:0:0 , notifier , COND2 , COND2 , CLK_delayed , SCD_delayed ) ;
$setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ;
$setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , COND3 , COND3 , CLK_delayed , SCE_delayed ) ;
$width ( posedge CLK &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ;
$width ( negedge CLK &&& COND4 , 1.0:1.0:1.0 , 0 , notifier ) ;
$width ( negedge RESET_B &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ;
endspecify