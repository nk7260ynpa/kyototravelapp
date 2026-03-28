# 京都旅行 App

京都旅遊資訊 iOS App，提供交通、景點、慶典、餐廳等旅遊資訊，
協助使用者規劃與享受京都之旅。

## 技術規格

- **平台**: iOS 26.2+（iPhone + iPad）
- **語言**: Swift 5.0
- **UI 框架**: SwiftUI
- **併發模型**: Swift Concurrency（MainActor 預設隔離）
- **Bundle ID**: com.chen.kyototravelapp

## 專案架構

```
kyototravelapp/
├── kyototravelappApp.swift          # App 進入點（@main）
├── ContentView.swift                # TabView 四分頁導覽
├── Models/                          # 資料模型
│   ├── Transportation.swift         # 交通方式、票券、車站
│   ├── Attraction.swift             # 景點（含分類 enum）
│   ├── Festival.swift               # 慶典活動
│   └── Restaurant.swift             # 餐廳（含料理類型 enum）
├── Views/
│   ├── Transportation/              # 交通模組 List + Detail
│   ├── Attractions/                 # 景點模組 List + Detail
│   ├── Festivals/                   # 慶典模組 List + Detail
│   └── Restaurants/                 # 餐廳模組 List + Detail
├── Components/                      # 共用 UI 元件
│   ├── InfoRow.swift                # 標籤 + 數值顯示列
│   └── StyledListRow.swift          # 圓形圖示列表行
├── Extensions/
│   └── Color+Kyoto.swift            # 京都傳統配色方案
├── SampleData/
│   └── SampleData.swift             # 靜態範例資料
└── Assets.xcassets/                 # AppIcon、AccentColor、LaunchBackground
```

## 視覺主題

採用京都傳統色彩的暗色主題：

| 色彩 | 用途 | 日本傳統色名 |
|------|------|-------------|
| 紅 #C41E3A | 強調色 | くれない |
| 金 #C5A253 | 標題高亮 | きんいろ |
| 紫 #7B5EA7 | 次要強調 | えどむらさき |
| 墨 #1A1A2E | 主背景 | すみいろ |

## 建置與執行

```bash
# 建置
xcodebuild -project kyototravelapp.xcodeproj \
  -scheme kyototravelapp \
  -sdk iphonesimulator \
  -destination 'platform=iOS Simulator,name=iPhone 17 Pro' \
  build

# 清除
xcodebuild -project kyototravelapp.xcodeproj \
  -scheme kyototravelapp \
  clean
```

或在 Xcode 中開啟 `kyototravelapp.xcodeproj`，選擇目標裝置後按 **⌘R** 執行。

## 開發工作流程

使用 [OpenSpec](openspec/) 進行規格驅動開發：

- `/opsx:propose` — 提案新功能
- `/opsx:apply` — 實作任務
- `/opsx:archive` — 歸檔完成的變更
