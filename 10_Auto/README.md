# ВВЕДЕНИЕ


# Цель
1) Создание стенда ДЭ средствами автоматизации terraform и powercli

## Установка плагинов
```powershell
powershell Start-Process powershell -Verb runAs
```

![image](https://user-images.githubusercontent.com/79700810/154459071-660b7527-0e1c-498b-bcdc-8d4ef30e71de.png)

## Установка Chocolatey 

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```
## Установка terraform 
```powershell
choco install terraform
```
## Установка git
```powershell
choco install git
```
## Установка vs code
```powershell
choco install vscode
```
## Установка powercli
```powershell
choco install vmware-powercli-psmodule --force
```
