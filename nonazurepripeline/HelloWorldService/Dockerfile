FROM microsoft/dotnet:2.2-aspnetcore-runtime AS base
WORKDIR /app
EXPOSE 80

FROM microsoft/dotnet:2.2-sdk AS build
WORKDIR /src
COPY ["HelloWorldService.csproj", "HelloWorldService/"]
RUN dotnet restore "HelloWorldService/HelloWorldService.csproj"

COPY . ./HelloWorldService/
WORKDIR "/src/HelloWorldService"
RUN dotnet build "HelloWorldService.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "HelloWorldService.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "HelloWorldService.dll"]
