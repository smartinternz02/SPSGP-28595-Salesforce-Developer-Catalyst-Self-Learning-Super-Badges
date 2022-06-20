//Class Discount Property


Public class DiscountOnProperty{
    public static void Discount5 ( list<Realtor__c> VarPropertyList ){
        for( Realtor__c VarP : VarPropertyList){
            if(VarP.Type__c == 'Row House'){
              VarP.Price__c = VarP.Price__c - (VarP.Price__c * 0.05 ) ;
                }
            else if(VarP.Type__c == 'Villa')
                {
              VarP.Price__c = VarP.Price__c - (VarP.Price__c * 0.1 ) ;
            }
             else if(VarP.Type__c == 'Apartment')
                {
              VarP.Price__c = VarP.Price__c - (VarP.Price__c * 0.2 );
            
        }
    }
    }
}