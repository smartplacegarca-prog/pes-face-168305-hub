# CHANCE 1 — V3.2 + V4.2 face_high morph ONLY — Luiz Guilherme / PLAYER ID 168305
# Transactional install + exact restore from INSTALL_MANIFEST.json
param(
    [Parameter(Mandatory = $true)]
    [ValidateSet('Install', 'Restore')]
    [string]$Action
)

$ErrorActionPreference = 'Stop'
$Root = $PSScriptRoot

$ExpectedFpkStable = '840ca7453e65c3e294f4d795af1cecb11dd0e7817abebcff19c92d5cc4f692e7'
$FinalFpk          = '28c90deb454d64375947143a4c7f6bf44a37ccbc33c06b265760e704981032df'
$FinalFace         = '4fd1f7cf13526c805cc297e349fefd67d6c6c7ffec881c035f539b323c25ef99'
$FinalHair         = '3c72376087e81824125226f0ad89fced7c96f9d7872266759b82210bb111ac86'

function Get-Sha256([string]$Path) {
    if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) { return $null }
    return (Get-FileHash -Algorithm SHA256 -LiteralPath $Path).Hash.ToLowerInvariant()
}

function Find-Game {
    $candidates = @(
        'C:\Program Files (x86)\SP Football Life 2026',
        'C:\Program Files\SP Football Life 2026',
        'D:\SP Football Life 2026',
        'E:\SP Football Life 2026'
    )
    $hint = Join-Path $Root 'GAME_PATH.txt'
    if (Test-Path -LiteralPath $hint) {
        $line = (Get-Content -LiteralPath $hint -TotalCount 1).Trim()
        if ($line) { $candidates = @($line) + $candidates }
    }
    foreach ($c in $candidates) {
        $sider = Join-Path $c 'SiderAddons'
        if (Test-Path -LiteralPath $sider -PathType Container) { return $c }
    }
    Add-Type -AssemblyName System.Windows.Forms | Out-Null
    $d = New-Object System.Windows.Forms.FolderBrowserDialog
    $d.Description = 'Selecione a pasta do SP Football Life 2026 (a que contem SiderAddons).'
    if ($d.ShowDialog() -eq 'OK') { return $d.SelectedPath }
    throw 'Pasta do Football Life nao encontrada. Crie GAME_PATH.txt com o caminho.'
}

function Assert-GameClosed {
    $proc = Get-Process -Name 'FL_2026' -ErrorAction SilentlyContinue
    if ($null -ne $proc) {
        throw 'Feche completamente o Football Life (FL_2026.exe) e execute de novo.'
    }
}

$Game = Find-Game
$SiderRoot = Join-Path $Game 'SiderAddons'
$RealRoot = Join-Path $SiderRoot 'livecpk\root\Asset\model\character\face\real'
$PlayerDir = Join-Path $RealRoot '168305'
$AliasDir = Join-Path $RealRoot '5603a'
$WinDir = Join-Path $PlayerDir '#Win'
$TexDir = Join-Path $AliasDir 'sourceimages\#windx11'
$Results = Join-Path $Root 'RESULTADOS'
New-Item -ItemType Directory -Path $Results -Force | Out-Null
$ManifestPath = Join-Path $Results 'INSTALL_MANIFEST.json'

$KitFpk = Join-Path $Root 'LIVECPK\root\Asset\model\character\face\real\168305\#Win\face.fpk'
$KitFace = Join-Path $Root 'LIVECPK\root\Asset\model\character\face\real\5603a\sourceimages\#windx11\face_bsm_alp.ftex'
$KitHair = Join-Path $Root 'LIVECPK\root\Asset\model\character\face\real\5603a\sourceimages\#windx11\hair_parts_bsm_alp.ftex'

function New-FileRecord([string]$Dest, [string]$BackupDir) {
    $existed = Test-Path -LiteralPath $Dest -PathType Leaf
    $rec = [ordered]@{
        dest     = $Dest
        existed  = $existed
        hash     = $null
        backup   = $null
    }
    if ($existed) {
        $rec.hash = Get-Sha256 $Dest
        New-Item -ItemType Directory -Path $BackupDir -Force | Out-Null
        $safe = ($Dest -replace '[\\/:\*\?"<>\|]', '_')
        $bak = Join-Path $BackupDir $safe
        Copy-Item -LiteralPath $Dest -Destination $bak -Force
        $rec.backup = $bak
    }
    return [pscustomobject]$rec
}

