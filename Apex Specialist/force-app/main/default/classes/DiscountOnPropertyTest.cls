
//TEST CLASS: Discount On Property

@isTest
Class DiscountOnPropertyTest {
 //define test method
 @IsTest
  static Void DiscountTest1(){
  
  //take input by DML Code
  Realtor__c VarData = new Realtor__c();
  VarData.Type__c = 'Row House' ;
  VarData.Price__c = 70000;
  
  //save data
  Insert VarData;
  
  //due to Insert Trigger will be called

  //due to trigger Main Class will be called
  
  //get Feedback from system
  Realtor__c VarFB ;
  VarFB = [SELECT Price__c FROM Realtor__c WHERE Id =: VarData.Id];
  
  //compare data
  system.assertEquals (66500, VarFB.Price__c);
  }
  
  
     
 @IsTest
  static Void DiscountTest2 (){
      
  Realtor__c VarData = new Realtor__c();
  VarData.Type__c = 'Villa' ;
  VarData.Price__c = 80000;
      
  Insert VarData;
      
  Realtor__c VarFB ;
  VarFB = [SELECT Price__c FROM Realtor__c WHERE Id =: VarData.Id];
      
  system.assertEquals (72000, VarFB.Price__c);
  }
  

      @IsTest
  static Void DiscountTest3 (){
      
  Realtor__c VarData = new Realtor__c();
  VarData.Type__c = 'Apartment' ;
  VarData.Price__c = 90000;
      
  Insert VarData;
      
  Realtor__c VarFB ;
  VarFB = [SELECT Price__c FROM Realtor__c WHERE Id =: VarData.Id];
      
  system.assertEquals (72000, VarFB.Price__c);
  }
  }
    