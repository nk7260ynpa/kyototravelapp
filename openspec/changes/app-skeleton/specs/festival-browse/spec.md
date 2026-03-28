## ADDED Requirements

### Requirement: 慶典列表瀏覽

App SHALL 在慶典分頁中以列表形式顯示慶典活動資料。每筆項目 MUST 顯示名稱與日期。

#### Scenario: 顯示慶典列表

- **WHEN** 使用者進入慶典分頁
- **THEN** 畫面顯示慶典列表，包含活動名稱與日期資訊

### Requirement: 慶典詳情檢視

App SHALL 提供慶典活動的詳情畫面，顯示完整資訊。

#### Scenario: 點擊列表項目進入詳情

- **WHEN** 使用者點擊慶典列表中的任一項目
- **THEN** 導覽至該慶典的詳情畫面，顯示名稱、日期、地點、說明與觀賞建議

### Requirement: 慶典資料模型

App SHALL 定義 `Festival` 資料模型，包含 id、name、date、location、description、tips 欄位，並符合 `Identifiable` 與 `Codable` 協定。

#### Scenario: 資料模型欄位完整

- **WHEN** 建立 `Festival` 實例
- **THEN** MUST 包含 name、date（String 格式以支援日期範圍）、location、description、tips 欄位
