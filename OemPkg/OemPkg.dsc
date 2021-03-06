## @file
# Oem Sample Package Localized Libraries and Content
#
# Copyright (c) 2018, Microsoft Corporation

# All rights reserved.
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
# 1. Redistributions of source code must retain the above copyright notice,
# this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright notice,
# this list of conditions and the following disclaimer in the documentation
# and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
# IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
# INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
# LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
# OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
##

[Defines]
  PLATFORM_NAME                  = OemPkg
  PLATFORM_GUID                  = 17820FE5-2B34-4B97-80E8-FB435FC3E8DD
  PLATFORM_VERSION               = 1.0
  DSC_SPECIFICATION              = 0x00010005
  OUTPUT_DIRECTORY               = Build/OemPkg
  SUPPORTED_ARCHITECTURES        = IA32|X64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT

[PcdsFeatureFlag]


[PcdsFixedAtBuild]

[LibraryClasses.common]
  BaseLib|MdePkg/Library/BaseLib/BaseLib.inf
  BaseMemoryLib|MdePkg/Library/BaseMemoryLib/BaseMemoryLib.inf
  DebugLib|MdePkg/Library/BaseDebugLibNull/BaseDebugLibNull.inf
  UefiLib|MdePkg/Library/UefiLib/UefiLib.inf
  UefiDriverEntryPoint|MdePkg/Library/UefiDriverEntryPoint/UefiDriverEntryPoint.inf
  MemoryAllocationLib|MdePkg/Library/UefiMemoryAllocationLib/UefiMemoryAllocationLib.inf
  PcdLib|MdePkg/Library/BasePcdLibNull/BasePcdLibNull.inf
  ReportStatusCodeLib|MdePkg/Library/BaseReportStatusCodeLibNull/BaseReportStatusCodeLibNull.inf
  UefiApplicationEntryPoint|MdePkg/Library/UefiApplicationEntryPoint/UefiApplicationEntryPoint.inf

  PrintLib|MdePkg/Library/BasePrintLib/BasePrintLib.inf
  HiiLib|MdeModulePkg/Library/UefiHiiLib/UefiHiiLib.inf
  UefiBootServicesTableLib|MdePkg/Library/UefiBootServicesTableLib/UefiBootServicesTableLib.inf
  UefiRuntimeServicesTableLib|MdePkg/Library/UefiRuntimeServicesTableLib/UefiRuntimeServicesTableLib.inf
  UefiHiiServicesLib|MdeModulePkg/Library/UefiHiiServicesLib/UefiHiiServicesLib.inf
  UefiBootManagerLib|MdeModulePkg/Library/UefiBootManagerLib/UefiBootManagerLib.inf
  DevicePathLib|MdePkg/Library/UefiDevicePathLib/UefiDevicePathLib.inf
  DxeServicesLib|MdePkg/Library/DxeServicesLib/DxeServicesLib.inf
  SafeIntLib|MdePkg/Library/BaseSafeIntLib/BaseSafeIntLib.inf
  BmpSupportLib|MdeModulePkg/Library/BaseBmpSupportLib/BaseBmpSupportLib.inf
  PerformanceLib|MdePkg/Library/BasePerformanceLibNull/BasePerformanceLibNull.inf
  PeCoffGetEntryPointLib|MdePkg/Library/BasePeCoffGetEntryPointLib/BasePeCoffGetEntryPointLib.inf
  DxeServicesTableLib|MdePkg/Library/DxeServicesTableLib/DxeServicesTableLib.inf
  SortLib|MdeModulePkg/Library/UefiSortLib/UefiSortLib.inf
  ResetUtilityLib|MdeModulePkg/Library/ResetUtilityLib/ResetUtilityLib.inf
  ResetSystemLib|MdeModulePkg/Library/DxeResetSystemLib/DxeResetSystemLib.inf
  TimerLib|MdePkg/Library/BaseTimerLibNullTemplate/BaseTimerLibNullTemplate.inf

  UIToolKitLib|MsGraphicsPkg/Library/SimpleUIToolKit/SimpleUIToolKit.inf
  MsUiThemeLib|MsGraphicsPkg/Library/MsUiThemeLib/Dxe/MsUiThemeLib.inf
  BootGraphicsLib|MsGraphicsPkg/Library/BootGraphicsLibNull/BootGraphicsLib.inf
  BootGraphicsProviderLib|MsGraphicsPkg/Library/BootGraphicsProviderLibNull/BootGraphicsProviderLib.inf
  MsColorTableLib|MsGraphicsPkg/Library/MsColorTableLib/MsColorTableLib.inf
  SwmDialogsLib|MsGraphicsPkg/Library/SwmDialogsLib/SwmDialogs.inf

  GraphicsConsoleHelperLib|PcBdsPkg/Library/GraphicsConsoleHelperLib/GraphicsConsoleHelper.inf
  MsBootOptionsLib|PcBdsPkg/Library/MsBootOptionsLib/MsBootOptionsLib.inf
  MsPlatformDevicesLib|PcBdsPkg/Library/MsPlatformDevicesLibNull/MsPlatformDevicesLibNull.inf

  MsAltBootLib|OemPkg/Library/MsAltBootLib/MsAltBootLib.inf
  MsBootPolicyLib|OemPkg/Library/MsBootPolicyLib/MsBootPolicyLib.inf
  MsNVBootReasonLib|OemPkg/Library/MsNVBootReasonLib/MsNVBootReasonLib.inf
  MsUefiVersionLib|OemPkg/Library/MsUefiVersionLib/MsUefiVersionLib.inf

  DeviceStateLib|MsCorePkg/Library/DeviceStateLib/DeviceStateLib.inf
  DeviceBootManagerLib|MsCorePkg/Library/DeviceBootManagerLibNull/DeviceBootManagerLibNull.inf
  MathLib|MsCorePkg/Library/MathLib/MathLib.inf

  RngLib|MdePkg/Library/BaseRngLib/BaseRngLib.inf

