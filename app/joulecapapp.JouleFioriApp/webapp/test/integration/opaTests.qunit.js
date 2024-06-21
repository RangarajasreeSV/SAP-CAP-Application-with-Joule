sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'joulecapapp/JouleFioriApp/test/integration/FirstJourney',
		'joulecapapp/JouleFioriApp/test/integration/pages/EmployeeList',
		'joulecapapp/JouleFioriApp/test/integration/pages/EmployeeObjectPage'
    ],
    function(JourneyRunner, opaJourney, EmployeeList, EmployeeObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('joulecapapp/JouleFioriApp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEmployeeList: EmployeeList,
					onTheEmployeeObjectPage: EmployeeObjectPage
                }
            },
            opaJourney.run
        );
    }
);