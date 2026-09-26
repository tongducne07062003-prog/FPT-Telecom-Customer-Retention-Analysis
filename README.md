
# 📡 FPT Telecom – Phân tích Giữ chân & Upsell Khách hàng

> Dự án Portfolio: Business Analysis + Data Analytics  
> **Tống Anh Đức** | Business Analyst Intern 
> 📧 tongducne07062003@gmail.com  
> 🔗 LinkedIn: linkedin.com/in/tong-anh-duc | GitHub: github.com/tongducne07062003-prog

---

## 📊 Tổng quan dự án

Phân tích hành vi và nguy cơ hủy trên bộ dữ liệu mô phỏng 500 khách hàng (Internet / TV / Combo), thiết kế theo các tình huống thường gặp khi tư vấn & chăm sóc khách hàng.

Mục tiêu: Xác định nhóm khách hàng có nguy cơ **hủy dịch vụ (Churn)** cao và nhóm có tiềm năng **bán thêm (Upsell)** Camera / Combo, từ đó đề xuất kịch bản chăm sóc và chiến lược giữ chân / bán kèm.

### 🎯 Điểm nổi bật

| Chỉ số | Giá trị | Ghi chú |
|--------|---------|---------|
| 👥 Số khách trong sample | **500** | File `sample_customer_data.xlsx` |
| 📉 Tỷ lệ nhãn High-risk | **31.4%** (157/500) | Cột `churn_risk` |
| 📈 Basic + tenure > 12 tháng | High-risk ~**1.5×** nhóm còn lại | 45.5% vs 29.7% |
| 📊Tenure trung bình nhóm High | ~**25 tháng** | Nhóm Low/Medium ~14–16 tháng |
| 🎯Mục tiêu retention (nếu triển khai) | **+15–18%** nhóm rủi ro | Kỳ vọng chiến lược, chưa đo sau go-live |
| 🛠️ Công cụ | Excel · SQL · Tableau Public | |


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

Trên 500 khách:

| Nhóm | Số khách | Tỷ lệ High-risk |
|------|----------|-----------------|
| Internet Basic **và** tenure > 12 tháng | 55 | **45.5%** |
| Các khách còn lại | 445 | **29.7%** |
| **Tỷ lệ so sánh** | | **≈ 1.5×** |

- Toàn sample: High **31.4%** · Medium **25.6%** · Low **43.0%**
- Tenure trung bình: High **~24.9 tháng** (median 25) vs Low/Medium **~15–16 tháng**

**Ý nghĩa:** Nhóm ở lâu, đặc biệt gói Basic, đáng được **flag và chăm trước**, không chờ đến lúc đã có ý định hủy.

### 2️⃣ Cơ hội Upsell
| Chỉ số | Giá trị |
|--------|---------|
| Điểm upsell trung bình (`upsell_potential_score`) | **~5.2 / 10** |
| Điểm TB theo risk | High 4.88 · Medium 5.32 · Low **5.44** |
| Score ≥ 4 | **327/500 (65.4%)** |
| Trong nhóm score ≥ 4 | Low-risk chiếm **~46%** (nhiều hơn High ~28%) |

**Ý nghĩa:** Có nhóm **vẫn ổn định (Low/Medium) nhưng điểm upsell cao** → nên tách playbook:

- High-risk → **giữ chân**
- Score cao + không High → **upsell chọn lọc**

### 3️⃣ Hiệu quả Facebook Ads

**Trong sample (500 khách):**

- `engaged_facebook_ads = Yes`: **~31%**
- `= No`: **~69%**

**Trong công việc Sales & CSKH tại FPT (trải nghiệm thực tế, không lấy từ file 500 dòng):**

- Theo dõi và điều chỉnh hướng tiếp cận ads / page
- Trong giai đoạn đo: đạt khoảng **150% KPI** cá nhân và tăng tương tác follow page khoảng **+200%**

Hai lớp này **không gộp thành một finding data** — sample chỉ cho thấy một phần khách có tương tác ads; KPI là kết quả vận hành thực tế.

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

| Chỉ số | Hiện trạng (sample / baseline) | Mục tiêu nếu triển khai | Loại |
|--------|--------------------------------|-------------------------|------|
| Tỷ lệ High-risk (toàn sample) | **31.4%** | Giảm dần qua care Priority 1 | Theo dõi |
| Basic + >12 tháng vs phần còn lại | ~**1.5×** High-risk | Thu hẹp khoảng cách | Finding → action |
| Retention nhóm rủi ro | Baseline | **+15–18%** | Target chiến lược |
| Upsell trên nhóm score cao | Baseline | **+10–15%** | Target chiến lược |

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
