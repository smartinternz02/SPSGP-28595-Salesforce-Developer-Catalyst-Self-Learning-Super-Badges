//TRIGGER: Discount On Property

trigger DiscountTrigger on Realtor__c (before insert , Before Update) {
    DiscountOnProperty.Discount5(Trigger.New);
}