netsh wlan show networks mode=bssid | ForEach-Object {
    if ($_ -match '^\s*SSID\s+\d+\s*:\s*(.*)')       { $ssid = $matches[1].Trim() }
    elseif ($_ -match '^\s*BSSID\s+\d+\s*:\s*(\S+)') { $bssid = $matches[1] }
    elseif ($_ -match '^\s*Signal\s*:\s*(\d+)')      { $signal = [int]$matches[1] }
    elseif ($_ -match '^\s*Channel\s*:\s*(\d+)')     {
        [PSCustomObject]@{
            SSID    = if ($ssid) { $ssid } else { '<hidden>' }
            Channel = [int]$matches[1]
            Signal  = $signal
            BSSID   = $bssid
        }
    }
} | Sort-Object Channel, @{ Expression = 'Signal'; Descending = $true } | Format-Table -AutoSize
