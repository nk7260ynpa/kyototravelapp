## 1. 配色方案

- [x] 1.1 建立 `Extensions/Color+Kyoto.swift`，定義京都傳統色彩 static properties
- [x] 1.2 更新 `Assets.xcassets/AccentColor.colorset` 為京都紅（#C41E3A）

## 2. 暗色模式

- [x] 2.1 確認 `kyototravelappApp.swift` 已設定 `.preferredColorScheme(.dark)`

## 3. 共用元件

- [x] 3.1 建立 `Components/StyledListRow.swift`（圓形圖示 + 標題 + 副標題）
- [x] 3.2 更新 `Components/InfoRow.swift` 套用京都配色

## 4. 列表 View 套用新樣式

- [x] 4.1 更新 `TransportationListView.swift` 使用 `StyledListRow`
- [x] 4.2 更新 `AttractionListView.swift` 使用 `StyledListRow`
- [x] 4.3 更新 `FestivalListView.swift` 使用 `StyledListRow`
- [x] 4.4 更新 `RestaurantListView.swift` 使用 `StyledListRow`

## 5. 詳情 View 套用新樣式

- [x] 5.1 更新 `TransportationDetailView.swift` 套用金色標題與卡片樣式
- [x] 5.2 更新 `AttractionDetailView.swift` 套用金色標題與卡片樣式
- [x] 5.3 更新 `FestivalDetailView.swift` 套用金色標題與卡片樣式
- [x] 5.4 更新 `RestaurantDetailView.swift` 套用金色標題與卡片樣式

## 6. TabView 樣式

- [x] 6.1 更新 `ContentView.swift` TabView 套用京都配色

## 7. 啟動畫面

- [x] 7.1 設定 Launch Screen 背景色為墨色

## 8. 驗證

- [x] 8.1 執行 xcodebuild 確認專案建置成功
