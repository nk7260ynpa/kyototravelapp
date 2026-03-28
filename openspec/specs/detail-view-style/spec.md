## ADDED Requirements

### Requirement: 詳情頁標題區塊

所有模組的詳情頁 SHALL 在頂部顯示大標題區塊，標題文字使用 `kyotoGold` 色。

#### Scenario: 詳情頁顯示金色標題

- **WHEN** 使用者進入任一詳情頁面
- **THEN** 頁面頂部 MUST 顯示以金色呈現的項目名稱

### Requirement: 詳情頁資訊卡片樣式

詳情頁的資訊區塊 SHALL 以圓角卡片樣式呈現，使用 `kyotoCardBackground` 作為背景色。

#### Scenario: 資訊區塊以卡片樣式呈現

- **WHEN** 詳情頁顯示基本資訊區塊
- **THEN** 區塊 MUST 以圓角卡片樣式呈現，背景色為 `kyotoCardBackground`

### Requirement: InfoRow 樣式更新

`InfoRow` 元件 SHALL 使用京都配色方案。標籤文字使用 `kyotoTextSecondary`，數值文字使用 `kyotoTextPrimary`。

#### Scenario: InfoRow 色彩符合主題

- **WHEN** 詳情頁中顯示 InfoRow
- **THEN** 標籤與數值 MUST 使用京都配色方案的對應色彩
