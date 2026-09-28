# Business Insight Report
## FPT Telecom – Customer Retention & Upsell Analysis

**Prepared by:** Tống Anh Đức  
**Email:** tongducne07062003@gmail.com  
**Role:** Business Analyst Intern / Junior  
**Date:** September 2026  
**Version:** 2.0 (aligned with sample data in repo)

---

## 1. Executive Summary

Phân tích trên **bộ dữ liệu mô phỏng 500 khách hàng** (Internet / TV / Combo) cho thấy:

| Finding chính | Giá trị (sample) |
|---------------|------------------|
| Tỷ lệ nhãn **High-risk** | **31.4%** (157/500) |
| Basic + tenure > 12 tháng vs nhóm còn lại | High-risk ~**1.5×** (45.5% vs 29.7%) |
| Tenure trung bình nhóm High | ~**25 tháng** (Low/Medium ~14–16 tháng) |
| Upsell score trung bình | ~**5.2 / 10** |

**Khuyến nghị:** Tách playbook — **giữ chân** nhóm High-risk (ưu tiên Basic lâu năm); **upsell chọn lọc** nhóm điểm cao nhưng không High. Mục tiêu retention **+15–18%** nhóm rủi ro là **kỳ vọng chiến lược**, chưa đo sau go-live.


---

## 2. Business Context & Objective

### 2.1 Bối cảnh
Đội Sales & CSKH thường gặp:

- Khó nhận diện sớm khách có nguy cơ hủy
- Chiến dịch tư vấn / ads còn rải đều
- Upsell Camera/Combo chưa gắn đúng nhóm sẵn sàng

### 2.2 Mục tiêu phân tích
1. Phân nhóm theo mức rủi ro hủy (`churn_risk`)
2. Xác định nhóm tiềm năng upsell (`upsell_potential_score`)
3. Đề xuất hành động theo thứ tự ưu tiên cho Sales / CSKH

---

## 3. Data & Methodology

| Hạng mục | Chi tiết |
|----------|----------|
| Số lượng mẫu | **500** khách (anonymized / simulated) |
| File | `01_data/sample_customer_data.xlsx` |
| Công cụ | Excel (Pivot), SQL (demo), dashboard/chart |
| Hướng phân tích | Tenure × package × churn_risk; upsell score |

**Biến chính:** `tenure_months`, `package`, `churn_risk`, `upsell_potential_score`, `monthly_fee_vnd`, `engaged_facebook_ads`

---

## 4. Key Findings

### 4.1 Phân bố Churn Risk

| Risk Level | Số lượng | Tỷ lệ |
|------------|----------|-------|
| High | 157 | **31.4%** |
| Medium | 128 | 25.6% |
| Low | 215 | 43.0% |

### 4.2 Basic + tenure > 12 tháng

| Nhóm | n | % High-risk |
|------|---|-------------|
| Internet Basic **và** tenure > 12 tháng | 55 | **45.5%** |
| Các khách còn lại | 445 | **29.7%** |
| **Tỷ lệ so sánh** | | **≈ 1.5×** |

Tenure trung bình: High **~24.9 tháng** (median 25) vs Low/Medium **~15–16 tháng**.

### 4.3 Upsell

| Chỉ số | Giá trị |
|--------|---------|
| Score trung bình | ~5.2 / 10 |
| Score TB theo risk | High 4.88 · Medium 5.32 · Low **5.44** |
| Score ≥ 4 | 327/500 (**65.4%**) |
| Trong nhóm score ≥ 4 | Low-risk ~**46%** (nhiều hơn High ~28%) |

→ High-risk **không** phải nhóm upsell tốt nhất; nên tách keep vs upsell.

### 4.4 Facebook Ads (hai lớp)

- **Trong sample:** ~31% khách có `engaged_facebook_ads = Yes`
- **Trong công việc thực tế tại FPT (Sales/CSKH):** từng đạt khoảng 150% KPI và tăng follow page ~200% trong giai đoạn đo — **không** suy ra trực tiếp từ file 500 dòng

---

## 5. Strategic Recommendations

### Priority 1 — Giữ chân High-risk (0–30 ngày)
- Flag High-risk; ưu tiên thêm **Basic + tenure > 12 tháng**
- Kịch bản: ưu đãi ngắn / trial Camera
- Kỳ vọng minh họa: giảm áp lực hủy nhóm này (hướng −15–20% nếu triển khai tốt)

### Priority 2 — Upsell chọn lọc (30–60 ngày)
- Chỉ nhóm **score cao** và **không High đang nóng**
- Theo dõi chuyển đổi theo tuần

### Priority 3 — Review hàng tuần
- Số High còn lại, số đã liên hệ, số giữ được, số upsell thử

---

## 6. Expected Impact (minh họa)

| Chỉ số | Hiện trạng (sample) | Mục tiêu nếu triển khai | Loại |
|--------|---------------------|-------------------------|------|
| High-risk rate | 31.4% | Giảm dần qua care | Theo dõi |
| Basic>12 vs rest | ~1.5× High-risk | Thu hẹp khoảng cách | Finding → action |
| Retention nhóm rủi ro | Baseline | **+15–18%** | Target (chưa đo sau go-live) |
| Upsell nhóm score cao | Baseline | **+10–15%** | Target |

---

## 7. Next Steps

1. (Nếu có data thật) Thay sample bằng extract nội bộ đã anonymize đúng policy  
2. Dashboard vận hành: risk × package × tenure  
3. Đo baseline trước–sau khi chạy playbook keep/upsell  

---

## 8. Appendix

- Data: `01_data/sample_customer_data.xlsx`  
- SQL: `02_sql/`  
- Dashboard: `03_dashboard/`  
- README: căn bản số liệu bản v2.0  

---

**Prepared by Tống Anh Đức**  
📧 tongducne07062003@gmail.com · GitHub: github.com/tongducne07062003-prog
