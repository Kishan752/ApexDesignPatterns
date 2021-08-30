//The object of this class will be one throughout an trasaction
public class SingeltonPatternClass {

    Private static SingeltonPatternClass spc=null;
    
    private SingeltonPatternClass(){
        //handle Singleton design pattern
    }
    
    public static SingeltonPatternClass getObject(){
        if(spc == null){
            spc = new SingeltonPatternClass();
        }
        return spc;
    }
    
    public list<Account> getAccounts(){
        return [select id,name from account limit 10];
    }
    
}

/*
SingeltonPatternClass sc=SingeltonPatternClass.getObject();
System.debug(sc.getAccounts());

*/