using CatalogService as service from '../../srv/catalogService';

annotate service.PoSet with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'CURRENCY_code',
                Value : CURRENCY_code,
            },
            {
                $Type : 'UI.DataField',
                Value : GROSS_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Value : NET_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Value : TAX_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Value : PO_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LIFECYCLE_STATUS',
                Value : LIFECYCLE_STATUS,
            },
            {
                $Type : 'UI.DataField',
                Value : OVERALL_STATUS,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target: 'Items/@UI.LineItem'
        }
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'CURRENCY_code',
            Value : CURRENCY_code,
        },
        {
            $Type : 'UI.DataField',
            Value : GROSS_AMOUNT,
        },
        {
            $Type : 'UI.DataField',
            Value : NET_AMOUNT,
        },
        {
            $Type : 'UI.DataField',
            Value : TAX_AMOUNT,
        },
        {
            $Type : 'UI.DataField',
            Value : PO_ID,
        },
        {
            $Type : 'UI.DataField',
            Value : OVERALL_STATUS,
        },
    ],
    UI.SelectionFields : [
        OVERALL_STATUS,
        CURRENCY_code,
        PO_ID,
    ],
);
    annotate service.PoItemSet with @(
    UI.LineItem  : [
        {
            $Type : 'UI.DataField',
            Value :  ID,
        },
         {
             $Type : 'UI.DataField',
             Value : GROSS_AMOUNT,
         },
         {
             $Type : 'UI.DataField',
             Value : NET_AMOUNT,
         },
    ],

 
);

