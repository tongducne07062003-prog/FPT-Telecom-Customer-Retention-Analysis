# Business Insight Report
## FPT Telecom – Customer Retention & Upsell Analysis

**Prepared by:** Tống Anh Đức  
**Email:** tongducne07062003@gmail.com  
**Role:** Business Analyst Intern / Junior  
**Date:** August 2026  
**Version:** 1.0

---

## 1. Executive Summary

Phân tích 500 khách hàng mẫu (mô phỏng từ dữ liệu thực tế tại FPT Telecom) cho thấy:

- **31.4%** khách hàng thuộc nhóm **High Churn Risk**
- Khách hàng dùng gói cơ bản trên 12 tháng có nguy cơ hủy **cao gấp khoảng 2.3 lần**
- Có khoảng **34%** khách hàng có tiềm năng Upsell (điểm ≥ 7)

**Khuyến nghị chính:**  
Triển khai chương trình chăm sóc nhóm High Risk + kịch bản Upsell có chọn lọc trong 30–60 ngày tới, kỳ vọng tăng retention 15–18%.

---

## 2. Business Context & Objective

### 2.1 Bối cảnh
Đội Sales & CSKH FPT Telecom đang gặp khó khăn trong việc:
- Nhận diện sớm khách hàng có nguy cơ hủy dịch vụ
- Tối ưu chiến dịch Facebook Ads và tư vấn Upsell
- Ra quyết định dựa trên dữ liệu thay vì cảm tính

### 2.2 Mục tiêu phân tích
1. Phân khúc khách hàng theo mức độ rủi ro hủy (Churn Risk)
2. Xác định nhóm có tiềm năng nâng cấp gói / bán kèm Camera
3. Đề xuất hành động cụ thể cho từng phân khúc

---

## 3. Data & Methodology

| Hạng mục | Chi tiết |
|----------|----------|
| Số lượng mẫu | 500 khách hàng (anonymized) |
| Thời gian | Dữ liệu mô phỏng dựa trên hành vi thực tế 2025–2026 |
| Công cụ | Excel, SQL, Tableau / Matplotlib |
| Phương pháp | RFM đơn giản + Behavioral Scoring + Tenure Analysis |

**Các biến chính:**
- `tenure_months`: Số tháng sử dụng dịch vụ
- `package`: Gói dịch vụ hiện tại
- `churn_risk`: High / Medium / Low
- `upsell_potential_score`: Điểm 1–10
- `monthly_fee_vnd`: Phí hàng tháng

---

## 4. Key Findings

### 4.1 Phân bố Churn Risk
| Risk Level | Số lượng | Tỷ lệ |
|------------|----------|-------|
| High       | 157      | 31.4% |
| Medium     | 128      | 25.6% |
| Low        | 215      | 43.0% |

### 4.2 Mối quan hệ Tenure – Churn Risk
- Khách hàng **> 12 tháng** chiếm tỷ lệ High Risk cao hơn rõ rệt
- Nhóm 0–6 tháng chủ yếu là Low / Medium Risk

### 4.3 Cơ hội Upsell
- Điểm Upsell trung bình của nhóm Low Risk cao hơn nhóm High Risk
- Khoảng 1/3 khách hàng có điểm Upsell ≥ 7 → phù hợp để ưu tiên tư vấn Camera / Combo

### 4.4 Gói dịch vụ
- Các gói Combo và Premium chiếm tỷ lệ đáng kể
- Gói Basic vẫn là nguồn phát sinh rủi ro hủy cao nếu không được chăm sóc

---

## 5. Strategic Recommendations

### Priority 1: Chăm sóc nhóm High Risk (0–30 ngày)
- Flag tự động khách hàng High Risk trên dashboard
- Kịch bản CSKH: ưu đãi giữ chân 1–2 tháng hoặc tặng dùng thử Camera
- Kỳ vọng: giảm tỷ lệ hủy nhóm này 15–20%

### Priority 2: Upsell có chọn lọc (30–60 ngày)
- Tập trung vào khách hàng có điểm Upsell ≥ 7 và không thuộc High Risk
- Script tư vấn + nội dung Ads riêng
- Mục tiêu: tăng tỷ lệ bán kèm 10–15%

### Priority 3: Dashboard vận hành hàng tuần
- Sales Leader theo dõi Churn Risk + Conversion mỗi tuần
- Điều chỉnh ngân sách Ads theo segment hiệu quả

---

## 6. Expected Impact (3 tháng)

| Chỉ số | Hiện tại (ước tính) | Mục tiêu | Ghi chú |
|--------|---------------------|----------|---------|
| Retention nhóm High Risk | Baseline | +15–18% | Ưu tiên cao |
| Upsell Conversion | Baseline | +10–15% | Nhóm điểm cao |
| Hiệu quả Facebook Ads | - | Cải thiện | Nội dung theo insight |

---

## 7. Next Steps

1. Validate kết quả với dữ liệu thật (nếu được phép)
2. Xây dựng dashboard vận hành trên Tableau / Power BI
3. Thiết kế kịch bản CSKH chi tiết theo từng phân khúc
4. Theo dõi KPI sau 30–60 ngày triển khai

---

## 8. Appendix

- File dữ liệu mẫu: `01_data/sample_customer_data.xlsx`
- SQL phân khúc: `02_sql/01_churn_segmentation.sql`
- Dashboard preview: `03_dashboard/`

---

**Prepared by Tống Anh Đức**  
📧 tongducne07062003@gmail.com  
GitHub: github.com/tongducne07062003-prog
