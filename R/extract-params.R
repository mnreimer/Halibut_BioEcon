#' Extract halibut population dynamics model parameters from the the halibut list
#'
#' @param halibut List object containing all of the input Pacific Halibut life history and fishery selectivity information
#'
#' @return EVERYTHING!
#' @export
#'
extract_params <- function(halibut) {
  
  n.age  <- halibut$theta$A
  n.gear <- dim(halibut$MP)[1]
  n.sex  <- halibut$theta$H
  va <- as.array(halibut$selex) #Overall selectivity
  
  gears <- as.vector(halibut$MP$sector)
  
  
  probCap <- as.array(halibut$probCap) #Probability of capture @ age
  probRetain <- as.array(halibut$probRetain)
  
  wa <- halibut$ageSc$wa #Weight @ age
  fa <- halibut$ageSc$fa #Female spawning biomass @ age
  
  #Age Schedule stuff
  mx <- halibut$ageSc$mx  #Natural mortality @ age
  la <- halibut$ageSc$la  #Length @ age
  wa <- halibut$ageSc$wa  #Weight @ age
  ma <- halibut$ageSc$ma  #Maturity @ age
  fa <- halibut$ageSc$fa  #Fecundity @ age
  lx <- halibut$ageSc$lx  #Survivorship to age
  
  #Age Information
  ages <- halibut$theta$age
  plus.age <- halibut$theta$A
  sexes <- c('Female','Male')
  
  #Recruitment
  steep <- halibut$rec$steep
  sigma_rec <- halibut$rec$sigma_rec
  ro <- halibut$rec$ro
  bo <- halibut$theta$bo*1e6
  
}