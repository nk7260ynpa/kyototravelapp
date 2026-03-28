## MODIFIED Requirements

### Requirement: 餐廳列表瀏覽

App SHALL 在餐廳分頁中以列表形式顯示餐廳資料。每筆項目 MUST 使用 `StyledListRow` 元件呈現，顯示餐廳圖示、名稱與料理類型。

#### Scenario: 顯示餐廳列表

- **WHEN** 使用者進入餐廳分頁
- **THEN** 畫面顯示餐廳列表，每行使用 `StyledListRow` 呈現，包含圓形圖示、名稱與料理類型標籤

### Requirement: 餐廳詳情檢視

App SHALL 提供餐廳的詳情畫面，使用京都主題樣式呈現。頂部 MUST 顯示金色標題，資訊區塊 MUST 以卡片樣式呈現。

#### Scenario: 點擊列表項目進入詳情

- **WHEN** 使用者點擊餐廳列表中的任一項目
- **THEN** 導覽至該餐廳的詳情畫面，顯示金色標題、料理類型、地址、營業時間、價位與說明，以卡片式資訊區塊呈現
