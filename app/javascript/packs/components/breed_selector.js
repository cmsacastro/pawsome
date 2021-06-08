// 1. create a function for the whole behavior
// 2. add on the breed input data-attributes that will hold all the relevant species (e.g. data-cats="["Cat 1", ...]")
// 3. select all of the species
// 4. loop over them and add an event listener `click` on each one
// 5. const select = document.querySelector('#user_breed')
// 5b. make an if statment to check if the select exist
// 6. first we'll re-enable the select
// 7. empty the options select.innerHTML = '';
// 8. based on the species that we click on we'll read the appropriate data-attribute
// 9. JSON.parse() on the data attribute to convert it from a string to an array
// 10. we'll loop over the array and insert inside the select the options with insertAdjacentHTML. => <option value="Abyssinian Cat">Abyssinian Cat</option>
// 11. export the function
// 12. import it in application.js
