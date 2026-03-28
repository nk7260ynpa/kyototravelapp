## 1. 資料夾結構

- [x] 1.1 建立 `kyototravelapp/Models/` 資料夾
- [x] 1.2 建立 `kyototravelapp/SampleData/` 資料夾
- [x] 1.3 建立 `kyototravelapp/Views/Transportation/` 資料夾
- [x] 1.4 建立 `kyototravelapp/Views/Attractions/` 資料夾
- [x] 1.5 建立 `kyototravelapp/Views/Festivals/` 資料夾
- [x] 1.6 建立 `kyototravelapp/Views/Restaurants/` 資料夾
- [x] 1.7 建立 `kyototravelapp/Components/` 資料夾

## 2. 資料模型

- [x] 2.1 建立 `Models/Transportation.swift`（TransportationMethod、TransportPass、Station structs）
- [x] 2.2 建立 `Models/Attraction.swift`（Attraction struct + AttractionCategory enum）
- [x] 2.3 建立 `Models/Festival.swift`（Festival struct）
- [x] 2.4 建立 `Models/Restaurant.swift`（Restaurant struct + CuisineType enum）

## 3. 範例資料

- [x] 3.1 建立 `SampleData/SampleData.swift`，提供各模組 3-4 筆靜態範例資料

## 4. 共用元件

- [x] 4.1 建立 `Components/InfoRow.swift`（可複用的 label + value 顯示列）

## 5. 交通模組 View

- [x] 5.1 建立 `Views/Transportation/TransportationDetailView.swift`
- [x] 5.2 建立 `Views/Transportation/TransportationListView.swift`（NavigationStack + List）

## 6. 景點模組 View

- [ ] 6.1 建立 `Views/Attractions/AttractionDetailView.swift`
- [ ] 6.2 建立 `Views/Attractions/AttractionListView.swift`（NavigationStack + List）

## 7. 慶典模組 View

- [ ] 7.1 建立 `Views/Festivals/FestivalDetailView.swift`
- [ ] 7.2 建立 `Views/Festivals/FestivalListView.swift`（NavigationStack + List）

## 8. 餐廳模組 View

- [ ] 8.1 建立 `Views/Restaurants/RestaurantDetailView.swift`
- [ ] 8.2 建立 `Views/Restaurants/RestaurantListView.swift`（NavigationStack + List）

## 9. TabView 導覽

- [ ] 9.1 修改 `ContentView.swift` 為 TabView，整合四個模組的 ListView

## 10. 驗證

- [ ] 10.1 執行 xcodebuild 確認專案建置成功
