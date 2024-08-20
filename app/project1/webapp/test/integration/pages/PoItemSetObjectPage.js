sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'saishiva.project1',
            componentId: 'PoItemSetObjectPage',
            contextPath: '/PoSet/Items'
        },
        CustomPageDefinitions
    );
});