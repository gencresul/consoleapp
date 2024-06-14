# Build Stage
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /src

# Proje dosyalarını kopyala ve restore et
COPY ["consoleapp.csproj", "./"]
RUN dotnet restore

# Tüm dosyaları kopyala ve inşa et
COPY . .
RUN dotnet publish -c Release -o /app/publish

# Runtime Stage
FROM mcr.microsoft.com/dotnet/runtime:7.0 AS runtime
WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "consoleapp.dll"]
