import Foundation

enum SampleData {

    // MARK: - 交通

    static let transportationMethods: [TransportationMethod] = [
        TransportationMethod(
            id: UUID(),
            name: "京都市巴士",
            description: "覆蓋京都市區主要景點的公共巴士系統，路線密集，是遊覽京都最便利的交通方式之一。",
            icon: "bus.fill"
        ),
        TransportationMethod(
            id: UUID(),
            name: "地下鐵",
            description: "京都地下鐵分為烏丸線（南北向）與東西線（東西向），連接京都車站與主要商業區。",
            icon: "tram.fill"
        ),
        TransportationMethod(
            id: UUID(),
            name: "嵐電",
            description: "連接四條大宮至嵐山的路面電車，沿途經過多個知名景點，適合悠閒觀光。",
            icon: "lightrail.fill"
        ),
        TransportationMethod(
            id: UUID(),
            name: "叡山電車",
            description: "從出町柳出發，前往鞍馬、貴船等北部山區景點的電車路線。",
            icon: "cablecar.fill"
        ),
    ]

    static let transportPasses: [TransportPass] = [
        TransportPass(
            id: UUID(),
            name: "巴士一日券",
            price: 700,
            validDuration: "一日",
            description: "可無限次搭乘京都市巴士均一區間路線。"
        ),
        TransportPass(
            id: UUID(),
            name: "地下鐵一日券",
            price: 800,
            validDuration: "一日",
            description: "可無限次搭乘京都市營地下鐵全線。"
        ),
        TransportPass(
            id: UUID(),
            name: "巴士＋地下鐵一日券",
            price: 1100,
            validDuration: "一日",
            description: "可無限次搭乘京都市巴士與地下鐵。"
        ),
    ]

    static let stations: [Station] = [
        Station(
            id: UUID(),
            name: "京都駅",
            lines: ["JR", "近鐵", "地下鐵烏丸線"],
            isTransferStation: true
        ),
        Station(
            id: UUID(),
            name: "四條駅",
            lines: ["地下鐵烏丸線"],
            isTransferStation: false
        ),
        Station(
            id: UUID(),
            name: "烏丸御池駅",
            lines: ["地下鐵烏丸線", "地下鐵東西線"],
            isTransferStation: true
        ),
    ]

    // MARK: - 景點

    static let attractions: [Attraction] = [
        Attraction(
            id: UUID(),
            name: "金閣寺",
            category: .temple,
            address: "京都市北區金閣寺町1",
            openingHours: "9:00-17:00",
            admissionFee: "成人 500 円",
            description: "正式名稱為鹿苑寺，因舍利殿外牆以金箔裝飾而得名。為世界文化遺產之一。"
        ),
        Attraction(
            id: UUID(),
            name: "伏見稻荷大社",
            category: .shrine,
            address: "京都市伏見區深草藪之內町68",
            openingHours: "全天開放",
            admissionFee: "免費",
            description: "以綿延山間的千本鳥居聞名，是全日本約三萬座稻荷神社的總本社。"
        ),
        Attraction(
            id: UUID(),
            name: "龍安寺",
            category: .temple,
            address: "京都市右京區龍安寺御陵之下町13",
            openingHours: "8:00-17:00",
            admissionFee: "成人 500 円",
            description: "以枯山水石庭聞名於世，十五塊石頭的配置被譽為日本庭園藝術的極致。"
        ),
        Attraction(
            id: UUID(),
            name: "天龍寺",
            category: .garden,
            address: "京都市右京區嵯峨天龍寺芒之馬場町68",
            openingHours: "8:30-17:00",
            admissionFee: "庭園 500 円",
            description: "嵐山代表性寺院，曹源池庭園為日本最早被指定為國家史蹟特別名勝的庭園。"
        ),
    ]

    // MARK: - 慶典

    static let festivals: [Festival] = [
        Festival(
            id: UUID(),
            name: "祇園祭",
            date: "7月1日 - 7月31日",
            location: "八坂神社及京都市中心",
            description: "日本三大祭之一，以華麗的山鉾巡行最為壯觀。前祭（7/17）與後祭（7/24）為高潮。",
            tips: "宵山期間（巡行前夜）可近距離欣賞山鉾裝飾，建議傍晚前往避開人潮高峰。"
        ),
        Festival(
            id: UUID(),
            name: "葵祭",
            date: "5月15日",
            location: "京都御所至上賀茂神社",
            description: "京都三大祭之一，源自平安時代的皇室祭典，遊行隊伍身著平安時代裝束。",
            tips: "沿途可免費觀賞，京都御苑內設有付費觀覽席，建議提早佔位。"
        ),
        Festival(
            id: UUID(),
            name: "時代祭",
            date: "10月22日",
            location: "京都御所至平安神宮",
            description: "京都三大祭之一，遊行隊伍展現從明治到延曆各時代的服飾與風俗。",
            tips: "全程約 2 公里，建議在御池通或平安神宮附近觀賞，視野較佳。"
        ),
    ]

    // MARK: - 餐廳

    static let restaurants: [Restaurant] = [
        Restaurant(
            id: UUID(),
            name: "菊乃井 本店",
            cuisineType: .kaiseki,
            address: "京都市東山區下河原通八坂鳥居前下ル下河原町459",
            openingHours: "12:00-13:00 / 17:00-19:30",
            priceRange: "午餐 15,000 円～ / 晚餐 25,000 円～",
            description: "創業百年的京懷石名店，米其林三星。以當季食材呈現京都料理的精髓。"
        ),
        Restaurant(
            id: UUID(),
            name: "中村藤吉 本店",
            cuisineType: .matcha,
            address: "宇治市宇治壹番10",
            openingHours: "10:00-17:00",
            priceRange: "1,000 - 2,000 円",
            description: "創業安政元年的宇治茶老舖，提供抹茶甜點與茶蕎麥麵，抹茶聖代為招牌。"
        ),
        Restaurant(
            id: UUID(),
            name: "麵屋猪一",
            cuisineType: .ramen,
            address: "京都市下京區壽町通松原下ル薮之內町607-5",
            openingHours: "11:30-15:00 / 18:00-21:00",
            priceRange: "1,000 - 1,500 円",
            description: "以和風出汁為基底的創作拉麵，獲選百名店。招牌為白醬油蕎麥麵。"
        ),
        Restaurant(
            id: UUID(),
            name: "豆水樓 祇園店",
            cuisineType: .tofu,
            address: "京都市東山區廿一軒町236",
            openingHours: "11:30-14:30 / 17:00-21:00",
            priceRange: "3,000 - 5,000 円",
            description: "使用國產大豆手作豆腐的專門店，招牌為豆腐懷石套餐與現做豆乳。"
        ),
    ]
}
