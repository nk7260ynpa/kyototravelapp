## ADDED Requirements

### Requirement: 餐廳列表瀏覽

App SHALL 在餐廳分頁中以列表形式顯示餐廳資料。每筆項目 MUST 顯示名稱與料理類型。

#### Scenario: 顯示餐廳列表

- **WHEN** 使用者進入餐廳分頁
- **THEN** 畫面顯示餐廳列表，包含餐廳名稱與料理類型標籤

### Requirement: 餐廳詳情檢視

App SHALL 提供餐廳的詳情畫面，顯示完整資訊。

#### Scenario: 點擊列表項目進入詳情

- **WHEN** 使用者點擊餐廳列表中的任一項目
- **THEN** 導覽至該餐廳的詳情畫面，顯示名稱、料理類型、地址、營業時間、價位與說明

### Requirement: 餐廳資料模型

App SHALL 定義 `Restaurant` 資料模型，包含 id、name、cuisineType、address、openingHours、priceRange、description 欄位。cuisineType MUST 為 enum 類型，包含懷石料理、抹茶甜點、拉麵、豆腐料理、おばんざい、其他六種分類。

#### Scenario: 料理類型列舉涵蓋所有類型

- **WHEN** 查看 `CuisineType` enum
- **THEN** MUST 包含 kaiseki（懷石料理）、matcha（抹茶甜點）、ramen（拉麵）、tofu（豆腐料理）、obanzai（おばんざい）、other（其他）六種 case
