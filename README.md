# Postkit.UI

Postkit.UI is a lightweight Blazor WebAssembly frontend built for the Postkit API. It provides a simple and informative interface to explore the API’s purpose, structure, and usage.

## 🚀 Features

🔹 Home – Intro to Postkit and quick links  
🔹 Docs – API Overview and core endpoints  
🔹 About – Project purpose, architecture, and author info  
🔹 Built with Bootstrap 5 and Blazor WebAssembly  
🔹 Client-side SPA with no JavaScript frameworks besides Bootstrap

## Tech Stack

- Blazor WebAssembly (.NET 8)
- Bootstrap 5 (CDN)
- Deployed as static UI (can run with or without backend)

## Folder Structure

```Postkit.UI/
├── Components/        # API Docs
 ├── CommentModule.razor
 ├── NotificationModule.razor
 ├── PostModule.razor
 ├── ReactionModule.razor
├── Pages/
 ├── Home.razor        # Home
 ├── Docs.razor        # API Overview
 ├── About.razor       # About the project
├── wwwroot/           # Static assets (CSS, images, etc.)
├── _Layout.razor      # Shared layout and navbar
└── Program.cs         # Minimal startup config
```

## 🌐 Live Preview

You can serve it locally with `dotnet run`

## 📄 License

MIT © John Ronel Dela Cruz
