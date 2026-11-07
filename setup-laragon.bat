@echo off
REM Setup Laragon environment helper
REM Run this script to configure MySQL connection for Laragon

echo === Setup Laragon Environment ===
echo.

REM Copy .env.example to .env if not exists
if not exist .env (
    copy .env.example .env
    echo .env created from .env.example
) else (
    echo .env already exists, skipping
)

REM Generate app key
php artisan key:generate

REM Run migrations
php artisan migrate

echo.
echo === Setup selesai ===
pause