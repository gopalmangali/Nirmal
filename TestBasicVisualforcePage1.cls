@isTest // Annotation
Private Class TestBasicVisualforcePage1{
    static testMethod void BasicVisualforcePage1(){
        
        BasicVisualforcePage1 BVFP = New BasicVisualforcePage1();
        
        BVFP.num1 = 11;
        BVFP.num2 = 12;
        
        BVFP.myAdditionMethod();
        
        system.assert(BVFP.additionValue==23);
        system.assertEquals(BVFP.additionValue,23);
        
        
        BVFP.mysubMethod();
        
        system.assert(BVFP.additionValue==-1);
        
        
        BVFP.myMulMethod();
        
        system.assert(BVFP.additionValue==132);
        
        BVFP.myDIVMethod();
        
        system.assert(BVFP.additionValue==0);
        
        BasicVisualforcePage1 BVFP1 = New BasicVisualforcePage1();
        
        BVFP1.num1 = 11;
        BVFP1.num2 = 0;
      
        BVFP1.myDIVMethod();
        
    }
}