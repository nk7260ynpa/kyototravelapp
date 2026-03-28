## ADDED Requirements

### Requirement: 京都風格配色方案

App SHALL 定義一組京都傳統風格色彩，透過 `Color` extension 提供 static property 存取。色彩 MUST 包含：kyotoAccent（紅）、kyotoGold（金）、kyotoPurple（紫）、kyotoBackground（墨色）、kyotoCardBackground、kyotoTextPrimary、kyotoTextSecondary。

#### Scenario: 色彩可在 SwiftUI View 中使用

- **WHEN** 在任何 SwiftUI View 中引用 `Color.kyotoAccent`
- **THEN** MUST 回傳預定義的紅色（#C41E3A）

### Requirement: AccentColor 設定

App SHALL 將 AccentColor 設定為京都紅（#C41E3A），覆蓋系統預設藍色強調色。

#### Scenario: 系統元件使用京都紅作為強調色

- **WHEN** 顯示任何使用 `.tint` 或 `.accentColor` 的系統元件
- **THEN** 元件 MUST 以京都紅色呈現

### Requirement: 強制暗色模式

App SHALL 強制使用暗色模式，無論裝置系統設定為何。

#### Scenario: 裝置設定為亮色模式

- **WHEN** 裝置系統外觀設定為亮色模式
- **THEN** App MUST 仍以暗色模式呈現
