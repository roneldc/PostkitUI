# Stage 1: build the Blazor WebAssembly app
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

# Copy only the .csproj file from PostkitUI
COPY PostkitUI/PostkitUI.csproj ./PostkitUI/
RUN dotnet restore ./PostkitUI/PostkitUI.csproj

# Copy the rest of the project files
COPY PostkitUI/ ./PostkitUI/

WORKDIR /app/PostkitUI
RUN dotnet publish -c Release -o out

# Stage 2: serve with nginx
FROM nginx:alpine
WORKDIR /usr/share/nginx/html

# Remove default nginx static assets
RUN rm -rf ./*

# Copy Blazor published wwwroot to nginx
COPY --from=build /app/PostkitUI/out/wwwroot .

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
