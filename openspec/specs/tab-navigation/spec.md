## ADDED Requirements

### Requirement: App 使用 TabView 提供四分頁導覽

App SHALL 以 `TabView` 作為根導覽結構，提供四個分頁：交通、景點、慶典、餐廳。每個分頁 MUST 顯示對應的 SF Symbol 圖示與繁體中文標籤。

#### Scenario: App 啟動時顯示 TabView

- **WHEN** 使用者啟動 App
- **THEN** 畫面顯示包含四個分頁的 TabView，預設選中第一個分頁（交通）

#### Scenario: 切換分頁

- **WHEN** 使用者點擊任一分頁標籤
- **THEN** 畫面切換至對應模組的列表畫面
