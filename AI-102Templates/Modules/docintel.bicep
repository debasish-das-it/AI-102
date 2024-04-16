param location string

var unique = uniqueString(resourceGroup().id, subscription().id)

// Document Intelligence resource
resource docIntel 'Microsoft.CognitiveServices/accounts@2023-10-01-preview' = {
  name: 'docintel${unique}'
  location: location
  kind: 'FormRecognizer'
  sku: {
    name: 'S0'
  }
}