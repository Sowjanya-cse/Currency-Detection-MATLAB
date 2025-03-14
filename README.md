# 💵₹ Indian Currency-Detection-MATLAB
Currency Detection System using MATLAB This project is designed to classify Real and Fake Currency using Histogram Matching and Canny Edge Detection in MATLAB.

---

## 🚀 Working Process:
1️⃣ **Training Phase (train_model.m):**
- Extracts histogram features of real currency.
- Saves them to `real_currency_features.mat`.

2️⃣ **Testing Phase (test_currency.m):**
- Compares uploaded currency with stored features.
- Uses **Canny Edge Detection** to detect watermark patterns.
- Classifies as **Real or Fake** based on **similarity threshold (0.85)**.

---

## ⚡️ Technologies Used:
- MATLAB
- Image Processing Techniques
- Histogram Matching
- Canny Edge Detection
- Correlation Coefficient for Similarity Check

---

## 📂 Files Included:
| File Name            | Purpose                       |
|----------------|-----------------------------------|
| train_model.m         | For Training (Feature Extraction) |
| test_currency.m      | For Testing (Currency Detection) |
| real_currency_features.mat | Stored Real Currency Features |
| Project_Report.docx  | Complete Project Report |

---

## 🎯 Output:
✅ Original Currency Image  
✅ Canny Edge Detection Output  
✅ Real or Fake Currency Message  

---

## 🌟 How to Run:
1️⃣ Run `train_model.m` to extract features.  
2️⃣ Run `test_currency.m` and upload an image to detect.  

---

 ## 👨🏻‍💻 Developed By:
SOWJANYA M

---

