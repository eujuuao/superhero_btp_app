sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'superherobtpapp/superheroisbtp/test/integration/FirstJourney',
		'superherobtpapp/superheroisbtp/test/integration/pages/SuperHeroesList',
		'superherobtpapp/superheroisbtp/test/integration/pages/SuperHeroesObjectPage'
    ],
    function(JourneyRunner, opaJourney, SuperHeroesList, SuperHeroesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('superherobtpapp/superheroisbtp') + '/index.html'
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