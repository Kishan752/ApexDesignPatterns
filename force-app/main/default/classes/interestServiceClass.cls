public class interestServiceClass {

    Public static Integer getInterestRates(String bankname){
        factorypatternInterface fi=getinstance(bankname);
        
        return fi.getInterestrate();
        
    }
    
    Public static factorypatternInterface getinstance(String bankName){
       
        Map<String,String> classMap=new Map<String,String>();
        for(BanksMetadata__mdt bk:[select bankname__c,bankClassName__c from BanksMetadata__mdt  ]){
            classMap.put(bk.bankname__c,bk.bankClassName__c);
        }
        
        Type t = Type.forName(classMap.get(bankname));
        factorypatternInterface fi=(factorypatternInterface)t.newInstance();
        return fi;
        
        
        
    }
    
    
}

//System.debug(interestServiceClass.getInterestRates('ICICI'));