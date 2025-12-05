# News App – Flutter Real-Time News Application  
### Built with Flutter + REST API (News API or Custom Backend)  
### Developed by **Ahmed Aljbry**

The **News App** is a modern and clean Flutter application that fetches breaking news, category-based articles, and detailed news content directly from a REST API.  
It includes an elegant UI, smooth animations, search functionality, and a professional architecture suitable for production-level apps.

---

## 🌐 Features

### 📰 **Live News Feed**
- Real-time news from API  
- Infinite scrolling  
- Pull-to-refresh  
- Clean and modern card UI  

### 📂 **News Categories**
- Browse news by category:
  - Sports  
  - Technology  
  - Health  
  - Business  
  - Entertainment  
  - Science  
  - General  

### 🔍 **Search System**
- Search articles by keyword  
- Real-time query updates  
- Server-side filtering  

### 📄 **Article Details Screen**
- Full article preview  
- Article image + title + publication time  
- "Read More" button to open full article in browser  

### 🖼 **High-Quality Images**
- Cached images  
- Error fallback  
- Smooth loading animation  

### 🎨 **Beautiful UI/UX**
- Custom color theme  
- Professional typography  
- Responsive across all devices  

### ⚡ **Optimized Performance**
- API caching (if implemented)  
- Lightweight models  
- Low memory usage  
- Fast navigation  

---

## 🧱 Project Structure (Recommended)

```txt
lib/
  core/
    constants/
    theme/
    utils/
  data/
    models/
    services/        # API calls
  features/
    home/
    categories/
    search/
    article_detail/
  widgets/
  main.dart
  app.dart
