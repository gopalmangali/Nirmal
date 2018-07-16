public class newtestclass {
    /*
    

RBEditPageNavigationController
RecurringOpportunityHelper 
RBProductsEditAllController
RecurringOpportunityAccountController 
clstriggeropportunityhandler
RBStatusUpdateHelper
ClsTriggerFactory
ClsTriggerRBReferenceHandler  
ClsTriggerRBReferenceHelper
RBupdateOpportunityHelper
RBupdateAgreementHelper
ClsTriggerAgreementHandler_CLM
RBEditPageNavigationController
RecurringCPBPCheckController




@isTest(seeAllData = false)
public with sharing class RecurringOpportunityControllerTest{

        public static testmethod void ProductSplit(){
        Account acc1 = new Account(); 
        acc1.Name = 'Test Account5 239';    
        acc1.Primary_Account_Manager__c = 'mtester5@company.com';   
        acc1.BillingStreet = 'dajie5';
        acc1.BillingCity = 'berlin5';
        acc1.BillingState = 'Berlin';
        acc1.BillingPostalCode = '520012';
        acc1.BillingCountry = 'Germany';
        insert acc1;
             
        ABB_Location__c loc = new ABB_Location__c();
        loc.BU__c = 'RMMG';
        loc.Name = 'Manufacturing: 4130, China - Nanchang';
        loc.Company__c = 'CNGEN';
        loc.Country__c = 'China';
        loc.DIV__c = 'DM';   
        loc.Product_Group__c = '4130-Large Motors & Generators'; 
        loc.Activity__c ='Test';
        insert loc;
        
        RecordType RecType = [Select Id From RecordType  Where SobjectType = 'Product2' and DeveloperName = 'APTS_Global_Products'];   
        Product_Group__c pg = new Product_Group__c();
        pg.Business_Unit__c = 'tdsd';
        pg.Name = '4104';
        pg.Division__c = '10';
        pg.Data_Load_Year__c='2017';
        insert pg;
        
        End_User_Project__c endUser = new End_User_Project__c();
        endUser.Name='Test User';
        endUser.Account_End_User__c=acc1.id;
        insert endUser;
    
        Opportunity oppy = new Opportunity();
        oppy.AccountId = acc1.Id;
        oppy.Name = 'Testpyssss';
        oppy.StageName = 'Closed Won';
        oppy.CloseDate = system.today();
        oppy.Actual_Bid_Submission_Date_Comm__c = system.today()-1;
        oppy.Product_Group__c = pg.Id;
        oppy.Requested_Bid_Submission_Date_Comm__c = system.today()-1;
        oppy.Application__c = 'AP.302 Cable Car - Ski Lift';
        oppy.Local_Product_Group__c = pg.Id;
        oppy.CurrencyIsoCode = 'USD';
        oppy.Opportunity_Value__c = 18646;
        oppy.End_User_Project__c=endUser.Id;
        oppy.ABB_Location__c=loc.id;
        oppy.ABB_Probability__c = 100;
        Test.starttest();
        insert oppy;
        Test.stopTest();
        
        Product2 p = new Product2();   
        p.Description = 'Aluminium Solutions';     
        p.Name = 'Desc Aluminium Solutions';
        p.Product_Group__c = 4104;
        p.RecordTypeId = RecType.Id;
        p.CID__c = 'ABCD1234';
        p.IsActive = TRUE;       
        insert p;
        
     
        PricebookEntry pbe = new PricebookEntry();
        pbe.Pricebook2Id = Test.getStandardPricebookId();
        pbe.UnitPrice = 20;
        pbe.IsActive = true;
        pbe.Product2Id = p.Id;
        pbe.CurrencyIsoCode =oppy.CurrencyIsoCode;
        
        insert pbe;
        
        
        Recurring_Business__c rb = new Recurring_Business__c();
       // rb.id='aBt9E0000008OPGSA2';
        rb.ABB_Domain__c='DMRO';
        rb.ABB_Industry_Usage_Level1__c='IND';
        rb.ABB_Industry_Usage_Level2__c='IND.4';
        rb.ABB_Industry_Usage_Level3__c='IND.4.3';
       // rb.Account_Customer__c='BIMBO de Argentina S.A.';
        rb.Account_End_User__c='0019E00000K0jIi';
        rb.All_Target_vs_All_Commit__c='Others';
        rb.Application__c='AP.419';
        rb.AvailableRBValue__c='700000';
        rb.Award_Date__c=Date.newInstance(2017, 10, 20);
        rb.Business_Line__c='BL.301';
        rb.BU__c='DMRO';
        rb.Channel_Class_Level1__c='DEU';
        rb.Channel_Class_Level2__c='ABBPRD';
        rb.CurrencyIsoCode='USD';
        rb.Date__c= Date.newInstance(2017, 10, 27);
        rb.Delivery_Date__c=Date.newInstance(2018, 05, 16);
        rb.Opportunity__c =oppy.Id;
        rb.End_Date__c=Date.newInstance(2018, 08, 08);
        rb.End_User_Project__c='a0V9E0000002PmqUAE';
        rb.Frequency__c='Monthly';
        rb.Main_PG_Technical__c='4314';
        rb.Name='RB - Encajonado + Paletizado Valente';
        rb.Packed__c=false;
        rb.Parent__c='Encajonado + Paletizado Valente';
        rb.Periods__c='3';
        rb.Price__c=300;
        rb.Quantity__c=250.00;
        rb.sobjectType__c='';
        rb.Split_JSON__c='[{"Productid":"01t20000004wMQOAA2","Productname":"Aluminium Solutions","Quantity":11,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":140000,"SubTotal":null},{"Productid":"01t20000004wJSdAAM","Productname":"Automotive","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null},{"Productid":"01t20000004wJ53AAE","Productname":"Cables and Cable Accessories","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null},{"Productid":"01t20000004wMQPAA2","Productname":"Automation / Control Architecture","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null},{"Productid":"01t20000004wMQXAA2","Productname":"Electrification","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null}]';
        rb.Start_Date__c=Date.newInstance(2017, 10, 27);
        rb.Status__c='In Progress';
        rb.TotalRBValue__c='25000';
        rb.Type__c='Quantity';
        rb.Value__c='354528';
        insert rb;
        system.assertNotEquals(NULL,rb.Id);
        RB_Reference__c rbref = new RB_Reference__c();
        rbref.EAD__c=system.today().addDays(30);
        rbref.RO_Name__c='RO1';
        rbref.Products_1__c='[{"UnitPrice":0,"Totalprice":0,"ROvalue":46666,"ROname":"RO3","Quantity":11,"Productname":"Aluminium Solutions","Productid":"01t20000004wMQOAA2"},{"UnitPrice":0,"Totalprice":0,"ROvalue":46666,"ROname":"RO3","Quantity":1,"Productname":"Automotive","Productid":"01t20000004wJSdAAM"},{"UnitPrice":0,"Totalprice":0,"ROvalue":46666,"ROname":"RO3","Quantity":1,"Productname":"Cables and Cable Accessories","Productid":"01t20000004wJ53AAE"},{"UnitPrice":0,"Totalprice":0,"ROvalue":46666,"ROname":"RO3","Quantity":1,"Productname":"Automation / Control Architecture","Productid":"01t20000004wMQPAA2"},{"UnitPrice":0,"Totalprice":0,"ROvalue":46666,"ROname":"RO3","Quantity":1,"Productname":"Electrification","Productid":"01t20000004wMQXAA2"}]';
        //rbref.Products_2__c='UnitPrice":43000,"Totalprice":5000';
        rbref.Total_Value__c=1100;
        rbref.RB_ID__c=rb.id;
        insert rbref;
        
        List<OpportunityLineitem> oliList = new List<OpportunityLineitem>();
        OpportunityLineitem oli = new OpportunityLineitem();
        oli.OpportunityId = oppy.Id;
        oli.PricebookEntryId = pbe.Id;
        oli.Quantity = 2.03;
        oli.TotalPrice = 221.1;
        oli.Primary_Product_Group__c = true;
        oli.Product_Group__c = 4104;
        oliList.add(oli);
        
        OpportunityLineItem olti = new OpportunityLineItem();
        olti.OpportunityId = oppy.id;
        olti.PricebookEntryId = pbe.Id;
        olti.Quantity = 5;
        olti.TotalPrice = 2600.00;
        olti.Primary_Product_Group__c = false;
        oliList.add(olti);
        
        //Test.starttest();
        insert oliList;
        ClsTriggerFactory.isSkipOpptyTrigger = true;
       // Test.stopTest();
        
        
       RecurringOpportunityController.getProductSplitData(rb.id);
       RecurringOpportunityController.getProductSplitFullFillData(oppy.id,rb.id);
       //RecurringOpportunityController.createRecurringOpportunity(rb.id);
       //RecurringOpportunityController.getSourceData(oppy.id,rb.id);
      // RecurringOpportunityController.saveRB();
       //RecurringOpportunityController.GetFieldPicklistValues(oppy.id,rb.id);
       RecurringOpportunityController.getProductsData(oppy.id);
       RecurringOpportunityController.getProductsName(oppy.id,p.id);
      // RecurringOpportunityController.createRecurringOpportunity(oppy.id);     
       RecurringOpportunityController.getPreviewData(oppy.id,rb.id);
       RecurringOpportunityController.getExistingRBData(rb.id);
       RecurringOpportunityController.fetchChannelClass();
       RecurringOpportunityController.fetchChannelLevel2Class();
       RecurringOpportunityController.fetchBU();
       RecurringOpportunityController.fetchApplication();
       RecurringOpportunityController.fetchBusinessLine();
       RecurringOpportunityController.fetchBL();
       RecurringOpportunityController.getRefreshedData(oppy.id,rb.id);
       //RecurringOpportunityController.updateRefreshedData();    
        Decimal[] dd=new Decimal[]{0.0,0.0,0.0,0.0};
        String[] st = new String[]{'yes','no','yes','no'};
        RecurringOpportunityController.RBLineitems rblineItem  = new RecurringOpportunityController.RBLineitems('01t20000004wMQXAA2','Automotive',11,0,0,1234,dd); 
       // RecurringOpportunityController.RBLineitems rblineItem  = new RecurringOpportunityController.RBLineitems('01t20000004wMQXAA2','Automotive',11.55,0.00,0.00,1234,dd);     
       RecurringOpportunityController.SourcelineitemsAdd srclineitemadd= new RecurringOpportunityController.SourcelineitemsAdd('01t20000004wMQXAA2','Automotive',11.55,0.00,0.00,0.00,1234,dd,st,'RO1','xyz'); 
        RecurringOpportunityController.RoLineItems rolineItem = new RecurringOpportunityController.RoLineItems('RO1','01t20000004wMQXAA2','Automotive',0.00,0.00,0.00,0.00,0.00,'abc');
        RecurringOpportunityController.RoLineItemsAdd rolineItemadd = new RecurringOpportunityController.RoLineItemsAdd('RO1','01t20000004wMQXAA2','Automotive',0.00,0.00,0.00,0.00,0.00,'abc'); 
    }
    public static testmethod void ProductSplit1(){
        Account acc1 = new Account(); 
        acc1.Name = 'Test Account5 239';    
        acc1.Primary_Account_Manager__c = 'mtester5@company.com';   
        acc1.BillingStreet = 'dajie5';
        acc1.BillingCity = 'berlin5';
        acc1.BillingState = 'Berlin';
        acc1.BillingPostalCode = '520012';
        acc1.BillingCountry = 'Germany';
        insert acc1;
            
        ABB_Location__c loc = new ABB_Location__c();
        loc.BU__c = 'RMMG';
        loc.Name = 'Manufacturing: 4130, China - Nanchang';
        loc.Company__c = 'CNGEN';
        loc.Country__c = 'China';
        loc.DIV__c = 'DM';   
        loc.Product_Group__c = '4130-Large Motors & Generators'; 
        loc.Activity__c ='Test';
        insert loc;
        
        RecordType RecType = [Select Id From RecordType  Where SobjectType = 'Product2' and DeveloperName = 'APTS_Global_Products'];   
        Product_Group__c pg = new Product_Group__c();
        pg.Business_Unit__c = 'tdsd';
        pg.Name = '4104';
        pg.Division__c = '10';
        pg.Data_Load_Year__c='2017';
        insert pg;
        
        End_User_Project__c endUser = new End_User_Project__c();
        endUser.Name='Test User';
        endUser.Account_End_User__c=acc1.id;
        insert endUser;
    
        Opportunity oppy = new Opportunity();
        oppy.AccountId = acc1.Id;
        oppy.Name = 'Testpyssss';
        oppy.StageName = 'Closed Won';
        oppy.CloseDate = system.today();
        oppy.Actual_Bid_Submission_Date_Comm__c = system.today()-1;
        oppy.Product_Group__c = pg.Id;
        oppy.Requested_Bid_Submission_Date_Comm__c = system.today()-1;
        oppy.Application__c = 'AP.302 Cable Car - Ski Lift';
        oppy.Local_Product_Group__c = pg.Id;
        oppy.CurrencyIsoCode = 'USD';
        oppy.Opportunity_Value__c = 18646;
        oppy.End_User_Project__c=endUser.Id;
        oppy.ABB_Location__c=loc.id;
        oppy.ABB_Probability__c = 100;
        Test.starttest();
        insert oppy;
        Test.stopTest();
        
        Product2 p = new Product2();   
        p.Description = 'Aluminium Solutions';     
        p.Name = 'Desc Aluminium Solutions';
        p.Product_Group__c = 4104;
        p.RecordTypeId = RecType.Id;
        p.CID__c = 'ABCD1234';
        p.IsActive = TRUE;
        
        insert p;
        
        PricebookEntry pbe = new PricebookEntry();
        pbe.Pricebook2Id = Test.getStandardPricebookId();
        pbe.UnitPrice = 20;
        pbe.IsActive = true;
        pbe.Product2Id = p.Id;
        pbe.CurrencyIsoCode =oppy.CurrencyIsoCode;             
        insert pbe;
 
        Recurring_Business__c rb = new Recurring_Business__c();
       // rb.id='aBt9E0000008OPGSA2';
        rb.ABB_Domain__c='DMRO';
        rb.ABB_Industry_Usage_Level1__c='IND';
        rb.ABB_Industry_Usage_Level2__c='IND.4';
        rb.ABB_Industry_Usage_Level3__c='IND.4.3';
        rb.Account_Customer__c=acc1.id;
        rb.ABB_Location__c = loc.id;
        rb.Account_End_User__c='0019E00000K0jIi';
        rb.All_Target_vs_All_Commit__c='Others';
        rb.Application__c='AP.419';
        rb.AvailableRBValue__c='700000';
        rb.Award_Date__c=Date.newInstance(2017, 10, 20);
        rb.Business_Line__c='BL.301';
        rb.BU__c='DMRO';
        rb.Channel_Class_Level1__c='DEU';
        rb.Channel_Class_Level2__c='ABBPRD';
        rb.CurrencyIsoCode='USD';
        rb.Date__c= Date.newInstance(2017, 10, 27);
        rb.Delivery_Date__c=Date.newInstance(2018, 05, 16);
        rb.Opportunity__c =oppy.Id;
        rb.End_Date__c=Date.newInstance(2018, 08, 08);
        rb.End_User_Project__c='a0V9E0000002PmqUAE';
        rb.Frequency__c='Monthly';
        rb.Main_PG_Technical__c='4314';
        rb.Name='RB - Encajonado + Paletizado Valente';
        rb.Packed__c=false;
        rb.Parent__c='Encajonado + Paletizado Valente';
        rb.Periods__c='3';
        rb.Price__c=300;
        rb.Quantity__c=250.00;
        rb.sobjectType__c='';
        rb.Split_JSON__c='[{"Productid":"01t20000004wMQOAA2","Productname":"Aluminium Solutions","Quantity":11,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":140000,"SubTotal":null},{"Productid":"01t20000004wJSdAAM","Productname":"Automotive","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null},{"Productid":"01t20000004wJ53AAE","Productname":"Cables and Cable Accessories","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null},{"Productid":"01t20000004wMQPAA2","Productname":"Automation / Control Architecture","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null},{"Productid":"01t20000004wMQXAA2","Productname":"Electrification","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null}]';
        rb.Start_Date__c=Date.newInstance(2017, 10, 27);
        rb.Status__c='In Progress';
        rb.TotalRBValue__c='25000';
        rb.Type__c='Quantity';
        rb.Value__c='354528';
        insert rb;  
        ClsTriggerFactory.isSkipOpptyTrigger = true;
        system.assertNotEquals(NULL,rb.Id);
         
         //List<Recurring_Business__c> rbnew = new List<Recurring_Business__c>();
        // rbnew.add(rb);
        
        RB_Reference__c rbref = new RB_Reference__c();
        rbref.EAD__c=system.today().addDays(30);
        rbref.RO_Name__c='RO1';
        rbref.Products_1__c='[{"UnitPrice":0,"Totalprice":0,"ROvalue":46666,"ROname":"RO3","Quantity":11,"Productname":"Aluminium Solutions","Productid":"01t20000004wMQOAA2"},{"UnitPrice":0,"Totalprice":0,"ROvalue":46666,"ROname":"RO3","Quantity":1,"Productname":"Automotive","Productid":"01t20000004wJSdAAM"},{"UnitPrice":0,"Totalprice":0,"ROvalue":46666,"ROname":"RO3","Quantity":1,"Productname":"Cables and Cable Accessories","Productid":"01t20000004wJ53AAE"},{"UnitPrice":0,"Totalprice":0,"ROvalue":46666,"ROname":"RO3","Quantity":1,"Productname":"Automation / Control Architecture","Productid":"01t20000004wMQPAA2"},{"UnitPrice":0,"Totalprice":0,"ROvalue":46666,"ROname":"RO3","Quantity":1,"Productname":"Electrification","Productid":"01t20000004wMQXAA2"}]';
        //rbref.Products_2__c='UnitPrice":43000,"Totalprice":5000';
        rbref.Total_Value__c=1100;
        rbref.RB_ID__c=rb.id;
        insert rbref;
        
        List<RB_Reference__c> rbList = new List<RB_Reference__c>();
        rbList.add(rbref);
        
        List<OpportunityLineitem> oliList = new List<OpportunityLineitem>();
        OpportunityLineitem oli = new OpportunityLineitem();
        oli.OpportunityId = oppy.Id;
        oli.PricebookEntryId = pbe.Id;
        oli.Quantity = 2.03;
        oli.TotalPrice = 221.1;
        oli.Primary_Product_Group__c = true;
        oli.Product_Group__c = 4104;
        oliList.add(oli);
        
        OpportunityLineItem olti = new OpportunityLineItem();
        olti.OpportunityId = oppy.id;
        olti.PricebookEntryId = pbe.Id;
        olti.Quantity = 5;
        olti.TotalPrice = 2600.00;
        olti.Primary_Product_Group__c = false;
        oliList.add(olti);
        //insert oliList;  
        
       // Test.starttest();
         insert oliList;
        //Test.stopTest();
        
        
          Decimal[] dd=new Decimal[]{0.0,0.0,0.0,0.0};
        String[] st = new String[]{'yes','no','yes','no'};
        RecurringOpportunityController.RBLineitems rblineItem  = new RecurringOpportunityController.RBLineitems(p.id,'Automotive',11,0,0,1234,dd); 
       // RecurringOpportunityController.RBLineitems rblineItem  = new RecurringOpportunityController.RBLineitems('01t20000004wMQXAA2','Automotive',11.55,0.00,0.00,1234,dd);     
       RecurringOpportunityController.SourcelineitemsAdd srclineitemadd= new RecurringOpportunityController.SourcelineitemsAdd('01t20000004wMQXAA2','Automotive',11.55,0.00,0.00,0.00,1234,dd,st,'RO1','xyz'); 
        RecurringOpportunityController.RoLineItems rolineItem = new RecurringOpportunityController.RoLineItems('RO1','01t20000004wMQXAA2','Automotive',0.00,0.00,0.00,0.00,0.00,'abc');
        RecurringOpportunityController.RoLineItemsAdd rolineItemadd = new RecurringOpportunityController.RoLineItemsAdd('RO1','01t20000004wMQXAA2','Automotive',0.00,0.00,0.00,0.00,0.00,'abc'); 
        RecurringOpportunityController.RefreshWrapper rfwrp = new RecurringOpportunityController.RefreshWrapper(oppy,rb,false,null,0.00);
     
       RecurringOpportunityController.getProductSplitData(rb.id);
       RecurringOpportunityController.getProductSplitFullFillData(oppy.id,rb.id);
       RecurringOpportunityController.getSourceOppStageName(oppy.id);
       RecurringOpportunityController.GetFieldPicklistValues('Opportunity','StageName');
       RecurringOpportunityController.getExistingRBRefData(rb.id);
       RecurringOpportunityController.fetchLookUpValues('Testpyssss','opportunity');
       RecurringOpportunityController.updateRBReference(rbList);
      // RecurringOpportunityController.updateRBReference(rbList);
       RecurringOpportunityController.processReopenRB(rb.id,oppy.id);
       RecurringOpportunityController.fetchCancellationReasonsFromSourceOpp();
       RecurringOpportunityController.getRBDetails(rb.id);
       RecurringOpportunityController.getAllROsForRB(rb.id);
       RecurringOpportunityController.fetchCancellationReasons();
       //RecurringOpportunityController.processReopenRB();
       
       RecurringOpportunityController.getSourceData(oppy.id,rb.id);
       RecurringOpportunityController.getItems();
       //RecurringOpportunityController.saveRB('Encajonado + Paletizado Valente',);
       
       RecurringOpportunityController.getProductsData(oppy.id);
       RecurringOpportunityController.getProductsName(oppy.id,p.id);
       //RecurringOpportunityController.createRecurringOpportunity(rb.id);    
       RecurringOpportunityController.getPreviewData(oppy.id,rb.id);
       RecurringOpportunityController.getExistingRBData(rb.id);
       RecurringOpportunityController.fetchChannelClass();
       RecurringOpportunityController.fetchChannelLevel2Class();
       RecurringOpportunityController.fetchBU();
       RecurringOpportunityController.fetchApplication();
       RecurringOpportunityController.fetchBusinessLine();
       RecurringOpportunityController.fetchBL();
       RecurringOpportunityController.getRefreshedData(oppy.id,rb.id);
       
       //RecurringOpportunityController.updateRefreshedData();    
    }
    public static testmethod void ProductSplit2(){
        Account acc1 = new Account(); 
        acc1.Name = 'Test Account5 239';    
        acc1.Primary_Account_Manager__c = 'mtester5@company.com';   
        acc1.BillingStreet = 'dajie5';
        acc1.BillingCity = 'berlin5';
        acc1.BillingState = 'Berlin';
        acc1.BillingPostalCode = '520012';
        acc1.BillingCountry = 'Germany';
        insert acc1;
            
        ABB_Location__c loc = new ABB_Location__c();
        loc.BU__c = 'RMMG';
        loc.Name = 'Manufacturing: 4130, China - Nanchang';
        loc.Company__c = 'CNGEN';
        loc.Country__c = 'China';
        loc.DIV__c = 'DM';   
        loc.Product_Group__c = '4130-Large Motors & Generators'; 
        loc.Activity__c ='Test';
        insert loc;
        
        RecordType RecType = [Select Id From RecordType  Where SobjectType = 'Product2' and DeveloperName = 'APTS_Global_Products'];   
        Product_Group__c pg = new Product_Group__c();
        pg.Business_Unit__c = 'tdsd';
        pg.Name = '4104';
        pg.Division__c = '10';
        pg.Data_Load_Year__c='2017';
        insert pg;
        
        End_User_Project__c endUser = new End_User_Project__c();
        endUser.Name='Test User';
        endUser.Account_End_User__c=acc1.id;
        insert endUser;
    
        Opportunity oppy = new Opportunity();
        oppy.AccountId = acc1.Id;
        oppy.Name = 'Testpyssss';
        oppy.StageName = 'Closed Won';
        oppy.CloseDate = system.today();
        oppy.Actual_Bid_Submission_Date_Comm__c = system.today()-1;
        oppy.Product_Group__c = pg.Id;
        oppy.Requested_Bid_Submission_Date_Comm__c = system.today()-1;
        oppy.Application__c = 'AP.302 Cable Car - Ski Lift';
        oppy.Local_Product_Group__c = pg.Id;
        oppy.CurrencyIsoCode = 'USD';
        oppy.Opportunity_Value__c = 18646;
        oppy.End_User_Project__c=endUser.Id;
        oppy.ABB_Location__c=loc.id;
        oppy.ABB_Probability__c = 100;
        Test.starttest();
        insert oppy;
        Test.stopTest();
        
        Product2 p = new Product2();   
        p.Description = 'Aluminium Solutions';     
        p.Name = 'Desc Aluminium Solutions';
        p.Product_Group__c = 4104;
        p.RecordTypeId = RecType.Id;
        p.CID__c = 'ABCD1234';
        p.IsActive = TRUE;
        
        insert p;
        
        PricebookEntry pbe = new PricebookEntry();
        pbe.Pricebook2Id = Test.getStandardPricebookId();
        pbe.UnitPrice = 20;
        pbe.IsActive = true;
        pbe.Product2Id = p.Id;
        pbe.CurrencyIsoCode =oppy.CurrencyIsoCode;             
        insert pbe;
 
        Recurring_Business__c rb = new Recurring_Business__c();
       // rb.id='aBt9E0000008OPGSA2';
        rb.ABB_Domain__c='DMRO';
        rb.ABB_Industry_Usage_Level1__c='IND';
        rb.ABB_Industry_Usage_Level2__c='IND.4';
        rb.ABB_Industry_Usage_Level3__c='IND.4.3';
        rb.Account_Customer__c=acc1.id;
        rb.ABB_Location__c = loc.id;
        rb.Account_End_User__c='0019E00000K0jIi';
        rb.All_Target_vs_All_Commit__c='Others';
        rb.Application__c='AP.419';
        rb.AvailableRBValue__c='700000';
        rb.Award_Date__c=Date.newInstance(2017, 10, 20);
        rb.Business_Line__c='BL.301';
        rb.BU__c='DMRO';
        rb.Channel_Class_Level1__c='DEU';
        rb.Channel_Class_Level2__c='ABBPRD';
        rb.CurrencyIsoCode='USD';
        rb.Date__c= Date.newInstance(2017, 10, 27);
        rb.Delivery_Date__c=Date.newInstance(2018, 05, 16);
        rb.Opportunity__c =oppy.Id;
        rb.End_Date__c=Date.newInstance(2018, 08, 08);
        rb.End_User_Project__c='a0V9E0000002PmqUAE';
        rb.Frequency__c='Monthly';
        rb.Main_PG_Technical__c='4314';
        rb.Name='RB - Encajonado + Paletizado Valente';
        rb.Packed__c=false;
        rb.Parent__c='Encajonado + Paletizado Valente';
        rb.Periods__c='3';
        rb.Price__c=300;
        rb.Quantity__c=250.00;
        rb.sobjectType__c='';
        rb.Split_JSON__c='[{"Productid":"01t20000004wMQOAA2","Productname":"Aluminium Solutions","Quantity":11,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":140000,"SubTotal":null},{"Productid":"01t20000004wJSdAAM","Productname":"Automotive","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null},{"Productid":"01t20000004wJ53AAE","Productname":"Cables and Cable Accessories","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null},{"Productid":"01t20000004wMQPAA2","Productname":"Automation / Control Architecture","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null},{"Productid":"01t20000004wMQXAA2","Productname":"Electrification","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null}]';
        rb.Start_Date__c=Date.newInstance(2017, 10, 27);
        rb.Status__c='In Progress';
        rb.TotalRBValue__c='25000';
        rb.Type__c='Quantity';
        rb.Value__c='354528';
        insert rb;  
        ClsTriggerFactory.isSkipOpptyTrigger = true;
        system.assertNotEquals(NULL,rb.Id);
         
         //List<Recurring_Business__c> rbnew = new List<Recurring_Business__c>();
         //rbList.add(rb);
        
        List<OpportunityLineitem> oliList = new List<OpportunityLineitem>();
        OpportunityLineitem oli = new OpportunityLineitem();
        oli.OpportunityId = oppy.Id;
        oli.PricebookEntryId = pbe.Id;
        oli.Quantity = 2.03;
        oli.TotalPrice = 221.1;
        oli.Primary_Product_Group__c = true;
        oli.Product_Group__c = 4104;
        oliList.add(oli);
        
        OpportunityLineItem olti = new OpportunityLineItem();
        olti.OpportunityId = oppy.id;
        olti.PricebookEntryId = pbe.Id;
        olti.Quantity = 5;
        olti.TotalPrice = 2600.00;
        olti.Primary_Product_Group__c = false;
        oliList.add(olti);
        //insert oliList;  
        
       // Test.starttest();
         insert oliList;
        //Test.stopTest();
        
        OpportunityLineItem oli1 = [select id,product2Id,opportunityId,quantity from OpportunityLineItem limit 1];
        
        RB_Reference__c rbref = new RB_Reference__c();
        rbref.EAD__c=system.today().addDays(30);
        rbref.RO_Name__c='RO1';
        rbref.Products_1__c='[{"UnitPrice":0,"Totalprice":0,"ROvalue":46666,"ROname":"RO3","Quantity":11,"Productname":"Aluminium Solutions","Productid":"'+oli1.Product2Id+'"}]';
        //rbref.Products_2__c='UnitPrice":43000,"Totalprice":5000';
        rbref.Total_Value__c=1100;
        rbref.RB_ID__c=rb.id;
        insert rbref;
        
          Decimal[] dd=new Decimal[]{0.0,0.0,0.0,0.0};
        String[] st = new String[]{'yes','no','yes','no'};
        RecurringOpportunityController.RBLineitems rblineItem  = new RecurringOpportunityController.RBLineitems(p.id,'Automotive',11,0,0,1234,dd); 
       // RecurringOpportunityController.RBLineitems rblineItem  = new RecurringOpportunityController.RBLineitems('01t20000004wMQXAA2','Automotive',11.55,0.00,0.00,1234,dd);     
       RecurringOpportunityController.SourcelineitemsAdd srclineitemadd= new RecurringOpportunityController.SourcelineitemsAdd('01t20000004wMQXAA2','Automotive',11.55,0.00,0.00,0.00,1234,dd,st,'RO1','xyz'); 
        RecurringOpportunityController.RoLineItems rolineItem = new RecurringOpportunityController.RoLineItems('RO1','01t20000004wMQXAA2','Automotive',0.00,0.00,0.00,0.00,0.00,'abc');
        RecurringOpportunityController.RoLineItemsAdd rolineItemadd = new RecurringOpportunityController.RoLineItemsAdd('RO1','01t20000004wMQXAA2','Automotive',0.00,0.00,0.00,0.00,0.00,'abc'); 
        RecurringOpportunityController.RefreshWrapper rfwrp = new RecurringOpportunityController.RefreshWrapper(oppy,rb,false,null,0.00);
        
        RecurringOpportunityController.createRecurringOpportunity(rb.id);    
       
    }
    
    
    
    public static testmethod void ProductSplit3(){
        Account acc1 = new Account(); 
        acc1.Name = 'Test Account5 239';    
        acc1.Primary_Account_Manager__c = 'mtester5@company.com';   
        acc1.BillingStreet = 'dajie5';
        acc1.BillingCity = 'berlin5';
        acc1.BillingState = 'Berlin';
        acc1.BillingPostalCode = '520012';
        acc1.BillingCountry = 'Germany';
        insert acc1;
            
        ABB_Location__c loc = new ABB_Location__c();
        loc.BU__c = 'RMMG';
        loc.Name = 'Manufacturing: 4130, China - Nanchang';
        loc.Company__c = 'CNGEN';
        loc.Country__c = 'China';
        loc.DIV__c = 'DM';   
        loc.Product_Group__c = '4130-Large Motors & Generators'; 
        loc.Activity__c ='Test';
        insert loc;
        
        RecordType RecType = [Select Id From RecordType  Where SobjectType = 'Product2' and DeveloperName = 'APTS_Global_Products'];   
        Product_Group__c pg = new Product_Group__c();
        pg.Business_Unit__c = 'tdsd';
        pg.Name = '4104';
        pg.Division__c = '10';
        pg.Data_Load_Year__c='2017';
        insert pg;
        
        End_User_Project__c endUser = new End_User_Project__c();
        endUser.Name='Test User';
        endUser.Account_End_User__c=acc1.id;
        insert endUser;
    
        Opportunity oppy = new Opportunity();
        oppy.AccountId = acc1.Id;
        oppy.Name = 'Testpyssss';
        oppy.StageName = 'Closed Won';
        oppy.CloseDate = system.today();
        oppy.Actual_Bid_Submission_Date_Comm__c = system.today()-1;
        oppy.Product_Group__c = pg.Id;
        oppy.Requested_Bid_Submission_Date_Comm__c = system.today()-1;
        oppy.Application__c = 'AP.302 Cable Car - Ski Lift';
        oppy.Local_Product_Group__c = pg.Id;
        oppy.CurrencyIsoCode = 'USD';
        oppy.Opportunity_Value__c = 18646;
        oppy.End_User_Project__c=endUser.Id;
        oppy.ABB_Location__c=loc.id;
        oppy.ABB_Probability__c = 100;
        Test.starttest();
        insert oppy;
        Test.stopTest();
        
        Product2 p = new Product2();   
        p.Description = 'Aluminium Solutions';     
        p.Name = 'Desc Aluminium Solutions';
        p.Product_Group__c = 4104;
        p.RecordTypeId = RecType.Id;
        p.CID__c = 'ABCD1234';
        p.IsActive = TRUE;
        
        insert p;
        
        PricebookEntry pbe = new PricebookEntry();
        pbe.Pricebook2Id = Test.getStandardPricebookId();
        pbe.UnitPrice = 20;
        pbe.IsActive = true;
        pbe.Product2Id = p.Id;
        pbe.CurrencyIsoCode =oppy.CurrencyIsoCode;             
        insert pbe;
 
        Recurring_Business__c rb = new Recurring_Business__c();
       // rb.id='aBt9E0000008OPGSA2';
        rb.ABB_Domain__c='DMRO';
        rb.ABB_Industry_Usage_Level1__c='IND';
        rb.ABB_Industry_Usage_Level2__c='IND.4';
        rb.ABB_Industry_Usage_Level3__c='IND.4.3';
        rb.Account_Customer__c=acc1.id;
        rb.ABB_Location__c = loc.id;
        rb.Account_End_User__c='0019E00000K0jIi';
        rb.All_Target_vs_All_Commit__c='Others';
        rb.Application__c='AP.419';
        rb.AvailableRBValue__c='700000';
        rb.Award_Date__c=Date.newInstance(2017, 10, 20);
        rb.Business_Line__c='BL.301';
        rb.BU__c='DMRO';
        rb.Channel_Class_Level1__c='DEU';
        rb.Channel_Class_Level2__c='ABBPRD';
        rb.CurrencyIsoCode='USD';
        rb.Date__c= Date.newInstance(2017, 10, 27);
        rb.Delivery_Date__c=Date.newInstance(2018, 05, 16);
        rb.Opportunity__c =oppy.Id;
        rb.End_Date__c=Date.newInstance(2018, 08, 08);
        rb.End_User_Project__c='a0V9E0000002PmqUAE';
        rb.Frequency__c='Monthly';
        rb.Main_PG_Technical__c='4314';
        rb.Name='RB - Encajonado + Paletizado Valente';
        rb.Packed__c=false;
        rb.Parent__c='Encajonado + Paletizado Valente';
        rb.Periods__c='3';
        rb.Price__c=300;
        rb.Quantity__c=250.00;
        rb.sobjectType__c='';
        rb.Split_JSON__c='[{"Productid":"01t20000004wMQOAA2","Productname":"Aluminium Solutions","Quantity":11,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":140000,"SubTotal":null},{"Productid":"01t20000004wJSdAAM","Productname":"Automotive","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null},{"Productid":"01t20000004wJ53AAE","Productname":"Cables and Cable Accessories","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null},{"Productid":"01t20000004wMQPAA2","Productname":"Automation / Control Architecture","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null},{"Productid":"01t20000004wMQXAA2","Productname":"Electrification","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null}]';
        rb.Start_Date__c=Date.newInstance(2017, 10, 27);
        rb.Status__c='In Progress';
        rb.TotalRBValue__c='25000';
        rb.Type__c='Quantity';
        rb.Value__c='354528';
        insert rb;  
        ClsTriggerFactory.isSkipOpptyTrigger = true;
        system.assertNotEquals(NULL,rb.Id);
         
         //List<Recurring_Business__c> rbnew = new List<Recurring_Business__c>();
         //rbList.add(rb);
        
        List<OpportunityLineitem> oliList = new List<OpportunityLineitem>();
        OpportunityLineitem oli = new OpportunityLineitem();
        oli.OpportunityId = oppy.Id;
        oli.PricebookEntryId = pbe.Id;
        oli.Quantity = 2.03;
        oli.TotalPrice = 221.1;
        oli.Primary_Product_Group__c = true;
        oli.Product_Group__c = 4104;
        oliList.add(oli);
        
        OpportunityLineItem olti = new OpportunityLineItem();
        olti.OpportunityId = oppy.id;
        olti.PricebookEntryId = pbe.Id;
        olti.Quantity = 5;
        olti.TotalPrice = 2600.00;
        olti.Primary_Product_Group__c = false;
        oliList.add(olti);
        //insert oliList;  
        
       // Test.starttest();
         insert oliList;
        //Test.stopTest();
        
        OpportunityLineItem oli1 = [select id,product2Id,opportunityId,quantity from OpportunityLineItem limit 1];
        
        RB_Reference__c rbref = new RB_Reference__c();
        rbref.EAD__c=system.today().addDays(30);
        rbref.RO_Name__c='RO1';
        rbref.Products_1__c='[{"UnitPrice":0,"Totalprice":0,"ROvalue":46666,"ROname":"RO3","Quantity":11,"Productname":"Aluminium Solutions","Productid":"'+oli1.Product2Id+'"}]';
        //rbref.Products_2__c='UnitPrice":43000,"Totalprice":5000';
        rbref.Total_Value__c=1100;
        rbref.RB_ID__c=rb.id;
        insert rbref;
        
          Decimal[] dd=new Decimal[]{0.0,0.0,0.0,0.0};
        String[] st = new String[]{'yes','no','yes','no'};
        RecurringOpportunityController.RBLineitems rblineItem  = new RecurringOpportunityController.RBLineitems(p.id,'Automotive',11,0,0,1234,dd); 
       // RecurringOpportunityController.RBLineitems rblineItem  = new RecurringOpportunityController.RBLineitems('01t20000004wMQXAA2','Automotive',11.55,0.00,0.00,1234,dd);     
       RecurringOpportunityController.SourcelineitemsAdd srclineitemadd= new RecurringOpportunityController.SourcelineitemsAdd('01t20000004wMQXAA2','Automotive',11.55,0.00,0.00,0.00,1234,dd,st,'RO1','xyz'); 
        RecurringOpportunityController.RoLineItems rolineItem = new RecurringOpportunityController.RoLineItems('RO1','01t20000004wMQXAA2','Automotive',0.00,0.00,0.00,0.00,0.00,'abc');
        RecurringOpportunityController.RoLineItemsAdd rolineItemadd = new RecurringOpportunityController.RoLineItemsAdd('RO1','01t20000004wMQXAA2','Automotive',0.00,0.00,0.00,0.00,0.00,'abc'); 
        RecurringOpportunityController.RefreshWrapper rfwrp = new RecurringOpportunityController.RefreshWrapper(oppy,rb,false,null,0.00);
        
        RecurringOpportunityController.cancelRO(rbref,oppy,oliList);    
       
    }
    
    
    
    
    public static testmethod void ProductSplit4(){
        Account acc1 = new Account(); 
        acc1.Name = 'Test Account5 239';    
        acc1.Primary_Account_Manager__c = 'mtester5@company.com';   
        acc1.BillingStreet = 'dajie5';
        acc1.BillingCity = 'berlin5';
        acc1.BillingState = 'Berlin';
        acc1.BillingPostalCode = '520012';
        acc1.BillingCountry = 'Germany';
        insert acc1;
            
        ABB_Location__c loc = new ABB_Location__c();
        loc.BU__c = 'RMMG';
        loc.Name = 'Manufacturing: 4130, China - Nanchang';
        loc.Company__c = 'CNGEN';
        loc.Country__c = 'China';
        loc.DIV__c = 'DM';   
        loc.Product_Group__c = '4130-Large Motors & Generators'; 
        loc.Activity__c ='Test';
        insert loc;
        
        RecordType RecType = [Select Id From RecordType  Where SobjectType = 'Product2' and DeveloperName = 'APTS_Global_Products'];   
        Product_Group__c pg = new Product_Group__c();
        pg.Business_Unit__c = 'tdsd';
        pg.Name = '4104';
        pg.Division__c = '10';
        pg.Data_Load_Year__c='2017';
        insert pg;
        
        End_User_Project__c endUser = new End_User_Project__c();
        endUser.Name='Test User';
        endUser.Account_End_User__c=acc1.id;
        insert endUser;
    
        Opportunity oppy = new Opportunity();
        oppy.AccountId = acc1.Id;
        oppy.Name = 'Testpyssss';
        oppy.StageName = 'Closed Won';
        oppy.CloseDate = system.today();
        oppy.Actual_Bid_Submission_Date_Comm__c = system.today()-1;
        oppy.Product_Group__c = pg.Id;
        oppy.Requested_Bid_Submission_Date_Comm__c = system.today()-1;
        oppy.Application__c = 'AP.302 Cable Car - Ski Lift';
        oppy.Local_Product_Group__c = pg.Id;
        oppy.CurrencyIsoCode = 'USD';
        oppy.Opportunity_Value__c = 18646;
        oppy.End_User_Project__c=endUser.Id;
        oppy.ABB_Location__c=loc.id;
        oppy.ABB_Probability__c = 100;
        Test.starttest();
        insert oppy;
        Test.stopTest();
        
        Product2 p = new Product2();   
        p.Description = 'Aluminium Solutions';     
        p.Name = 'Desc Aluminium Solutions';
        p.Product_Group__c = 4104;
        p.RecordTypeId = RecType.Id;
        p.CID__c = 'ABCD1234';
        p.IsActive = TRUE;
        
        insert p;
        
        PricebookEntry pbe = new PricebookEntry();
        pbe.Pricebook2Id = Test.getStandardPricebookId();
        pbe.UnitPrice = 20;
        pbe.IsActive = true;
        pbe.Product2Id = p.Id;
        pbe.CurrencyIsoCode =oppy.CurrencyIsoCode;             
        insert pbe;
 
        Recurring_Business__c rb = new Recurring_Business__c();
       // rb.id='aBt9E0000008OPGSA2';
        rb.ABB_Domain__c='DMRO';
        rb.ABB_Industry_Usage_Level1__c='IND';
        rb.ABB_Industry_Usage_Level2__c='IND.4';
        rb.ABB_Industry_Usage_Level3__c='IND.4.3';
        rb.Account_Customer__c=acc1.id;
        rb.ABB_Location__c = loc.id;
        rb.Account_End_User__c='0019E00000K0jIi';
        rb.All_Target_vs_All_Commit__c='Others';
        rb.Application__c='AP.419';
        rb.AvailableRBValue__c='700000';
        rb.Award_Date__c=Date.newInstance(2017, 10, 20);
        rb.Business_Line__c='BL.301';
        rb.BU__c='DMRO';
        rb.Channel_Class_Level1__c='DEU';
        rb.Channel_Class_Level2__c='ABBPRD';
        rb.CurrencyIsoCode='USD';
        rb.Date__c= Date.newInstance(2017, 10, 27);
        rb.Delivery_Date__c=Date.newInstance(2018, 05, 16);
        rb.Opportunity__c =oppy.Id;
        rb.End_Date__c=Date.newInstance(2018, 08, 08);
        rb.End_User_Project__c='a0V9E0000002PmqUAE';
        rb.Frequency__c='Monthly';
        rb.Main_PG_Technical__c='4314';
        rb.Name='RB - Encajonado + Paletizado Valente';
        rb.Packed__c=false;
        rb.Parent__c='Encajonado + Paletizado Valente';
        rb.Periods__c='3';
        rb.Price__c=300;
        rb.Quantity__c=250.00;
        rb.sobjectType__c='';
        rb.Split_JSON__c='[{"Productid":"01t20000004wMQOAA2","Productname":"Aluminium Solutions","Quantity":11,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":140000,"SubTotal":null},{"Productid":"01t20000004wJSdAAM","Productname":"Automotive","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null},{"Productid":"01t20000004wJ53AAE","Productname":"Cables and Cable Accessories","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null},{"Productid":"01t20000004wMQPAA2","Productname":"Automation / Control Architecture","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null},{"Productid":"01t20000004wMQXAA2","Productname":"Electrification","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null}]';
        rb.Start_Date__c=Date.newInstance(2017, 10, 27);
        rb.Status__c='In Progress';
        rb.TotalRBValue__c='25000';
        rb.Type__c='Quantity';
        rb.Value__c='354528';
        insert rb;  
        ClsTriggerFactory.isSkipOpptyTrigger = true;
        system.assertNotEquals(NULL,rb.Id);
         
         //List<Recurring_Business__c> rbnew = new List<Recurring_Business__c>();
         //rbList.add(rb);
        
        List<OpportunityLineitem> oliList = new List<OpportunityLineitem>();
        OpportunityLineitem oli = new OpportunityLineitem();
        oli.OpportunityId = oppy.Id;
        oli.PricebookEntryId = pbe.Id;
        oli.Quantity = 2.03;
        oli.TotalPrice = 221.1;
        oli.Primary_Product_Group__c = true;
        oli.Product_Group__c = 4104;
        oliList.add(oli);
        
        OpportunityLineItem olti = new OpportunityLineItem();
        olti.OpportunityId = oppy.id;
        olti.PricebookEntryId = pbe.Id;
        olti.Quantity = 5;
        olti.TotalPrice = 2600.00;
        olti.Primary_Product_Group__c = false;
        oliList.add(olti);
        //insert oliList;  
        
       // Test.starttest();
         insert oliList;
        //Test.stopTest();
        
        OpportunityLineItem oli1 = [select id,product2Id,opportunityId,quantity from OpportunityLineItem limit 1];
        
        RB_Reference__c rbref = new RB_Reference__c();
        rbref.EAD__c=system.today().addDays(30);
        rbref.RO_Name__c='RO1';
        rbref.Products_1__c='[{"UnitPrice":0,"Totalprice":0,"ROvalue":46666,"ROname":"RO3","Quantity":11,"Productname":"Aluminium Solutions","Productid":"'+oli1.Product2Id+'"}]';
        //rbref.Products_2__c='UnitPrice":43000,"Totalprice":5000';
        rbref.Total_Value__c=1100;
        rbref.RB_ID__c=rb.id;
        insert rbref;
        
          Decimal[] dd=new Decimal[]{0.0,0.0,0.0,0.0};
        String[] st = new String[]{'yes','no','yes','no'};
        RecurringOpportunityController.RBLineitems rblineItem  = new RecurringOpportunityController.RBLineitems(p.id,'Automotive',11,0,0,1234,dd); 
       // RecurringOpportunityController.RBLineitems rblineItem  = new RecurringOpportunityController.RBLineitems('01t20000004wMQXAA2','Automotive',11.55,0.00,0.00,1234,dd);     
       RecurringOpportunityController.SourcelineitemsAdd srclineitemadd= new RecurringOpportunityController.SourcelineitemsAdd('01t20000004wMQXAA2','Automotive',11.55,0.00,0.00,0.00,1234,dd,st,'RO1','xyz'); 
        RecurringOpportunityController.RoLineItems rolineItem = new RecurringOpportunityController.RoLineItems('RO1','01t20000004wMQXAA2','Automotive',0.00,0.00,0.00,0.00,0.00,'abc');
        RecurringOpportunityController.RoLineItemsAdd rolineItemadd = new RecurringOpportunityController.RoLineItemsAdd('RO1','01t20000004wMQXAA2','Automotive',0.00,0.00,0.00,0.00,0.00,'abc'); 
        RecurringOpportunityController.RefreshWrapper rfwrp = new RecurringOpportunityController.RefreshWrapper(oppy,rb,false,null,0.00);
        
       //  RecurringOpportunityController.createRecurringOpportunity(rb.id);
         RecurringOpportunityController.fulfillRO(rbref,oppy,oliList);      
       
    }
    
    public static testmethod void ProductSplit5(){
        Account acc1 = new Account(); 
        acc1.Name = 'Test Account5 239';    
        acc1.Primary_Account_Manager__c = 'mtester5@company.com';   
        acc1.BillingStreet = 'dajie5';
        acc1.BillingCity = 'berlin5';
        acc1.BillingState = 'Berlin';
        acc1.BillingPostalCode = '520012';
        acc1.BillingCountry = 'Germany';
        insert acc1;
            
        ABB_Location__c loc = new ABB_Location__c();
        loc.BU__c = 'RMMG';
        loc.Name = 'Manufacturing: 4130, China - Nanchang';
        loc.Company__c = 'CNGEN';
        loc.Country__c = 'China';
        loc.DIV__c = 'DM';   
        loc.Product_Group__c = '4130-Large Motors & Generators'; 
        loc.Activity__c ='Test';
        insert loc;
        
        RecordType RecType = [Select Id From RecordType  Where SobjectType = 'Product2' and DeveloperName = 'APTS_Global_Products'];   
        Product_Group__c pg = new Product_Group__c();
        pg.Business_Unit__c = 'tdsd';
        pg.Name = '4104';
        pg.Division__c = '10';
        pg.Data_Load_Year__c='2017';
        insert pg;
        
        End_User_Project__c endUser = new End_User_Project__c();
        endUser.Name='Test User';
        endUser.Account_End_User__c=acc1.id;
        insert endUser;
    
        Opportunity oppy = new Opportunity();
        oppy.AccountId = acc1.Id;
        oppy.Name = 'Testpyssss';
        oppy.StageName = 'Closed Won';
        oppy.CloseDate = system.today();
        oppy.Actual_Bid_Submission_Date_Comm__c = system.today()-1;
        oppy.Product_Group__c = pg.Id;
        oppy.Requested_Bid_Submission_Date_Comm__c = system.today()-1;
        oppy.Application__c = 'AP.302 Cable Car - Ski Lift';
        oppy.Local_Product_Group__c = pg.Id;
        oppy.CurrencyIsoCode = 'USD';
        oppy.Opportunity_Value__c = 18646;
        oppy.End_User_Project__c=endUser.Id;
        oppy.ABB_Location__c=loc.id;
        oppy.ABB_Probability__c = 100;
        Test.starttest();
        insert oppy;
        Test.stopTest();
        
        Product2 p = new Product2();   
        p.Description = 'Aluminium Solutions';     
        p.Name = 'Desc Aluminium Solutions';
        p.Product_Group__c = 4104;
        p.RecordTypeId = RecType.Id;
        p.CID__c = 'ABCD1234';
        p.IsActive = TRUE;
        
        insert p;
        
        PricebookEntry pbe = new PricebookEntry();
        pbe.Pricebook2Id = Test.getStandardPricebookId();
        pbe.UnitPrice = 20;
        pbe.IsActive = true;
        pbe.Product2Id = p.Id;
        pbe.CurrencyIsoCode =oppy.CurrencyIsoCode;             
        insert pbe;
 
        Recurring_Business__c rb = new Recurring_Business__c();
       // rb.id='aBt9E0000008OPGSA2';
        rb.ABB_Domain__c='DMRO';
        rb.ABB_Industry_Usage_Level1__c='IND';
        rb.ABB_Industry_Usage_Level2__c='IND.4';
        rb.ABB_Industry_Usage_Level3__c='IND.4.3';
        rb.Account_Customer__c=acc1.id;
        rb.ABB_Location__c = loc.id;
        rb.Account_End_User__c='0019E00000K0jIi';
        rb.All_Target_vs_All_Commit__c='Others';
        rb.Application__c='AP.419';
        rb.AvailableRBValue__c='700000';
        rb.Award_Date__c=Date.newInstance(2017, 10, 20);
        rb.Business_Line__c='BL.301';
        rb.BU__c='DMRO';
        rb.Channel_Class_Level1__c='DEU';
        rb.Channel_Class_Level2__c='ABBPRD';
        rb.CurrencyIsoCode='USD';
        rb.Date__c= Date.newInstance(2017, 10, 27);
        rb.Delivery_Date__c=Date.newInstance(2018, 05, 16);
        rb.Opportunity__c =oppy.Id;
        rb.End_Date__c=Date.newInstance(2018, 08, 08);
        rb.End_User_Project__c='a0V9E0000002PmqUAE';
        rb.Frequency__c='Monthly';
        rb.Main_PG_Technical__c='4314';
        rb.Name='RB - Encajonado + Paletizado Valente';
        rb.Packed__c=false;
        rb.Parent__c='Encajonado + Paletizado Valente';
        rb.Periods__c='3';
        rb.Price__c=300;
        rb.Quantity__c=250.00;
        rb.sobjectType__c='';
        rb.Split_JSON__c='[{"Productid":"01t20000004wMQOAA2","Productname":"Aluminium Solutions","Quantity":11,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":140000,"SubTotal":null},{"Productid":"01t20000004wJSdAAM","Productname":"Automotive","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null},{"Productid":"01t20000004wJ53AAE","Productname":"Cables and Cable Accessories","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null},{"Productid":"01t20000004wMQPAA2","Productname":"Automation / Control Architecture","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null},{"Productid":"01t20000004wMQXAA2","Productname":"Electrification","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null}]';
        rb.Start_Date__c=Date.newInstance(2017, 10, 27);
        rb.Status__c='In Progress';
        rb.TotalRBValue__c='25000';
        rb.Type__c='Quantity';
        rb.Value__c='354528';
        insert rb;  
        ClsTriggerFactory.isSkipOpptyTrigger = true;
        system.assertNotEquals(NULL,rb.Id);
         
         //List<Recurring_Business__c> rbnew = new List<Recurring_Business__c>();
         //rbList.add(rb);
        
        List<OpportunityLineitem> oliList = new List<OpportunityLineitem>();
        OpportunityLineitem oli = new OpportunityLineitem();
        oli.OpportunityId = oppy.Id;
        oli.PricebookEntryId = pbe.Id;
        oli.Quantity = 2.03;
        oli.TotalPrice = 221.1;
        oli.Primary_Product_Group__c = true;
        oli.Product_Group__c = 4104;
        oliList.add(oli);
        
        OpportunityLineItem olti = new OpportunityLineItem();
        olti.OpportunityId = oppy.id;
        olti.PricebookEntryId = pbe.Id;
        olti.Quantity = 5;
        olti.TotalPrice = 2600.00;
        olti.Primary_Product_Group__c = false;
        oliList.add(olti);
        //insert oliList;  
        
       // Test.starttest();
         insert oliList;
        //Test.stopTest();
        
        OpportunityLineItem oli1 = [select id,product2Id,opportunityId,quantity from OpportunityLineItem limit 1];
        
        RB_Reference__c rbref = new RB_Reference__c();
        rbref.EAD__c=system.today().addDays(30);
        rbref.RO_Name__c='RO1';
        rbref.Products_1__c='[{"UnitPrice":0,"Totalprice":0,"ROvalue":46666,"ROname":"RO3","Quantity":11,"Productname":"Aluminium Solutions","Productid":"'+oli1.Product2Id+'"}]';
        //rbref.Products_2__c='UnitPrice":43000,"Totalprice":5000';
        rbref.Total_Value__c=1100;
        rbref.RB_ID__c=rb.id;
        insert rbref;
        
          Decimal[] dd=new Decimal[]{0.0,0.0,0.0,0.0};
        String[] st = new String[]{'yes','no','yes','no'};
        RecurringOpportunityController.RBLineitems rblineItem  = new RecurringOpportunityController.RBLineitems(p.id,'Automotive',11,0,0,1234,dd); 
       // RecurringOpportunityController.RBLineitems rblineItem  = new RecurringOpportunityController.RBLineitems('01t20000004wMQXAA2','Automotive',11.55,0.00,0.00,1234,dd);     
       RecurringOpportunityController.SourcelineitemsAdd srclineitemadd= new RecurringOpportunityController.SourcelineitemsAdd('01t20000004wMQXAA2','Automotive',11.55,0.00,0.00,0.00,1234,dd,st,'RO1','xyz'); 
        RecurringOpportunityController.RoLineItems rolineItem = new RecurringOpportunityController.RoLineItems('RO1','01t20000004wMQXAA2','Automotive',0.00,0.00,0.00,0.00,0.00,'abc');
        RecurringOpportunityController.RoLineItemsAdd rolineItemadd = new RecurringOpportunityController.RoLineItemsAdd('RO1','01t20000004wMQXAA2','Automotive',0.00,0.00,0.00,0.00,0.00,'abc'); 
        RecurringOpportunityController.RefreshWrapper rfwrp = new RecurringOpportunityController.RefreshWrapper(oppy,rb,false,null,0.00);
        
       //  RecurringOpportunityController.createRecurringOpportunity(rb.id);
       //  RecurringOpportunityController.fulfillRO(rbref,oppy,oliList);        
        RecurringOpportunityController.saveROActuals(rbref,oppy,oliList);
           }
        
        
        
         public static testmethod void ProductSplit6(){
        Account acc1 = new Account(); 
        acc1.Name = 'Test Account5 239';    
        acc1.Primary_Account_Manager__c = 'mtester5@company.com';   
        acc1.BillingStreet = 'dajie5';
        acc1.BillingCity = 'berlin5';
        acc1.BillingState = 'Berlin';
        acc1.BillingPostalCode = '520012';
        acc1.BillingCountry = 'Germany';
        insert acc1;
            
        ABB_Location__c loc = new ABB_Location__c();
        loc.BU__c = 'RMMG';
        loc.Name = 'Manufacturing: 4130, China - Nanchang';
        loc.Company__c = 'CNGEN';
        loc.Country__c = 'China';
        loc.DIV__c = 'DM';   
        loc.Product_Group__c = '4130-Large Motors & Generators'; 
        loc.Activity__c ='Test';
        insert loc;
        
        RecordType RecType = [Select Id From RecordType  Where SobjectType = 'Product2' and DeveloperName = 'APTS_Global_Products'];   
        Product_Group__c pg = new Product_Group__c();
        pg.Business_Unit__c = 'tdsd';
        pg.Name = '4104';
        pg.Division__c = '10';
        pg.Data_Load_Year__c='2017';
        insert pg;
        
        End_User_Project__c endUser = new End_User_Project__c();
        endUser.Name='Test User';
        endUser.Account_End_User__c=acc1.id;
        insert endUser;
    
        Opportunity oppy = new Opportunity();
        oppy.AccountId = acc1.Id;
        oppy.Name = 'Testpyssss';
        oppy.StageName = 'Closed Won';
        oppy.CloseDate = system.today();
        oppy.Actual_Bid_Submission_Date_Comm__c = system.today()-1;
        oppy.Product_Group__c = pg.Id;
        oppy.Requested_Bid_Submission_Date_Comm__c = system.today()-1;
        oppy.Application__c = 'AP.302 Cable Car - Ski Lift';
        oppy.Local_Product_Group__c = pg.Id;
        oppy.CurrencyIsoCode = 'USD';
        oppy.Opportunity_Value__c = 18646;
        oppy.End_User_Project__c=endUser.Id;
        oppy.ABB_Location__c=loc.id;
        oppy.ABB_Probability__c = 100;
        Test.starttest();
        insert oppy;
            List<Opportunity> lstopp = new List<Opportunity>();
             lstopp.add(oppy);
        Test.stopTest();
        
        Product2 p = new Product2();   
        p.Description = 'Aluminium Solutions';     
        p.Name = 'Desc Aluminium Solutions';
        p.Product_Group__c = 4104;
        p.RecordTypeId = RecType.Id;
        p.CID__c = 'ABCD1234';
        p.IsActive = TRUE;
        
        insert p;
        
        PricebookEntry pbe = new PricebookEntry();
        pbe.Pricebook2Id = Test.getStandardPricebookId();
        pbe.UnitPrice = 20;
        pbe.IsActive = true;
        pbe.Product2Id = p.Id;
        pbe.CurrencyIsoCode =oppy.CurrencyIsoCode;             
        insert pbe;
 
        Recurring_Business__c rb = new Recurring_Business__c();
       // rb.id='aBt9E0000008OPGSA2';
        rb.ABB_Domain__c='DMRO';
        rb.ABB_Industry_Usage_Level1__c='IND';
        rb.ABB_Industry_Usage_Level2__c='IND.4';
        rb.ABB_Industry_Usage_Level3__c='IND.4.3';
        rb.Account_Customer__c=acc1.id;
        rb.ABB_Location__c = loc.id;
        rb.Account_End_User__c='0019E00000K0jIi';
        rb.All_Target_vs_All_Commit__c='Others';
        rb.Application__c='AP.419';
        rb.AvailableRBValue__c='700000';
        rb.Award_Date__c=Date.newInstance(2017, 10, 20);
        rb.Business_Line__c='BL.301';
        rb.BU__c='DMRO';
        rb.Channel_Class_Level1__c='DEU';
        rb.Channel_Class_Level2__c='ABBPRD';
        rb.CurrencyIsoCode='USD';
        rb.Date__c= Date.newInstance(2017, 10, 27);
        rb.Delivery_Date__c=Date.newInstance(2018, 05, 16);
        rb.Opportunity__c =oppy.Id;
        rb.End_Date__c=Date.newInstance(2018, 08, 08);
        rb.End_User_Project__c='a0V9E0000002PmqUAE';
        rb.Frequency__c='Monthly';
        rb.Main_PG_Technical__c='4314';
        rb.Name='RB - Encajonado + Paletizado Valente';
        rb.Packed__c=false;
        rb.Parent__c='Encajonado + Paletizado Valente';
        rb.Periods__c='3';
        rb.Price__c=300;
        rb.Quantity__c=250.00;
        rb.sobjectType__c='';
        rb.Split_JSON__c='[{"Productid":"01t20000004wMQOAA2","Productname":"Aluminium Solutions","Quantity":11,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":140000,"SubTotal":null},{"Productid":"01t20000004wJSdAAM","Productname":"Automotive","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null},{"Productid":"01t20000004wJ53AAE","Productname":"Cables and Cable Accessories","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null},{"Productid":"01t20000004wMQPAA2","Productname":"Automation / Control Architecture","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null},{"Productid":"01t20000004wMQXAA2","Productname":"Electrification","Quantity":1,"Subtotal":0,"Totalprice":0,"UnitPrice":0,"RO1":46666,"Selected":"false","Bonus":[],"PrdTotal":139998,"SubTotal":null}]';
        rb.Start_Date__c=Date.newInstance(2017, 10, 27);
        rb.Status__c='In Progress';
        rb.TotalRBValue__c='25000';
        rb.Type__c='Quantity';
        rb.Value__c='354528';
        insert rb;  
        ClsTriggerFactory.isSkipOpptyTrigger = true;
        system.assertNotEquals(NULL,rb.Id);
         
        // List<Recurring_Business__c> rbnew = new List<Recurring_Business__c>();
        // rbnew.add(rb);
         
                 
        List<OpportunityLineitem> oliList = new List<OpportunityLineitem>();
        OpportunityLineitem oli = new OpportunityLineitem();
        oli.OpportunityId = oppy.Id;
        oli.PricebookEntryId = pbe.Id;
        oli.Quantity = 2.03;
        oli.TotalPrice = 221.1;
        oli.Primary_Product_Group__c = true;
        oli.Product_Group__c = 4104;
        oliList.add(oli);
        
        OpportunityLineItem olti = new OpportunityLineItem();
        olti.OpportunityId = oppy.id;
        olti.PricebookEntryId = pbe.Id;
        olti.Quantity = 5;
        olti.TotalPrice = 2600.00;
        olti.Primary_Product_Group__c = false;
        oliList.add(olti);
        //insert oliList;  
        
       // Test.starttest();
         insert oliList;
        //Test.stopTest();
        
        OpportunityLineItem oli1 = [select id,product2Id,opportunityId,quantity from OpportunityLineItem limit 1];
        
        RB_Reference__c rbref = new RB_Reference__c();
        rbref.EAD__c=system.today().addDays(30);
        rbref.RO_Name__c='RO1';
        rbref.Products_1__c='[{"UnitPrice":0,"Totalprice":0,"ROvalue":46666,"ROname":"RO3","Quantity":11,"Productname":"Aluminium Solutions","Productid":"'+oli1.Product2Id+'"}]';
        //rbref.Products_2__c='UnitPrice":43000,"Totalprice":5000';
        rbref.Total_Value__c=1100;
        rbref.RB_ID__c=rb.id;
        insert rbref;
        
          Decimal[] dd=new Decimal[]{0.0,0.0,0.0,0.0};
        String[] st = new String[]{'yes','no','yes','no'};
        RecurringOpportunityController.RBLineitems rblineItem  = new RecurringOpportunityController.RBLineitems(p.id,'Automotive',11,0,0,1234,dd); 
       // RecurringOpportunityController.RBLineitems rblineItem  = new RecurringOpportunityController.RBLineitems('01t20000004wMQXAA2','Automotive',11.55,0.00,0.00,1234,dd);     
       RecurringOpportunityController.SourcelineitemsAdd srclineitemadd= new RecurringOpportunityController.SourcelineitemsAdd('01t20000004wMQXAA2','Automotive',11.55,0.00,0.00,0.00,1234,dd,st,'RO1','xyz'); 
        RecurringOpportunityController.RoLineItems rolineItem = new RecurringOpportunityController.RoLineItems('RO1','01t20000004wMQXAA2','Automotive',0.00,0.00,0.00,0.00,0.00,'abc');
       RecurringOpportunityController.RBItems rbItem = new RecurringOpportunityController.RBItems();
        RecurringOpportunityController.RoLineItemsAdd rolineItemadd = new RecurringOpportunityController.RoLineItemsAdd('RO1','01t20000004wMQXAA2','Automotive',0.00,0.00,0.00,0.00,0.00,'abc'); 
        RecurringOpportunityController.RefreshWrapper rfwrp = new RecurringOpportunityController.RefreshWrapper(oppy,rb,false,null,0.00);
        RecurringOpportunityController.updateRBStatus(rb.id,'Test','TsatCancel',True,lstopp);
       //  RecurringOpportunityController.createRecurringOpportunity(rb.id);
       //  RecurringOpportunityController.fulfillRO(rbref,oppy,oliList);   
           
       RecurringOpportunityController.saveRB(String.valueof(rb),null, String.valueof(rb.id),'test','5');
           }
            
}
    
    @isTest(seeAllData = false)
public with sharing class RBStatusUpdateHelper_Test{

        public static testmethod void recurringBusinessStatusUpdate(){
        Account acc1 = new Account(); 
        acc1.Name = 'Test Account5 239';    
        acc1.Primary_Account_Manager__c = 'mtester5@company.com';   
        acc1.BillingStreet = 'dajie5';
        acc1.BillingCity = 'berlin5';
        acc1.BillingState = 'Berlin';
        acc1.BillingPostalCode = '520012';
        acc1.BillingCountry = 'Germany';
        insert acc1;
             
        ABB_Location__c loc = new ABB_Location__c();
        loc.BU__c = 'RMMG';
        loc.Name = 'Manufacturing: 4130, China - Nanchang';
        loc.Company__c = 'CNGEN';
        loc.Country__c = 'China';
        loc.DIV__c = 'DM';   
        loc.Product_Group__c = '4130-Large Motors & Generators'; 
        loc.Activity__c ='Test';
        insert loc;
        
        RecordType RecType = [Select Id From RecordType  Where SobjectType = 'Product2' and DeveloperName = 'APTS_Global_Products'];   
        Product_Group__c pg = new Product_Group__c();
        pg.Business_Unit__c = 'tdsd';
        pg.Name = '4104';
        pg.Division__c = '10';
        pg.Data_Load_Year__c='2017';
        insert pg;
        
        End_User_Project__c endUser = new End_User_Project__c();
        endUser.Name='Test User';
        endUser.Account_End_User__c=acc1.id;
        insert endUser;
    
        Opportunity oppy = new Opportunity();
        oppy.AccountId = acc1.Id;
        oppy.Name = 'Testpyssss';
        oppy.StageName = 'Closed Won';
        oppy.CloseDate = system.today();
        oppy.Actual_Bid_Submission_Date_Comm__c = system.today()-1;
        oppy.Product_Group__c = pg.Id;
        oppy.Requested_Bid_Submission_Date_Comm__c = system.today()-1;
        oppy.Application__c = 'AP.302 Cable Car - Ski Lift';
        oppy.Local_Product_Group__c = pg.Id;
        oppy.CurrencyIsoCode = 'USD';
        oppy.Opportunity_Value__c = 18646;
        oppy.End_User_Project__c=endUser.Id;
        oppy.ABB_Location__c=loc.id;
        oppy.ABB_Probability__c = 100;
        Test.starttest();
        insert oppy;
        
        
        Product2 p = new Product2();   
        p.Description = 'Aluminium Solutions';     
        p.Name = 'Desc Aluminium Solutions';
        p.Product_Group__c = 4104;
        p.RecordTypeId = RecType.Id;
        p.CID__c = 'ABCD1234';
        p.IsActive = TRUE;       
        insert p;
        
     
        PricebookEntry pbe = new PricebookEntry();
        pbe.Pricebook2Id = Test.getStandardPricebookId();
        pbe.UnitPrice = 20;
        pbe.IsActive = true;
        pbe.Product2Id = p.Id;
        pbe.CurrencyIsoCode =oppy.CurrencyIsoCode;
        
        insert pbe;
        
         List<Recurring_Business__c> rb = new List<Recurring_Business__c>();
        //Recurring_Business__c rb = new Recurring_Business__c ();       
        //rb.Opportunity__c =oppy.Id;
        //rb.Status__c='In Progress';                        
        insert rb;      
        RB_Reference__c rbref = new RB_Reference__c();
        rbref.EAD__c=system.today().addDays(30);
        rbref.RO_Name__c='RO1';
        rbref.Products_1__c='[{"UnitPrice":0,"Totalprice":0,"ROvalue":46666,"ROname":"RO3","Quantity":11,"Productname":"Aluminium Solutions","Productid":"01t20000004wMQOAA2"},{"UnitPrice":0,"Totalprice":0,"ROvalue":46666,"ROname":"RO3","Quantity":1,"Productname":"Automotive","Productid":"01t20000004wJSdAAM"},{"UnitPrice":0,"Totalprice":0,"ROvalue":46666,"ROname":"RO3","Quantity":1,"Productname":"Cables and Cable Accessories","Productid":"01t20000004wJ53AAE"},{"UnitPrice":0,"Totalprice":0,"ROvalue":46666,"ROname":"RO3","Quantity":1,"Productname":"Automation / Control Architecture","Productid":"01t20000004wMQPAA2"},{"UnitPrice":0,"Totalprice":0,"ROvalue":46666,"ROname":"RO3","Quantity":1,"Productname":"Electrification","Productid":"01t20000004wMQXAA2"}]';
        rbref.Products_2__c='UnitPrice":43000,"Totalprice":5000';
        rbref.Total_Value__c=1100;
        //rbref.RB_ID__c=rb.id;
        insert rbref;
       // Test.stopTest();
        
        List<OpportunityLineitem> oliList = new List<OpportunityLineitem>();
        OpportunityLineitem oli = new OpportunityLineitem();
        
        oli.OpportunityId = oppy.Id;
        oli.PricebookEntryId = pbe.Id;
        oli.Quantity = 2.03;
        oli.TotalPrice = 221.1;
        oli.Primary_Product_Group__c = true;
        oli.Product_Group__c = 4104;
        oliList.add(oli);
        
        OpportunityLineItem olti = new OpportunityLineItem();
        olti.OpportunityId = oppy.id;
        olti.PricebookEntryId = pbe.Id;
        olti.Quantity = 5;
        olti.TotalPrice = 2600.00;
        olti.Primary_Product_Group__c = false;
        oliList.add(olti);
        
        //Test.starttest();
        insert oliList;
        ClsTriggerFactory.isSkipOpptyTrigger = true;
        Test.stopTest();
        
        
       RBStatusUpdateHelper.recurringBusinessStatusUpdate(oppy.id);
         
    }
}
    
    
    RBupdateBusinessPlanHelper
   RecurringOpportunityHelper 
  RBupdateAgreementHelper
  AddRBTeamMemberClass
    
    
*/
}