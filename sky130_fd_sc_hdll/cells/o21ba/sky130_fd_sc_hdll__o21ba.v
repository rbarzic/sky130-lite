/**
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

`ifndef SKY130_FD_SC_HDLL__O21BA_V
`define SKY130_FD_SC_HDLL__O21BA_V

/**
 * o21ba: 2-input OR into first input of 2-input AND,
 *        2nd input inverted.
 *
 *        X = ((A1 | A2) & !B1_N)
 *
 * Verilog top module.
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

`ifdef USE_POWER_PINS

`ifdef FUNCTIONAL
`include "sky130_fd_sc_hdll__o21ba.pp.functional.v"
`else  // FUNCTIONAL
`include "sky130_fd_sc_hdll__o21ba.pp.behavioral.v"
`endif // FUNCTIONAL

`else  // USE_POWER_PINS

`ifdef FUNCTIONAL
`include "sky130_fd_sc_hdll__o21ba.functional.v"
`else  // FUNCTIONAL
`include "sky130_fd_sc_hdll__o21ba.behavioral.v"
`endif // FUNCTIONAL

`endif // USE_POWER_PINS

`default_nettype wire
`endif  // SKY130_FD_SC_HDLL__O21BA_V
