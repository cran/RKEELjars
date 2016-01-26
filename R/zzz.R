.onLoad <- function(libname = find.package("RKEELjars"), pkgname = "RKEELjars") {

  jarList <- getJarList()

  for(jar in jarList){
    downloadedFile <- paste0(getJarPath(), jar)
    if(!file.exists(downloadedFile)){
      packageStartupMessage(paste0("Downloading ", jar, ".jar."))
      downloader::download(url = paste0("http://www.uco.es/~i02momuj/RKEELjars/", jar), destfile = downloadedFile)
    }
  }
}
