.onAttach <- function(libname = find.package("RKEELjars"), pkgname = "RKEELjars") {

  downloadedFile <- paste0(getJarPath(), "RKEELjars.zip")
  packageStartupMessage("Downloading RKEEL jars. It may take a few minutes.")

  jarList <- getJarList()

  for(jar in jarList){
    downloadedFile <- paste0(getJarPath(), jar)
    if(!file.exists(downloadedFile)){
      downloader::download(url = paste0("http://www.uco.es/~i02momuj/RKEELjars/", jar), destfile = downloadedFile)
    }
  }

  #downloader::download(url = "http://www.uco.es/~i02momuj/RKEELjars.zip", destfile = downloadedFile)
  #unzip(downloadedFile)
}
