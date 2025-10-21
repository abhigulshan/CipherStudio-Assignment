# CipherStudio Development Startup Script for PowerShell

Write-Host "🚀 Starting CipherStudio Development Environment..." -ForegroundColor Green

# Check if we're in the right directory
if (-not (Test-Path "frontend") -or -not (Test-Path "backend")) {
    Write-Host "❌ Error: Please run this script from the project root directory (cyp)" -ForegroundColor Red
    exit 1
}

Write-Host "📦 Installing dependencies..." -ForegroundColor Yellow

# Install root dependencies
Write-Host "Installing root dependencies..."
npm install

# Install frontend dependencies
Write-Host "Installing frontend dependencies..."
Set-Location frontend
npm install
Set-Location ..

# Install backend dependencies
Write-Host "Installing backend dependencies..."
Set-Location backend
npm install
Set-Location ..

Write-Host "✅ Dependencies installed successfully!" -ForegroundColor Green

Write-Host "🔧 Starting servers..." -ForegroundColor Yellow

# Start backend in background
Write-Host "Starting backend server (port 5000)..."
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd '$PWD\backend'; npm run dev"

# Wait a moment for backend to start
Start-Sleep -Seconds 3

# Start frontend in background
Write-Host "Starting frontend server (port 3000)..."
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd '$PWD\frontend'; npm run dev"

Write-Host "🎉 Servers are starting up!" -ForegroundColor Green
Write-Host "📱 Frontend: http://localhost:3000" -ForegroundColor Cyan
Write-Host "🔧 Backend: http://localhost:5000" -ForegroundColor Cyan
Write-Host "💡 Open your browser and go to http://localhost:3000" -ForegroundColor Yellow

Write-Host "Press any key to exit this script (servers will continue running)..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
