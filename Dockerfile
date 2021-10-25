FROM mcr.microsoft.com/dotnet/sdk:6.0

WORKDIR /app

COPY *.cs ./
COPY *.csproj ./
RUN dotnet restore
RUN dotnet publish -c Release -o out

ENTRYPOINT ["/app/out/Okami"]
