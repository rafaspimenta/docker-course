FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
ARG BUILD_CONFIGURATION=Release
WORKDIR /src
COPY DockerCourseFrontend.csproj .
RUN dotnet restore "./DockerCourseFrontend.csproj"
COPY . .
RUN dotnet publish "./DockerCourseFrontend.csproj" -c $BUILD_CONFIGURATION -o /app/publish /p:UseAppHost=false

FROM nginx:alpine
COPY --from=build /app/publish/wwwroot /usr/share/nginx/html