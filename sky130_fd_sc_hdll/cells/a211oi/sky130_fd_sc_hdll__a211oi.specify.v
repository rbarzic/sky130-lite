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
if (A2==1'b1&&B1==1'b0&&C1==1'b0) (A1 -=> Y)=(0:0:0, 0:0:0);
if (A1==1'b1&&B1==1'b0&&C1==1'b0) (A2 -=> Y)=(0:0:0, 0:0:0);
if (A1==1'b0&&A2==1'b0&&C1==1'b0) (B1 -=> Y)=(0:0:0, 0:0:0);
if (A1==1'b0&&A2==1'b1&&C1==1'b0) (B1 -=> Y)=(0:0:0, 0:0:0);
if (A1==1'b1&&A2==1'b0&&C1==1'b0) (B1 -=> Y)=(0:0:0, 0:0:0);
if (A1==1'b0&&A2==1'b0&&B1==1'b0) (C1 -=> Y)=(0:0:0, 0:0:0);
if (A1==1'b0&&A2==1'b1&&B1==1'b0) (C1 -=> Y)=(0:0:0, 0:0:0);
if (A1==1'b1&&A2==1'b0&&B1==1'b0) (C1 -=> Y)=(0:0:0, 0:0:0);
endspecify