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
if (GATE==1'b0&&SCE==1'b1) (CLK +=> GCLK)=(0:0:0, 0:0:0);
if (GATE==1'b1&&SCE==1'b0) (CLK +=> GCLK)=(0:0:0, 0:0:0);
if (GATE==1'b1&&SCE==1'b1) (CLK +=> GCLK)=(0:0:0, 0:0:0);
if (GATE==1'b0&&SCE==1'b0) (CLK +=> GCLK)=(0:0:0, 0:0:0);
$setuphold ( posedge CLK , posedge SCE , 0:0:0 , 0:0:0 , notifier , SCE_AWAKE , SCE_AWAKE , CLK_delayed , SCE_delayed ) ;
$setuphold ( posedge CLK , negedge SCE , 0:0:0 , 0:0:0 , notifier , SCE_AWAKE , SCE_AWAKE , CLK_delayed , SCE_delayed ) ;
$setuphold ( posedge CLK , posedge GATE , 0:0:0 , 0:0:0 , notifier , GATE_AWAKE , GATE_AWAKE , CLK_delayed , GATE_delayed ) ;
$setuphold ( posedge CLK , negedge GATE , 0:0:0 , 0:0:0 , notifier , GATE_AWAKE , GATE_AWAKE , CLK_delayed , GATE_delayed ) ;
$width ( negedge CLK &&& AWAKE , 1.0:1.0:1.0 , 0 , notifier ) ;
endspecify