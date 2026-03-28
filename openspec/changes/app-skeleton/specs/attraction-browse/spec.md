## ADDED Requirements

### Requirement: 景點列表瀏覽

App SHALL 在景點分頁中以列表形式顯示景點資料。每筆項目 MUST 顯示名稱與分類。

#### Scenario: 顯示景點列表

- **WHEN** 使用者進入景點分頁
- **THEN** 畫面顯示景點列表，包含項目名稱與分類標籤

### Requirement: 景點詳情檢視

App SHALL 提供景點的詳情畫面，顯示完整資訊。

#### Scenario: 點擊列表項目進入詳情

- **WHEN** 使用者點擊景點列表中的任一項目
- **THEN** 導覽至該景點的詳情畫面，顯示名稱、分類、地址、開放時間、門票費用與說明

### Requirement: 景點資料模型

App SHALL 定義 `Attraction` 資料模型，包含 id、name、category、address、openingHours、admissionFee、description 欄位。category MUST 為 enum 類型，包含寺廟、神社、庭園、其他四種分類。

#### Scenario: 分類列舉涵蓋所有類型

- **WHEN** 查看 `AttractionCategory` enum
- **THEN** MUST 包含 temple（寺廟）、shrine（神社）、garden（庭園）、other（其他）四種 case
