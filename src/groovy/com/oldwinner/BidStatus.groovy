package com.oldwinner

/**
 * Created with IntelliJ IDEA.
 * User: guo
 * Date: 12-12-11
 * Time: PM5:11
 * To change this template use File | Settings | File Templates.
 */
public enum BidStatus {
    INTENTION(1, 'junjie.bidStatus.INTENTION'),
    REGISTRATION(2, 'junjie.bidStatus.REGISTRATION'),
    TENDER(3, 'junjie.bidStatus.TENDER'),
    BID(4, 'junjie.bidStatus.BID'),
    EXPIRATION(5,'junjie.bidStatus.EXPIRATION')

    Integer optionValue
    String name

    BidStatus(Integer optionValue, String name){
        this.optionValue = optionValue
        this.name = name
    }

    static getByName(String name){
        for(BidStatus bs : BidStatus.values()){
            if(bs.name.equals(name)){
                return bs
            }
        }
        return null
    }

    static list(){
        [INTENTION, REGISTRATION, TENDER, BID, EXPIRATION]
    }

    public String toString(){
        return name
    }


}