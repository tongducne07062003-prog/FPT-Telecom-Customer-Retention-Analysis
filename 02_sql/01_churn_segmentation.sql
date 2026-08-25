-- FPT Telecom Customer Retention Analysis
-- Sample SQL: Phân khúc khách hàng theo Churn Risk & Tenure

-- 1. Tổng quan theo mức độ rủi ro hủy
SELECT 
    churn_risk,
    COUNT(*) AS total_customers,
    ROUND(AVG(tenure_months), 1) AS avg_tenure_months,
    ROUND(AVG(monthly_fee_vnd), 0) AS avg_monthly_fee,
    ROUND(AVG(upsell_potential_score), 1) AS avg_upsell_score
FROM customer_data
GROUP BY churn_risk
ORDER BY 
    CASE churn_risk 
        WHEN 'High' THEN 1 
        WHEN 'Medium' THEN 2 
        ELSE 3 
    END;

-- 2. Khách hàng High Risk dùng gói cơ bản > 12 tháng
SELECT 
    customer_id,
    package,
    region,
    tenure_months,
    monthly_fee_vnd,
    upsell_potential_score
FROM customer_data
WHERE churn_risk = 'High'
  AND tenure_months > 12
  AND package LIKE '%Basic%'
ORDER BY tenure_months DESC;

-- 3. Cơ hội Upsell (score >= 7 và chưa phải High Risk)
SELECT 
    customer_id,
    package,
    region,
    upsell_potential_score,
    monthly_fee_vnd
FROM customer_data
WHERE upsell_potential_score >= 7
  AND churn_risk != 'High'
ORDER BY upsell_potential_score DESC;
