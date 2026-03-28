## Why

京都旅行 App 目前僅有 Xcode 預設模板（Hello, world!），缺乏任何功能架構。需要建立 App 基礎骨架，為四大核心模組（交通、景點、慶典、餐廳）提供導覽框架、資料模型與佔位畫面，使後續功能開發有明確的結構基礎可依循。

## What Changes

- 新增 `TabView` 四分頁導覽（交通、景點、慶典、餐廳）
- 新增四大領域的資料模型（`TransportationMethod`、`Attraction`、`Festival`、`Restaurant` 等）
- 新增各模組的 List View 與 Detail View 佔位畫面
- 新增共用 UI 元件（`InfoRow`）
- 新增靜態範例資料（`SampleData`）供開發階段使用
- 修改 `ContentView.swift` 由預設模板改為 TabView 根畫面

## Capabilities

### New Capabilities

- `tab-navigation`: App 主要 TabView 導覽結構，包含四個分頁切換
- `transportation-browse`: 交通資訊的列表瀏覽與詳情檢視
- `attraction-browse`: 景點資訊的列表瀏覽與詳情檢視
- `festival-browse`: 慶典活動的列表瀏覽與詳情檢視
- `restaurant-browse`: 餐廳資訊的列表瀏覽與詳情檢視

### Modified Capabilities

（無既有 capability 需修改）

## Impact

- `kyototravelapp/ContentView.swift` — 從預設模板改為 TabView
- 新增約 14 個 Swift 檔案（Models、Views、Components、SampleData）
- 所有新檔案位於 `kyototravelapp/` 下，透過 PBXFileSystemSynchronizedRootGroup 自動被 Xcode 識別
- 無外部依賴、無網路層、無持久化層
