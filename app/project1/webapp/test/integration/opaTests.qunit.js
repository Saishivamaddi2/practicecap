sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'saishiva/project1/test/integration/FirstJourney',
		'saishiva/project1/test/integration/pages/PoSetList',
		'saishiva/project1/test/integration/pages/PoSetObjectPage',
		'saishiva/project1/test/integration/pages/PoItemSetObjectPage'
    ],
    function(JourneyRunner, opaJourney, PoSetList, PoSetObjectPage, PoItemSetObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('saishiva/project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePoSetList: PoSetList,
					onThePoSetObjectPage: PoSetObjectPage,
					onThePoItemSetObjectPage: PoItemSetObjectPage
                }
            },
            opaJourney.run
        );
    }
);