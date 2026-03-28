## Context

App 目前使用 SwiftUI 預設樣式（白底、藍色強調色），視覺上缺乏京都旅遊 App 的氛圍。已在 `kyototravelappApp.swift` 加入 `.preferredColorScheme(.dark)` 強制暗色模式。需要建立完整的京都和風視覺主題。

## Goals / Non-Goals

**Goals:**

- 建立京都風格配色方案（日本傳統色彩）
- 強制暗色模式作為預設
- 統一列表行視覺樣式（圖示、字型層級、間距）
- 統一詳情頁版面配置（標題區塊、資訊卡片）
- 設計啟動畫面

**Non-Goals:**

- 不支援亮色/暗色模式切換（僅暗色）
- 不加入自訂字型（使用系統字型）
- 不加入動畫或轉場效果
- 不加入圖片素材（僅 SF Symbols + 色彩）

## Decisions

### 1. 京都傳統配色方案

| 色彩名稱 | 用途 | Hex（暗色模式） | 日本傳統色名 |
|---------|------|----------------|-------------|
| kyotoAccent | 強調色、可互動元素 | #C41E3A | 紅（くれない） |
| kyotoGold | 重要標題、高亮 | #C5A253 | 金色（きんいろ） |
| kyotoPurple | 次要強調、分類標籤 | #7B5EA7 | 江戸紫（えどむらさき） |
| kyotoBackground | 主背景 | #1A1A2E | 墨色（すみいろ） |
| kyotoCardBackground | 卡片/Section 背景 | #252540 | — |
| kyotoTextPrimary | 主要文字 | #F0E6D3 | 鳥の子色 |
| kyotoTextSecondary | 次要文字 | #A0998A | — |

**理由**：選用紅、金、紫為京都最具代表性的傳統色彩（鳥居紅、金閣金、貴族紫），搭配墨色背景營造沉穩和風氛圍。

**替代方案**：使用系統 Dynamic Color — 無法表現京都特色，故不採用。

### 2. 色彩實作方式：Color Extension

建立 `Extensions/Color+Kyoto.swift`，以 `Color` static property 方式定義色彩。

**理由**：比 Asset Catalog Color Set 更易於程式碼中使用與維護，且支援 SwiftUI Preview。AccentColor 同時在 Asset Catalog 設定以覆蓋系統預設。

### 3. 列表行樣式

統一使用卡片式列表行：
- 左側 SF Symbol 圓形圖示（kyotoAccent 背景）
- 右側標題 + 副標題（字型層級分明）
- 圓角背景卡片

建立 `Components/StyledListRow.swift` 共用元件。

### 4. 詳情頁樣式

統一使用：
- 頂部大標題區塊（kyotoGold 色標題）
- 資訊以卡片分組呈現（圓角背景）
- 修改 `InfoRow` 加入色彩樣式

### 5. 啟動畫面

使用 SwiftUI 的 Launch Screen storyboard 設定：
- 墨色背景
- 中央顯示 App 名稱「京都旅行」（kyotoGold 色）

透過 Info.plist 的 `UILaunchScreen` 設定背景色。

## Risks / Trade-offs

- **[自訂色彩在不同裝置上可能顯示差異]** → 選用中等飽和度色彩，避免極端值
- **[僅支援暗色模式限制使用者選擇]** → 符合 App 定位（和風沉穩風格），後續可擴充
- **[列表行樣式變更影響所有四個模組]** → 使用共用元件統一管理，降低維護成本
