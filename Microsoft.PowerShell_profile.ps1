New-Alias vim nvim

$ENV:STARSHIP_DISTRO = "者"
Invoke-Expression (&starship init powershell)

function Invoke-Starship-PreCommand {
  $loc = $($executionContext.SessionState.Path.CurrentLocation);
  $prompt = "$([char]27)]9;12$([char]7)"
  if ($loc.Provider.Name -eq "FileSystem")
  {
    $prompt += "$([char]27)]9;9;`"$($loc.Path)`"$([char]7)"
  }
  $host.ui.Write($prompt)
}
