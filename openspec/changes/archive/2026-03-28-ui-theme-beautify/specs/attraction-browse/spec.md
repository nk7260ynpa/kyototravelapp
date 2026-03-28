## MODIFIED Requirements

### Requirement: 景點列表瀏覽

App SHALL 在景點分頁中以列表形式顯示景點資料。每筆項目 MUST 使用 `StyledListRow` 元件呈現，顯示景點圖示、名稱與分類。

#### Scenario: 顯示景點列表

- **WHEN** 使用者進入景點分頁
- **THEN** 畫面顯示景點列表，每行使用 `StyledListRow` 呈現，包含圓形圖示、名稱與分類標籤

### Requirement: 景點詳情檢視

App SHALL 提供景點的詳情畫面，使用京都主題樣式呈現。頂部 MUST 顯示金色標題，資訊區塊 MUST 以卡片樣式呈現。

#### Scenario: 點擊列表項目進入詳情

- **WHEN** 使用者點擊景點列表中的任一項目
- **THEN** 導覽至該景點的詳情畫面，顯示金色標題、分類、地址、開放時間、門票費用與說明，以卡片式資訊區塊呈現
