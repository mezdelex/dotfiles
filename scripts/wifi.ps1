$networks = [System.Collections.Generic.List[PSCustomObject]]::new()

foreach ($line in (netsh wlan show networks mode=bssid))
{
    if ($line -match 'SSID\s+\d+\s+:\s+(.*)')
    {
        $currentSsid = $matches[1].Trim()
    } elseif ($line -match 'Signal\s+:\s+(.*)')
    {
        $currentSignal = $matches[1].Trim()
    } elseif ($line -match 'Channel\s+:\s+(.*)')
    {
        $networks.Add([PSCustomObject]@{
                SSID    = $currentSsid
                Channel = [int]$matches[1].Trim()
                Signal  = $currentSignal
            })
    }
}

$networks | Sort-Object Channel | Format-Table -AutoSize
