# foodie_app
 
lib/
│
├── models/                  # 存放資料模型 (Data Models)
│   ├── restaurant.dart      # 餐廳資料模型
│
├── views/                   # 存放 UI 視圖 (Views)
│   ├── home_view.dart       # 主頁面視圖
│   ├── restaurant_search_view.dart  # 餐廳搜尋頁面視圖
│
├── view_models/             # 存放邏輯處理 (ViewModels)
│   ├── home_view_model.dart # 主頁面邏輯
│   ├── restaurant_search_view_model.dart # 餐廳搜尋頁面邏輯
│
├── services/                # 存放與 Firebase 交互邏輯 (如 API 調用、Firebase 等)
│   ├── restaurant_service.dart  # 餐廳服務（例如，獲取餐廳資料）
│
├── utils/                   # 工具類文件
│   ├── constants.dart       # 常量配置
│   └── helpers.dart        # 幫助函數
│
├── main.dart                # 應用程序的入口
│
└── firebase_options.dart    # Firebase 配置
