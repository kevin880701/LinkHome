# LinkHome

## 專案介紹

**LinkHome** 是一款智能家電控制應用程式，最初為雙平台使用原生技術開發，主要功能為控制智能飲水機。用戶可以透過此應用程式進行飲水機的各種操作，如啟動、停止、溫度調節和狀態監測等。

## 藍牙溝通說明

APP 與裝置藍牙溝通採用了 BluFi 協議。 [BluFi 官方文件](https://docs.espressif.com/projects/esp-idf/zh_CN/stable/esp32/api-guides/blufi.html)

### 藍牙指令與功能

1. **取得 Wi-Fi 列表**
    - 發送 `{"cmd":"scan"}` 指令，可以取得裝置可連接的 Wi-Fi 列表。

2. **配對 Wi-Fi**
    - 發送 `{"cmd":"prov","ssid":"iHouse","pass":"0423357797"}` 指令，將裝置與指定的 Wi-Fi 進行配對。

3. **取得裝置資訊**
    - 發送 `{"cmd":"info"}` 指令，可以取得裝置的詳細資訊。若返回的 IP 為空，則表示 Wi-Fi 配對失敗。

4. **啟動裝置**
    - 發送 `{"cmd":"activeDevice", "name":"裝置MAC", "token":"登入token", "homeid":""}` 指令來啟動裝置。如果返回的 `result` 為 `0`，則表示裝置註冊成功。

## 環境

### 開發環境

- **URL**: [http://192.168.11.92:8180](http://192.168.11.92:8180/)
    - **登入頁面**: [http://192.168.11.92:8180/login.html](http://192.168.11.92:8180/login.html)
- **帳號資訊**:
    - **總公司帳號**: `admin@cipw.com` / `aaaa`
    - **經銷商帳號**: `vendor@cipw.com` / `aaaaaa`
    - **工程師帳號**:
        - arv71470@cipw.com / `aaaaaa`
    - **一般用戶帳號**:
        - ivychi.cwo@gmail.com / `aaaaaa`
        - evi35398@nowni.com / `aaaaaa`
        - vbk48387@tccho.com / `aaaaaa`

### 正式環境

- **URL**: [https://cipw.cwoiot.com/](https://cipw.cwoiot.com/)
    - **登入頁面**: [https://cipw.cwoiot.com/haohsing/login.html](https://cipw.cwoiot.com/haohsing/login.html)
- **帳號資訊**:
    - **總公司帳號**: `admin@cipw.com` / `aaaa`
    - **經銷商帳號**: `vendor@cipw.com` / `aaaaaa`
- **APP 使用者帳號**:
    - emilyemily900606@gmail.com / `123456789`

## API 說明

### 任務類型代號對應

- **1**: 安裝
- **2**: 保養
- **3**: 維修
- **4**: 場勘
- **5**: 退貨

### API: `GET /v1/device`

- **type**: 裝置擁有者判斷
    - `0`: 擁有者
    - `1`: 被分享者

#### 裝置狀態判斷

在 `GET /v1/device` API 中，裝置的狀態會根據 `online`、`power` 和 `error` 這三個屬性進行判斷：

- 如果 `online` 為 `null`，表示該裝置不支援 Wi-Fi 功能，狀態為 `DeviceStatus.notSupportWifi`。
- 如果 `online` 為 `0`，表示裝置未連接，狀態為 `DeviceStatus.notConnect`。
- 如果 `power` 為 `0`，表示裝置已關機，狀態為 `DeviceStatus.shutDown`。
- 如果 `error` 為 `1`，表示裝置有錯誤，狀態為 `DeviceStatus.error`。
- 其他情況下，裝置處於連接狀態，狀態為 `DeviceStatus.connect`。

### API: `GET /v1/m`

- **status_name** (取自 `cipw maintenance_status` table):
    - `-1`: 暫存
    - `0`: 待處理
    - `1`: 已安排
    - `2`: 已完成
    - `3`: 取消
    - `4`: 異常

- **status** (取自 `cipw maintenance` 主 table):
    - `-1`: 暫存
    - `0`: 待處理
    - `1`: 已安排
    - `2`: 已完成
    - `3`: 取消
    - `4`: 異常

- **type_name** (取自 `cipw maintenance_type` table):
    - `1`: 安裝
    - `2`: 保養
    - `3`: 維修
    - `4`: 場勘

- **continuance** (取自 `cipw maintenance` 主 table):
    - 是否需要重新派單, 預設為 `0`

## UI
[舊版Figma 連結](https://www.figma.com/design/NGAykiBp4njlwWjNxriURn/%E8%B1%AA%E6%98%9F?node-id=1-7&t=bwG2TX3yUVnUB1CZ-1)
[Figma 連結](https://www.figma.com/design/DakLRuAmNKRfZdsXZvoTii/%F0%9F%93%8D-%5BUI%5D-2024---APP?node-id=1-7&t=4mYOq6kZjdM85i6X-1)
