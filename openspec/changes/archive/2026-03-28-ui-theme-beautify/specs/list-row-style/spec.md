## ADDED Requirements

### Requirement: 統一列表行樣式元件

App SHALL 提供 `StyledListRow` 共用元件，所有模組的列表行 MUST 使用此元件呈現。元件 MUST 包含：左側圓形圖示區域、右側標題與副標題文字。

#### Scenario: 列表行顯示圖示與文字

- **WHEN** 列表行使用 `StyledListRow` 呈現
- **THEN** MUST 顯示左側圓形背景圖示、右側標題（headline 字型）與副標題（subheadline 字型、次要色）

### Requirement: 列表行使用京都配色

列表行 MUST 使用京都配色方案。圖示背景使用 `kyotoAccent`，標題使用 `kyotoTextPrimary`，副標題使用 `kyotoTextSecondary`。

#### Scenario: 列表行色彩符合主題

- **WHEN** 顯示任何模組的列表
- **THEN** 列表行的色彩 MUST 符合京都配色方案
