param($repo)

$labels = Get-Content -Path "labels/labels.json" -Encoding UTF8 | ConvertFrom-Json

foreach ($label in $labels) {
    gh label create $label.name --color $label.color --description $label.description --repo $repo --force
}

# .\labels\create-labels.ps1 wjdwo-dev/레포이름 로 명령어 입력