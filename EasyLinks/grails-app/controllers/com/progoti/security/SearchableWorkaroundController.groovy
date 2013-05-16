package com.progoti.security

class SearchableWorkaroundController {

    def searchableService
    def beforeInterceptor = [action:this.&disableIndexing, only:['save','update']]
    def afterInterceptor = [action:this.&enableIndexing, only:['save','update']]

    def disableIndexing(){
        searchableService?.stopMirroring()
    }

    def enableIndexing(model){
        searchableService?.startMirroring()
        searchableService?.reindex()
    }

}