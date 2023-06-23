#!/usr/bin/env pwsh
param (
  [Parameter(Mandatory = $true)]
  [string]$csv,

  [Parameter(Mandatory = $true)]
  [string[]]$sortColumns
)

# TODO: Figure out why this is breaking Jekyll

# Import the CSV file
$data = Import-Csv -Encoding UTF8 -Path $csv

# Sort the data by the provided columns
$sortedData = $data | Sort-Object $sortColumns

# Export the sorted data to a new CSV file
$sortedData | Export-Csv -Encoding UTF8 -Path $csv -NoTypeInformation -Force