switch ($Action) {
    'Install' {
        Assert-GameClosed
        if ((Get-Sha256 $KitFpk) -ne $FinalFpk) { throw 'Kit FPK hash mismatch' }
        if ((Get-Sha256 $KitFace) -ne $FinalFace) { throw 'Kit face FTEX hash mismatch' }
        if ((Get-Sha256 $KitHair) -ne $FinalHair) { throw 'Kit hair FTEX hash mismatch' }

        $stamp = Get-Date -Format 'yyyyMMdd_HHmmss'
        $session = Join-Path $Results ("SESSION_" + $stamp)
        $backupDir = Join-Path $session 'pre_install'
        New-Item -ItemType Directory -Path $backupDir -Force | Out-Null

        $destFpk = Join-Path $WinDir 'face.fpk'
        $destFace = Join-Path $TexDir 'face_bsm_alp.ftex'
        $destHair = Join-Path $TexDir 'hair_parts_bsm_alp.ftex'
        $legacyTex = Join-Path $PlayerDir 'sourceimages\#windx11'

        $records = @()
        $records += New-FileRecord $destFpk $backupDir
        $records += New-FileRecord $destFace $backupDir
        $records += New-FileRecord $destHair $backupDir

        $quarantined = @()
        if (Test-Path -LiteralPath $legacyTex -PathType Container) {
            $q = Join-Path $session 'quarantine_168305_sourceimages'
            New-Item -ItemType Directory -Path $q -Force | Out-Null
            Get-ChildItem -LiteralPath $legacyTex -File -ErrorAction SilentlyContinue | ForEach-Object {
                $records += New-FileRecord $_.FullName $q
                $quarantined += $_.FullName
            }
        }

        New-Item -ItemType Directory -Path $WinDir, $TexDir -Force | Out-Null
        Copy-Item -LiteralPath $KitFpk -Destination $destFpk -Force
        Copy-Item -LiteralPath $KitFace -Destination $destFace -Force
        Copy-Item -LiteralPath $KitHair -Destination $destHair -Force

        if ((Get-Sha256 $destFpk) -ne $FinalFpk) { throw 'Install FPK hash mismatch after copy' }
        if ((Get-Sha256 $destFace) -ne $FinalFace) { throw 'Install face FTEX hash mismatch after copy' }
        if ((Get-Sha256 $destHair) -ne $FinalHair) { throw 'Install hair FTEX hash mismatch after copy' }

        foreach ($qpath in $quarantined) {
            if (Test-Path -LiteralPath $qpath -PathType Leaf) {
                Remove-Item -LiteralPath $qpath -Force
            }
        }

        $manifest = [ordered]@{
            stamp        = $stamp
            session      = $session
            game         = $Game
            files        = $records
            created      = @($destFpk, $destFace, $destHair)
            quarantined  = $quarantined
            kit          = @{ fpk = $FinalFpk; face = $FinalFace; hair = $FinalHair }
        }
        ($manifest | ConvertTo-Json -Depth 8) | Set-Content -LiteralPath $ManifestPath -Encoding UTF8
        Copy-Item $ManifestPath (Join-Path $session 'INSTALL_MANIFEST.json') -Force
        Write-Host "INSTALADO. Restore usa $ManifestPath"
        Write-Host "FPK $FinalFpk"
        Write-Host "FACE $FinalFace"
        Write-Host "HAIR $FinalHair"
        Write-Host "Sclera NAO alterada (original do CPK)."
    }
    'Restore' {
        Assert-GameClosed
        if (-not (Test-Path -LiteralPath $ManifestPath)) {
            throw "Sem INSTALL_MANIFEST.json. Nada a restaurar desta sessao."
        }
        $m = Get-Content -LiteralPath $ManifestPath -Raw -Encoding UTF8 | ConvertFrom-Json
        foreach ($f in @($m.files)) {
            $dest = [string]$f.dest
            $existed = [bool]$f.existed
            if ($existed) {
                if (-not $f.backup) { throw "Manifest sem backup para $dest" }
                if (-not (Test-Path -LiteralPath $f.backup)) { throw "Backup em falta: $($f.backup)" }
                New-Item -ItemType Directory -Path (Split-Path $dest) -Force | Out-Null
                Copy-Item -LiteralPath $f.backup -Destination $dest -Force
                $now = Get-Sha256 $dest
                if ($f.hash -and ($now -ne $f.hash)) {
                    throw "Restore hash mismatch $dest esperado $($f.hash) obtido $now"
                }
            } else {
                if (Test-Path -LiteralPath $dest -PathType Leaf) {
                    Remove-Item -LiteralPath $dest -Force
                }
            }
        }
        Write-Host "RESTAURADO o estado exacto anterior a este install (manifest $($m.stamp))."
    }
}
