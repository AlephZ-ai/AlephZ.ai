#!/usr/bin/env pwsh
param (
  [Parameter(Mandatory = $true)]
  [string]$csv,

  [Parameter(Mandatory = $true)]
  [string[]]$sortColumns
)

# Import the CSV file
$data = Import-Csv -Path $csv

# Sort the data by the provided columns
$sortedData = $data | Sort-Object $sortColumns

# Export the sorted data to a new CSV file
$sortedData | Export-Csv -Path $csv -NoTypeInformation -Force
