# Disable/Enable touchscreen function
function DisableEnable-Touchscreen {
    # Check if touchscreen is enabled
    $isEnabled = Get-PnpDevice -FriendlyName "HID-compliant touch screen" | Where-Object {$_.Status -eq "OK"}

    # Disable touchscreen if it's enabled
    if ($isEnabled) {
        Disable-PnpDevice -InstanceId $isEnabled.InstanceId
        Write-Host "Touchscreen has been disabled."
    }
    # Re-enable touchscreen if it's disabled
    else {
        Enable-PnpDevice -InstanceId (Get-PnpDevice -FriendlyName "HID-compliant touch screen" | Where-Object {$_.Status -eq "Error"}).InstanceId
        Write-Host "Touchscreen has been re-enabled."
    }
}

# Call the function
DisableEnable-Touchscreen