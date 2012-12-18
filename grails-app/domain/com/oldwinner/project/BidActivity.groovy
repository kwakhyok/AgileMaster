package com.oldwinner.project

import com.oldwinner.Identity.Organization
import com.oldwinner.BidStatus

class BidActivity {

    BidStatus stage
    String memo
    Integer BidPrice
    Date dateCreated
    Date lastUpdated

    static belongsTo = [organization:Organization, bidSection: BidSection]


    static constraints = {
        stage (nullable: false)
        BidPrice(validator: {price, bidActivity ->
            if(bidActivity == BidStatus.BID){
                return price > 0
            }else{
                return price == 0
            }
        })
        memo (size: 0..1000, nullable: true)

    }

    public String toString(){
        stage.name()  + " by " + organization?.name
    }
}
