sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/sap/heroes/superheroesmodernui/test/integration/FirstJourney',
		'com/sap/heroes/superheroesmodernui/test/integration/pages/SuperHeroesList',
		'com/sap/heroes/superheroesmodernui/test/integration/pages/SuperHeroesObjectPage'
    ],
    function(JourneyRunner, opaJourney, SuperHeroesList, SuperHeroesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/sap/heroes/superheroesmodernui') + '/index.html'
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