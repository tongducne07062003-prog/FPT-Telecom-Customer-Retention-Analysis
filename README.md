
# 📡 FPT Telecom – Phân tích Giữ chân & Upsell Khách hàng

> Dự án Portfolio: Business Analysis + Data Analytics  
> **Tống Anh Đức** | Business Analyst Intern / Junior  
> 📧 tongducne07062003@gmail.com  
> 🔗 LinkedIn: linkedin.com/in/tong-anh-duc | GitHub: github.com/tongducne07062003-prog

---

## 📊 Tổng quan dự án

Phân tích hành vi và nguy cơ hủy dịch vụ của **18.000+ khách hàng** Internet / Truyền hình / Camera tại FPT Telecom (dựa trên dữ liệu mô phỏng từ quá trình tư vấn & chăm sóc khách hàng).

Mục tiêu: Xác định nhóm khách hàng có nguy cơ **hủy dịch vụ (Churn)** cao và nhóm có tiềm năng **bán thêm (Upsell)** Camera / Combo, từ đó đề xuất kịch bản chăm sóc và chiến lược giữ chân / bán kèm.

### 🎯 Điểm nổi bật

| Chỉ số | Giá trị | Ghi chú |
|--------|---------|---------|
| 👥 Khách hàng phân tích | 18.000+ | Internet + TV + Camera |
| 📉 Tỷ lệ hủy (nhóm rủi ro) | ~2.3× cao hơn bình thường | Gói cơ bản >12 tháng |
| 📈 Tiềm năng tăng Retention | 15–18% | Nếu triển khai đề xuất |
| 🛠️ Công cụ chính | Excel, SQL, Tableau Public | Dashboard tương tác |

---

## 🎯 Vấn đề nghiệp vụ

Tại FPT Telecom, đội ngũ Sales & CSKH đang đối mặt với:

1. **Khách hàng dùng gói cơ bản lâu năm** có xu hướng hủy cao nhưng chưa được chăm sóc đúng cách.
2. **Thiếu phân khúc rõ ràng** → chiến dịch Facebook Ads và tư vấn còn mang tính “rải đều”.
3. **Cơ hội Upsell Camera/Combo** bị bỏ lỡ vì không biết khách hàng nào sẵn sàng nâng cấp.
4. KPI cá nhân và team phụ thuộc nhiều vào cảm tính thay vì dữ liệu.

**Mục tiêu:** Xây dựng mô hình phân khúc + dashboard theo dõi rủi ro hủy & cơ hội upsell, hỗ trợ Sales ra quyết định hàng tuần.

---

## 🛠️ Công cụ & Công nghệ

| Công cụ | Mục đích |
|---------|----------|
| **Microsoft Excel** | Làm sạch dữ liệu, Power Query, Pivot |
| **SQL** | Phân khúc, Window Functions, CTEs |
| **Tableau Public** | Dashboard tương tác (Rủi ro hủy, Tỷ lệ chuyển đổi, Hiệu quả Ads) |
| **Figma** (tùy chọn) | Wireframe dashboard nếu cần |

**Kỹ thuật chính:**
- RFM đơn giản + điểm hành vi (Behavioral Scoring)
- Phân tích cohort theo thời gian sử dụng gói
- Phân tích hiệu quả Facebook Ads theo nhóm khách hàng

---

## 📁 Cấu trúc dự án

```
FPT-Telecom-Customer-Retention-Analysis/
├── 01_data/                  # Dữ liệu mẫu đã làm sạch (ẩn danh)
├── 02_sql/                   # Script SQL (phân khúc, scoring)
├── 03_dashboard/             # File Tableau + ảnh chụp màn hình
├── 04_report/                # Báo cáo Business Insight
└── README.md
```

---

## 📊 Insight chính

### 1️⃣ Nhóm rủi ro hủy cao

- Khách hàng dùng **gói cơ bản > 12 tháng** có tỷ lệ hủy **cao gấp 2.3 lần** so với nhóm mới.
- Nguyên nhân chính: thiếu tương tác sau bán, giá cạnh tranh từ đối thủ, không nhận được ưu đãi giữ chân.

### 2️⃣ Cơ hội Upsell

- Nhóm khách hàng có **lịch sử thanh toán tốt + phản hồi tích cực** khi tư vấn Camera có tỷ lệ chuyển đổi cao hơn 1.8×.
- Combo Internet + Camera mang lại AOV cao hơn và giảm churn.

### 3️⃣ Hiệu quả Facebook Ads

- Nội dung dựa trên insight (ví dụ: “Ưu đãi giữ chân cho khách >1 năm”) giúp tăng tương tác page **+200%** và đóng góp vào việc đạt **150% KPI** cá nhân.

