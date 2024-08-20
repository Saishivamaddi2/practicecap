namespace saishiva.db;
 
using { cuid } from '@sap/cds/common';
 
using{ saishiva.common } from './common';
 
context master {
   entity product{
       key NODE_KEY: String(32) ;
       PRODUCT_ID: String(28);
       TYPE_CODE: String(2);
       CATEGORY: String(32);
       DESCRIPTION: String(255) ;
       TAX_TARIF_CODE: Integer;
       MEASURE_UNIT: String(2);
       WEIGHT_MEASURE: Decimal(5,2);
       WEIGHT_UNIT: String(2);
       CURRENCY_CODE: String(4);
       PRICE:Decimal(15,2);
       WIDTH:Decimal(5,2);
       DEPTH:Decimal(5,2);
       HEIGHT:Decimal(5,2);
       DIM_UNIT:String(2);
   }
}
 
context transaction  {
   entity purchaseorder: common.Amount, cuid{
       PO_ID: String(40) @title : '{i18n>PO_ID}';
       LIFECYCLE_STATUS: String(1);
       OVERALL_STATUS: String(1) @title : '{i18n>STATUS}';
       Items: Composition of  many poitems on Items.PARENT_KEY = $self;
   }
 
   entity poitems: common.Amount,cuid{
       PARENT_KEY: Association to purchaseorder @title : '{i18n>PO_NODE_KEY}';
       PO_ITEM_POS: Integer @title : '{i18n>ITEM_POS}';
       PRODUCT_GUID: Association to master.product @title : '{i18n>PRODUCT_ID}';
   }
}
 