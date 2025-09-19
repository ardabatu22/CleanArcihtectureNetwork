# NewsApp

A simple **News application** built with **SwiftUI** and **Clean Architecture**.  
The app fetches news articles from **[NewsAPI.org](https://newsapi.org)** and displays them in a list with detailed views.

---

##  Features
- Modern SwiftUI interface
- Clean Architecture (Domain → Data → Presentation)
- Dependency Injection with a custom Resolver
- Reusable Network Layer (URLSession + Endpoint + NetworkManager)
- Fetches Top Headlines from NewsAPI
- Async/Await concurrency
- Article detail screen with image, description, and external link

---

##  Architecture
- **Domain** → Entities, UseCases, Repository protocols  
- **Data** → Repository implementations, RemoteDataSource, NetworkManager  
- **Presentation** → ViewModels, SwiftUI Views  
- **Core** → Networking, Helpers, AppStrings  

##  Setup
enum Secrets {
    static let newsApiKey: String = "<YOUR_NEWSAPI_KEY>"
}
