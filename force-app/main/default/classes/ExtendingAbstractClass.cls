public class ExtendingAbstractClass extends AbstractClass {
    
    public override void method1(){
        super.method1();  // this wil call the method1 of AbstractClass which is been overriden here
        System.debug('method1 of ExtendingAbstractClass');
    }

}

/*
AbstractClass abc = new ExtendingAbstractClass();
abc.method1();
*/