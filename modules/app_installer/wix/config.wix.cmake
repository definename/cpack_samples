<?xml version="1.0" encoding="utf-8"?>

<Include xmlns="http://schemas.microsoft.com/wix/2006/wi">
	<?define ProductInstallDir="@VERSION_PRODUCT_NAME@" ?>
	<?define ProductLanguage = "@VERSION_PRODUCT_LANGUAGE@" ?>
	<?define ProductManufacturer="@VERSION_COMPANY_NAME@" ?>
	<?define ProductName="@VERSION_PRODUCT_NAME@" ?>
	<?define ProductUpgradeCode = "@CPACK_WIX_UPGRADE_GUID@" ?>
	<?define ProductVersion="@VERSION_MAJOR@.@VERSION_MINOR@.@VERSION_BUILD@.@VERSION_REVISION@" ?>
	<?define ProductIcon = "@APP_ICON@" ?>

	<?if $(sys.BUILDARCH) = x64 ?>
		<?define ProductDisplayName = "$(var.ProductName) 64-bit" ?>
		<?define PlatformProgramFilesFolder = "ProgramFiles64Folder" ?>
	<?else ?>
		<?define ProductDisplayName = "$(var.ProductName)" ?>
		<?define PlatformProgramFilesFolder = "ProgramFilesFolder" ?>
	<?endif ?>

	<?define AppBinDir = "@CMAKE_BINARY_DIR@/bin/Release" ?>
	<?define AppExeName = "@APP_EXE_NAME@" ?>
	<?define AppServiceName = "@APP_SERVICE_NAME" ?>
	<?define AppServiceDisplayName = "@VERSION_PRODUCT_NAME@" ?>
	<?define AppServiceDescription = "$(var.AppServiceDisplayName) service" ?>
</Include>
