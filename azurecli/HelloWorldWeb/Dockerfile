FROM microsoft/dotnet:2.2-aspnetcore-runtime AS base
WORKDIR /app
EXPOSE 80

FROM microsoft/dotnet:2.2-sdk AS build
WORKDIR /src
COPY ["azurecli/HelloWorldWeb/HelloWorldWeb.csproj", "azurecli/HelloWorldWeb/"]
RUN dotnet restore "azurecli/HelloWorldWeb/HelloWorldWeb.csproj"
COPY . .
WORKDIR "/src/azurecli/HelloWorldWeb"
RUN dotnet build "HelloWorldWeb.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "HelloWorldWeb.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "HelloWorldWeb.dll"]