## MODIFIED Requirements

### Requirement: 慶典列表瀏覽

App SHALL 在慶典分頁中以列表形式顯示慶典活動資料。每筆項目 MUST 使用 `StyledListRow` 元件呈現，顯示慶典圖示、名稱與日期。

#### Scenario: 顯示慶典列表

- **WHEN** 使用者進入慶典分頁
- **THEN** 畫面顯示慶典列表，每行使用 `StyledListRow` 呈現，包含圓形圖示、名稱與日期資訊

### Requirement: 慶典詳情檢視

App SHALL 提供慶典活動的詳情畫面，使用京都主題樣式呈現。頂部 MUST 顯示金色標題，資訊區塊 MUST 以卡片樣式呈現。

#### Scenario: 點擊列表項目進入詳情

- **WHEN** 使用者點擊慶典列表中的任一項目
- **THEN** 導覽至該慶典的詳情畫面，顯示金色標題、日期、地點、說明與觀賞建議，以卡片式資訊區塊呈現
