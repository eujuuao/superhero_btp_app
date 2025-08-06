/**
 * 
 * @After(event = { "READ" }, entity = "superhero_btp_appSrv.SuperHeroes")
 * @param {(Object|Object[])} results - For the After phase only: the results of the event processing
 * @param {cds.Request} request - User information, tenant-specific CDS model, headers and query parameters
 */
module.exports = async function(results, request) {
  // Ensure results is defined
  if (!results) return;

  // Function to update description based on age
  const updateDescription = (hero) => {
    if (hero.age > 500 && !hero.description.startsWith("An Immortal")) {
      hero.description = `An Immortal ${hero.description}`;
    }
  };

  // Check if results is an array or a single object
  if (Array.isArray(results)) {
    results.forEach(updateDescription);
  } else {
    updateDescription(results);
  }
};