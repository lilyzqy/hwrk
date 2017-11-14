// console.log("Hello from the JavaScript console!");

// $.ajax({
//   type: 'GET',
//   url: 'http://api.openweathermap.org/data/2.5/weather' +
//   	'?q=London,uk&appid=bcb83c4b54aee8418983c2aff3073b3b',
//   success(data) {
//     console.log("We have your weather!");
//     console.log(data);
//   },
//   error() {
//     console.error("An error occurred.");
//   },
// });
//
// console.log("THE AJAX has been dispatched.");



console.log("Hello from the JavaScript console!");

// Your AJAX request here
$.ajax({
  type:'GET',
  url:'http://api.openweathermap.org/data/2.5/weather?q=NY,NY&appid=9538c2199431cabd6c13e95b1e9b115e',
  // data:'whether',
  success(data){
    console.log(data);
    console.log("Later?");
  },
  error(){
    console.log("An error");
  },
});

// Add another console log here, outside your AJAX request
console.log("I'm here.");
// 9538c2199431cabd6c13e95b1e9b115e
