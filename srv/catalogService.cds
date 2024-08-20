using { saishiva.db } from '../db/datamodel';
 
service CatalogService @(path: 'CatalogService') {
 
   entity ProductSet as projection on db.master.product;
   entity PoSet as projection on db.transaction.purchaseorder;
   entity PoItemSet as projection on db.transaction.poitems;
}