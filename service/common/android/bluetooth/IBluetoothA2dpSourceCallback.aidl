/*
 * Copyright (C) 2017 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.bluetooth;

import android.bluetooth.BluetoothA2dpCodecConfig;

oneway interface IBluetoothA2dpSourceCallback {
    void OnRegistered(int status);
    void OnConnectionState(String device_address, int state);
    void OnAudioState(String device_address, int state);
    void OnAudioConfig(
        String device_address,
        in BluetoothA2dpCodecConfig codec_config,
        in BluetoothA2dpCodecConfig[] codecs_local_capabilities,
        in BluetoothA2dpCodecConfig[] codecs_selectable_capabilities);
}
