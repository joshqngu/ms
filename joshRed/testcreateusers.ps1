

param(
	[string]$Password
)

if ([string]::IsNullOrWhiteSpace($Password)) {
	throw "Supply a password with -Password."
}

$securePassword = ConvertTo-SecureString $Password -AsPlainText -Force
# 2. Define the list of usernames
$UserList = @(
    'charliebrown',
    'lucyvanpelt',
    'linusvanpelt',
    'snoopy',
    'woodstock',
    'peppermintpatty',
    'marcie',
    'schroeder',
    'pigpen',
    'sallybrown',
    'charlie',
    'lucy',
    'linus',
    'snoopydog',
    'woodstockbird',
    'peppermint',
    'marciebrown',
    'schroederpiano',
    'pigpenmud',
    'sally'
)

# 3. Create each user and add them to the standard "Users" group
foreach ($Username in $UserList) {
    if (Get-LocalUser -Name $Username -ErrorAction SilentlyContinue) {
        continue
    }

    New-LocalUser -Name $Username -Password $SecurePassword
    Add-LocalGroupMember -Group "Administrators" -Member $Username
}