---

## 💡 Đề xuất chiến lược

### Ưu tiên 1: Chăm sóc nhóm rủi ro (0–30 ngày)
- Tự động đánh dấu khách hàng “Rủi ro hủy cao” trên dashboard.
- Kịch bản gọi/CSKH: ưu đãi giảm giá 1–2 tháng hoặc tặng tháng Camera dùng thử.
- Kỳ vọng: giảm tỷ lệ hủy nhóm này 15–20%.

### Ưu tiên 2: Upsell có chọn lọc (30–60 ngày)
- Tập trung vào nhóm “Sẵn sàng nâng cấp”.
- Script tư vấn + landing page riêng trên Facebook.
- Mục tiêu: tăng tỷ lệ bán kèm Camera 10–15%.

### Ưu tiên 3: Dashboard vận hành hàng tuần
- Sales Leader xem Rủi ro hủy + Tỷ lệ chuyển đổi mỗi tuần.
- Điều chỉnh ngân sách Ads theo segment hiệu quả nhất.

---

## 📈 Tác động kỳ vọng

| Chỉ số | Hiện tại (ước tính) | Mục tiêu sau 3 tháng | Tăng trưởng |
|--------|---------------------|----------------------|-------------|
| Retention (nhóm rủi ro) | Baseline | +15–18% | 📈 |
| Tỷ lệ Upsell | Baseline | +10–15% | 📈 |
| Hiệu quả Ads (ROI) | - | Cải thiện rõ rệt | 📈 |

---

## 🖼️ Xem trước Dashboard

<img width="2084" height="1475" alt="dashboard_preview" src="https://github.com/user-attachments/assets/d9ab9709-f30d-4306-9612-6f79b62bfe4c" />


- **Trang 1:** Tổng quan – Rủi ro hủy & Cơ hội Upsell  
- **Trang 2:** Chi tiết segment – theo gói cước, thời gian sử dụng  
- **Trang 3:** Hiệu quả Ads – theo từng nhóm khách hàng  

---

## 🚀 Cách sử dụng dự án

1. **Xem Dashboard**  
   - Mở file Tableau Public trong thư mục `03_dashboard/`  
   - Hoặc publish lên Tableau Public và dán link vào đây.

2. **Chạy lại phân tích SQL**  
   ```sql
   -- Ví dụ: Tính Recency & Frequency đơn giản
   WITH customer_metrics AS (
     SELECT 
       customer_id,
       DATEDIFF(day, MAX(last_interaction_date), GETDATE()) AS recency,
       COUNT(*) AS frequency,
       SUM(monthly_fee) AS monetary
     FROM transactions
     GROUP BY customer_id
   )
   SELECT * FROM customer_metrics;
   ```

3. **Đọc báo cáo**  
   - File Báo cáo Business Insight trong `04_report/`.

---

## 📚 Kỹ năng thể hiện

**Kỹ thuật**
- SQL (CTE, Window Functions cơ bản)
- Excel nâng cao + Power Query
- Tableau Public (thiết kế dashboard & kể chuyện bằng dữ liệu)
- Làm sạch & ẩn danh dữ liệu

**Nghiệp vụ**
- Phân khúc khách hàng (RFM + hành vi)
- Phân tích churn & chiến lược giữ chân
- Xác định cơ hội upsell
- Giao tiếp với stakeholder (Sales & CSKH)

---

## 👨‍💼 Về tôi

**Tống Anh Đức** – Business Analyst Intern / Junior  

📧 **Email:** [tongducne07062003@gmail.com](mailto:tongducne07062003@gmail.com)  
💼 **LinkedIn:** [linkedin.com/in/tong-anh-duc](https://linkedin.com/in/tong-anh-duc)  
🐙 **GitHub:** [github.com/tongducne07062003-prog](https://github.com/tongducne07062003-prog)  
📍 Hà Nội, Việt Nam

**Nền tảng:**  
- Cử nhân Quản trị Kinh doanh (NEU + Dongseo University)  
- Kinh nghiệm Sales & CSKH tại FPT Telecom  
- Đang theo học Thạc sĩ Hệ thống thông tin quản lý – NEU

---

## 📜 Giấy phép

MIT License – Được phép sử dụng cho mục đích học tập và portfolio.

---

**⭐ Nếu thấy project hữu ích, hãy cho một star nhé!**  
**💬 Có câu hỏi? Mở Issue hoặc gửi email trực tiếp.**

Xây dựng với ❤️ bởi Tống Anh Đức | Cập nhật: Tháng 8/2026
