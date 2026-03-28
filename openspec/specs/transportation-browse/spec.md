## MODIFIED Requirements

### Requirement: 交通方式列表瀏覽

App SHALL 在交通分頁中以列表形式顯示交通方式資料。每筆項目 MUST 使用 `StyledListRow` 元件呈現，顯示交通方式圖示、名稱與簡要說明。

#### Scenario: 顯示交通方式列表

- **WHEN** 使用者進入交通分頁
- **THEN** 畫面顯示交通方式列表，每行使用 `StyledListRow` 呈現，包含圓形圖示、名稱與說明文字

### Requirement: 交通方式詳情檢視

App SHALL 提供交通方式的詳情畫面，使用京都主題樣式呈現。頂部 MUST 顯示金色標題，資訊區塊 MUST 以卡片樣式呈現。

#### Scenario: 點擊列表項目進入詳情

- **WHEN** 使用者點擊交通方式列表中的任一項目
- **THEN** 導覽至該交通方式的詳情畫面，顯示金色標題、完整說明與卡片式資訊區塊