[LibraryClasses.IA32]
  MsUiThemeLib|MsGraphicsPkg/Library/MsUiThemeLib/Pei/MsUiThemeLib.inf

[LibraryClasses.X64]

#!if $(TARGET) == DEBUG
  #if debug is enabled provide StackCookie support lib so that we can link to /GS exports
  NULL|MdePkg/Library/BaseBinSecurityLibRng/BaseBinSecurityLibRng.inf
  BaseBinSecurityLib|MdePkg/Library/BaseBinSecurityLibRng/BaseBinSecurityLibRng.inf
#!else
#  BaseBinSecurityLib|MdePkg/Library/BaseBinSecurityLibNull/BaseBinSecurityLibNull.inf
#!endif

  HobLib|MdePkg/Library/DxeHobLib/DxeHobLib.inf

###############################################################
#
# Components Section - list of the modules and components that will be processed by compilation
#                      tools and the EDK II tools to generate PE32/PE32+/Coff image files.
#
# Note: The EDK II DSC file is not used to specify how compiled binary images get placed
#       into firmware volume images. This section is just a list of modules to compile from
#       source into UEFI-compliant binaries.
#       It is the FDF file that contains information on combining binary files into firmware
#       volume images, whose concept is beyond UEFI and is described in PI specification.
#       Binary modules do not need to be listed in this section, as they should be
#       specified in the FDF file. For example: Shell binary (Shell_Full.efi), FAT binary (Fat.efi),
#       Logo (Logo.bmp), and etc.
#       There may also be modules listed in this section that are not required in the FDF file,
#       When a module listed here is excluded from FDF file, then UEFI-compliant binary will be
#       generated for it, but the binary will not be put into any firmware volume.
#
###################################################################################################
[Components]
  OemPkg/Library/MsAltBootLib/MsAltBootLib.inf
  OemPkg/Library/MsBootPolicyLib/MsBootPolicyLib.inf
  OemPkg/Library/MsNVBootReasonLib/MsNVBootReasonLib.inf
  OemPkg/Library/MsUefiVersionLib/MsUefiVersionLib.inf
  OemPkg/Library/BootGraphicsProviderLib/BootGraphicsProviderLib.inf

[Components.X64]
  OemPkg/FrontPage/FrontPage.inf
  OemPkg/BootMenu/BootMenu.inf

[BuildOptions]
#force deprecated interaces off
  *_*_*_CC_FLAGS = -D DISABLE_NEW_DEPRECATED_INTERFACES
