
#' Compute the selection coefficient and error estimates of competition experiment
#'
#' @param dataMatrix
#' @param dilution
#' @param passages
#' @param frequency
#'
#' @return
#' @export
computeSelectionCoefficient <- function(dataMatrix, dilution, passages = NA, frequency = T){
  Check <- ArgumentCheck::newArgCheck()
  if(class(dataMatrix) != "matrix"){
    ArgumentCheck::addError(
      msg = "'dataMatrix' should be a matrix",
      argcheck = Check
    )
  }
  if(class(dilution) != "numeric"){
    ArgumentCheck::addError(
      msg = "'dilution' should be a number",
      argcheck = Check
    )
  }
  if(dilution < 1){
    ArgumentCheck::addError(
      msg = "'dilution' should larger than 1",
      argcheck = Check
    )
  }
  if(!is.na(passages)){
    if(length(passages) != ncol(dataMatrix)){
      ArgumentCheck::addError(
        msg = "Lenght of 'passages' and 'dataMatri' should be the same",
        argcheck = Check
      )
    }
  }
  if(!frequency){
    ArgumentCheck::addError(
      msg = "Calculations based on actual number of cell not implemented. Compute frequencies and redo.",
      argcheck = Check
    )
  }
  if(any(dataMatrix >= 1, na.rm = T) | any(dataMatrix <= 0, na.rm = T)){
    ArgumentCheck::addError(
      msg = "frequencies should be larger than 0 and lower than 1",
      argcheck = Check
    )
  }
  ArgumentCheck::finishArgCheck(Check)

  if(is.na(passages)){
    passages = seq(ncol(dataMatrix))
  }

  #Estimate initial frequency of each replicate

}

#' Title
#'
#' @param frequencies
#' @param passages
#' @param dilution
#'
#' @return
estimateInitialFrequency <- function(frequencies, passages, dilution){
  logRatio = log(frequencies/(1 - frequencies))

}
