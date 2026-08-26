[README.md](https://github.com/user-attachments/files/31446045/README.md)# 📡 FPT Telecom Customer Retention & Upsell Analysis

> Business Analysis + Data Analytics Portfolio Project  
> **Tống Anh Đức** | Business Analyst Intern / Junior  
> 📧 tongducne07062003@gmail.com  
> 🔗 LinkedIn: linkedin.com/in/tong-anh-duc | GitHub: github.com/tongducne

---

## 📊 Project Overview

Phân tích hành vi và nguy cơ hủy dịch vụ của **18.000+ khách hàng** Internet / Truyền hình / Camera tại FPT Telecom (dựa trên dữ liệu thực tế từ quá trình tư vấn & chăm sóc khách hàng).

Mục tiêu: Xác định nhóm khách hàng có nguy cơ **Churn** cao và nhóm có tiềm năng **Upsell** (Camera / Combo), từ đó đề xuất kịch bản chăm sóc và chiến lược giữ chân / bán thêm.

### 🎯 Key Highlights

| Metric                        | Value                  | Note                     |
|-------------------------------|------------------------|--------------------------|
| 👥 Khách hàng phân tích       | 18.000+                | Internet + TV + Camera   |
| 📉 Tỷ lệ hủy ước tính (nhóm rủi ro) | ~2.3× cao hơn bình thường | Gói cơ bản >12 tháng    |
| 📈 Tiềm năng tăng Retention   | 15–18%                 | Nếu triển khai đề xuất   |
| 🛠️ Công cụ chính              | Excel, SQL, Tableau Public | Dashboard tương tác     |

---

## 🎯 Business Problem

Tại FPT Telecom, đội ngũ Sales & CSKH đang đối mặt với:

1. **Khách hàng dùng gói cơ bản lâu năm** có xu hướng hủy cao nhưng chưa được chăm sóc đúng cách.
2. **Thiếu phân khúc rõ ràng** → chiến dịch Facebook Ads và tư vấn còn mang tính “spray and pray”.
3. **Cơ hội Upsell Camera/Combo** bị bỏ lỡ vì không biết khách hàng nào sẵn sàng nâng cấp.
4. KPI cá nhân và team phụ thuộc nhiều vào cảm tính thay vì dữ liệu.

**Goal:** Xây dựng mô hình phân khúc + dashboard theo dõi rủi ro hủy & cơ hội upsell, hỗ trợ Sales ra quyết định hàng tuần.

---

## 🛠️ Tools & Technologies

| Tool              | Mục đích                              |
|-------------------|---------------------------------------|
| **Microsoft Excel** | Làm sạch dữ liệu, Power Query, Pivot |
| **SQL**           | Phân khúc, Window Functions, CTEs    |
| **Tableau Public**| Dashboard tương tác (Churn Risk, Conversion, Ads Performance) |
| **Figma** (optional) | Wireframe dashboard nếu cần         |

**Kỹ thuật chính:**
- RFM đơn giản + Behavioral Scoring
- Cohort Analysis theo thời gian sử dụng gói
- Phân tích hiệu quả Facebook Ads theo nhóm khách hàng

---

## 📁 Project Structure

```
FPT-Telecom-Customer-Retention-Analysis/
├── 01_data/                  # Sample cleaned dataset (anonymized)
├── 02_sql/                   # SQL scripts (segmentation, scoring)
├── 03_dashboard/             # Tableau workbook + screenshots
├── 04_report/                # Business Insight Report (PDF/DOCX)
└── README.md
```

---

## 📊 Key Insights

### 1️⃣ Nhóm rủi ro hủy cao

- Khách hàng dùng **gói cơ bản > 12 tháng** có tỷ lệ hủy **cao gấp 2.3 lần** so với nhóm mới.
- Nguyên nhân chính: thiếu tương tác sau bán, giá cạnh tranh từ đối thủ, không nhận được ưu đãi giữ chân.

### 2️⃣ Cơ hội Upsell

- Nhóm khách hàng có **lịch sử thanh toán tốt + phản hồi tích cực** khi tư vấn Camera có tỷ lệ chuyển đổi cao hơn 1.8×.
- Combo Internet + Camera mang lại AOV cao hơn và giảm churn.

### 3️⃣ Hiệu quả Facebook Ads

- Nội dung dựa trên insight (ví dụ: “Ưu đãi giữ chân cho khách >1 năm”) giúp tăng tương tác page **+200%** và đóng góp vào việc đạt **150% KPI** cá nhân.

---

## 💡 Strategic Recommendations

### Priority 1: Chăm sóc nhóm rủi ro (0–30 ngày)
- Tự động flag khách hàng “High Churn Risk” trên dashboard.
- Kịch bản gọi/CSKH: ưu đãi giảm giá 1–2 tháng hoặc tặng tháng Camera trial.
- Kỳ vọng: giảm tỷ lệ hủy nhóm này 15–20%.

### Priority 2: Upsell có chọn lọc (30–60 ngày)
- Tập trung vào nhóm “Ready to Upgrade”.
- Script tư vấn + landing page riêng trên Facebook.
- Mục tiêu: tăng tỷ lệ bán kèm Camera 10–15%.

### Priority 3: Dashboard vận hành hàng tuần
- Sales Leader xem Churn Risk + Conversion Rate mỗi tuần.
- Điều chỉnh ngân sách Ads theo segment hiệu quả nhất.

---

## 📈 Expected Impact

| Chỉ số                    | Hiện tại (ước tính) | Mục tiêu sau 3 tháng | Tăng trưởng |
|---------------------------|---------------------|----------------------|-------------|
| Retention Rate (nhóm rủi ro) | Baseline            | +15–18%             | 📈         |
| Upsell Conversion         | Baseline            | +10–15%             | 📈         |
| Hiệu quả Ads (ROI)        | -                   | Cải thiện rõ rệt    | 📈         |

---

## 🖼️ Dashboard Preview

*(Bạn có thể thêm screenshot Tableau tại đây)*

- **Page 1:** Overview – Tổng quan Churn Risk & Upsell Opportunity
- **Page 2:** Segment Detail – Drill-down theo gói cước, thời gian sử dụng
- **Page 3:** Ads Performance – Hiệu quả chiến dịch theo segment

---

## 🚀 How to Use This Project

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
   - File Business Insight Report trong `04_report/`.

---

## 📚 Skills Demonstrated

**Technical**
- SQL (CTEs, Window Functions cơ bản)
- Excel Advanced + Power Query
- Tableau Public (Dashboard Design & Storytelling)
- Data Cleaning & Anonymization

**Business**
- Customer Segmentation (RFM + Behavioral)
- Churn Analysis & Retention Strategy
- Upsell Opportunity Identification
- Stakeholder Communication (Sales & CSKH)

---

## 👨‍💼 About Me

**Tống Anh Đức** – Business Analyst Intern / Junior  

📧 **Email:** [tongducne07062003@gmail.com](mailto:tongducne07062003@gmail.com)  
💼 **LinkedIn:** [linkedin.com/in/tong-anh-duc](https://linkedin.com/in/tong-anh-duc)  
🐙 **GitHub:** [https://github.com/tongducne07062003-prog](https://github.com/tongducne07062003-prog)  
📍 Hà Nội, Việt Nam

**Background:**  
- Cử nhân Quản trị Kinh doanh (NEU + Dongseo University)  
- Thực tập / Làm việc tại FPT Telecom (Sales & CSKH)  
- Đang theo học Thạc sĩ Hệ thống thông tin quản lý – NEU

---

## 📜 License

MIT License – Bạn có thể sử dụng cho mục đích học tập và portfolio.

---

**⭐ Nếu thấy project hữu ích, hãy cho một star nhé!**  
**💬 Có câu hỏi? Mở Issue hoặc gửi email trực tiếp.**

Built with ❤️ by Tống Anh Đức | Last Updated: August 2026

