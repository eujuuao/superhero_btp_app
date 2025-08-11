sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'superheroesui/superheroesui/test/integration/FirstJourney',
		'superheroesui/superheroesui/test/integration/pages/SuperHeroesList',
		'superheroesui/superheroesui/test/integration/pages/SuperHeroesObjectPage'
    ],
    function(JourneyRunner, opaJourney, SuperHeroesList, SuperHeroesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('superheroesui/superheroesui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSuperHeroesList: SuperHeroesList,
					onTheSuperHeroesObjectPage: SuperHeroesObjectPage
                }
            },
            opaJourney.run
        );
    }
);