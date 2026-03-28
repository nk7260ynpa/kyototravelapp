## Why

App 目前使用 SwiftUI 預設樣式，缺乏視覺識別度。作為京都旅遊 App，需要建立符合京都和風美學的視覺主題，提升使用者體驗與品牌一致性。

## What Changes

- 建立京都風格配色方案（日本傳統色彩：深紫、朱紅、金色、墨色等）
- 設定 AccentColor 與自訂 Color extension
- 強制全域暗色模式
- 改善列表行設計（圖示、間距、字型層級）
- 改善 Detail View 版面配置（標題區塊、資訊卡片樣式）
- 設計啟動畫面（Launch Screen）

## Capabilities

### New Capabilities

- `color-theme`: 京都風格配色方案定義，包含 AccentColor、自訂色彩 extension、暗色模式設定
- `launch-screen`: App 啟動畫面設計，展示京都意象
- `list-row-style`: 列表行的統一視覺樣式，包含圖示、字型層級與間距規範
- `detail-view-style`: 詳情頁面的統一版面配置，包含標題區塊與資訊卡片樣式

### Modified Capabilities

- `transportation-browse`: 套用新的列表行樣式與詳情頁版面
- `attraction-browse`: 套用新的列表行樣式與詳情頁版面
- `festival-browse`: 套用新的列表行樣式與詳情頁版面
- `restaurant-browse`: 套用新的列表行樣式與詳情頁版面

## Impact

- `kyototravelappApp.swift` — 已加入 `.preferredColorScheme(.dark)`
- `Assets.xcassets/` — 更新 AccentColor、新增自訂色彩集
- `Components/` — 新增或修改共用樣式元件
- `Views/**/*.swift` — 所有 List View 與 Detail View 套用新樣式
- 無外部依賴變更
