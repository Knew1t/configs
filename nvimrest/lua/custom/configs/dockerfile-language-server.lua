interface Settings {
  docker: {
    languageserver: {
      diagnostics?: {
        // string values must be equal to "ignore", "warning", or "error"
        deprecatedMaintainer?: string,
        directiveCasing?: string,
        emptyContinuationLine?: string,
        instructionCasing?: string,
        instructionCmdMultiple?: string,
        instructionEntrypointMultiple?: string,
        instructionHealthcheckMultiple?: string,
        instructionJSONInSingleQuotes?: string
      },
      formatter?: {
        ignoreMultilineInstructions?: boolean,
      }
    }
  }
}
