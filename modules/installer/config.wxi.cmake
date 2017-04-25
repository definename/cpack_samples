<?xml version="1.0" encoding="utf-8"?>

<Include xmlns="http://schemas.microsoft.com/wix/2006/wi">
  <?define UpgradeCode = "@CPACK_WIX_UPGRADE_GUID@" ?>
  <?define InstallDir="PC Inventory" ?>
  <?define ProductName="Inventory Agent" ?>
  <?define UninstallName="Uninstall $(var.ProductName)" ?>
  <?define ProductVersion="@VERSION_MAJOR@.@VERSION_MINOR@.@VERSION_BUILD@.@VERSION_REVISION@" ?>
  <?define Manufacturer="@VERSION_COMPANY_NAME@" ?>
  <?define ProductLanguage = "1033" ?>

  <?if $(sys.BUILDARCH) = x64 ?>
    <?define ProductDisplayName = "$(var.ProductName) 64-bit" ?>
    <?define PlatformProgramFilesFolder = "ProgramFiles64Folder" ?>
  <?else ?>
    <?define ProductDisplayName = "$(var.ProductName)" ?>
    <?define PlatformProgramFilesFolder = "ProgramFilesFolder" ?>
  <?endif ?>

  <?define BuildDir = "@CMAKE_BINARY_DIR@" ?>
  <?define BinDir = "$(var.BuildDir)\bin\Release" ?>
</Include>
