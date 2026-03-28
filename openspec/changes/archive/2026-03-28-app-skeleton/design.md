## Context

京都旅行 App 目前僅有 Xcode 預設模板，無任何功能架構。本次變更為 App 建立基礎骨架，包含導覽結構、資料模型、佔位畫面與共用元件，作為後續功能迭代的基礎。

專案使用 `PBXFileSystemSynchronizedRootGroup`，在 `kyototravelapp/` 目錄下新增的檔案會自動被 Xcode 識別，無需手動編輯 `project.pbxproj`。

## Goals / Non-Goals

**Goals:**

- 建立 TabView 四分頁導覽架構
- 定義四大領域的資料模型（交通、景點、慶典、餐廳）
- 各模組提供 List + Detail 佔位畫面
- 建立可複用的共用 UI 元件
- 提供靜態範例資料供開發階段使用

**Non-Goals:**

- 不建立網路層或 API 整合
- 不實作搜尋或篩選功能
- 不加入圖片資源（僅使用 SF Symbols）
- 不建立持久化或快取機制
- 不建立單元測試（骨架階段）
- 不處理多語系（直接使用繁體中文硬編碼）

## Decisions

### 1. Feature-based 資料夾結構

```
kyototravelapp/
  Models/            — 資料模型
  SampleData/        — 靜態範例資料
  Views/
    Transportation/  — 交通模組 View
    Attractions/     — 景點模組 View
    Festivals/       — 慶典模組 View
    Restaurants/     — 餐廳模組 View
  Components/        — 共用 UI 元件
```

**理由**：四大模組各自獨立，feature-based 結構讓相關檔案集中，便於後續獨立迭代。Models 獨立存放是因為未來可能跨模組使用（如收藏功能）。

**替代方案**：layer-based（Models/Views/ViewModels 扁平結構）— 在模組數量增加後不易維護，故不採用。

### 2. 資料模型使用 struct + Identifiable + Codable

**理由**：struct 為 value type，天然 Sendable，與 `SWIFT_DEFAULT_ACTOR_ISOLATION = MainActor` 設定相容。Codable 為未來 JSON 資料來源預留擴充性。

**替代方案**：使用 class + @Observable — 目前為靜態資料，無需觀察變化，過早引入增加複雜度。

### 3. SampleData 使用 enum namespace

**理由**：enum 無 case 時不可被實例化，純粹作為靜態資料命名空間，語意清晰。

### 4. Tab 圖示選用

| Tab | SF Symbol | 理由 |
|-----|-----------|------|
| 交通 | `tram.fill` | 代表軌道交通 |
| 景點 | `building.columns.fill` | 寺廟/神社建築意象 |
| 慶典 | `party.popper.fill` | 慶祝/祭典意象 |
| 餐廳 | `fork.knife` | 通用餐飲符號 |

## Risks / Trade-offs

- **[範例資料與正式資料結構可能不一致]** → 範例資料僅用於骨架驗證，後續引入實際資料時再調整模型欄位
- **[中文硬編碼不利於多語系]** → 骨架階段優先確保功能結構，多語系抽取為獨立後續任務
- **[SF Symbol 名稱可能在未來 SDK 變更]** → 所選圖示皆為穩定版本，iOS 26.2 確認可用
