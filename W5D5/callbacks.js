// window.setTimeout(function () {
//   alert('HAMMERTIME');
// }, 5000);
//
//
// function hammerTime(time){
//   window.setTimeout(function () {
//     alert(`${time} is hammertime!`)
//   }, 5000);
// }

//tea?
const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function teaAndBiscuits(){
  let first, second;

  reader.question("Would you like some tea?",(response) =>{
    console.log(`You replied ${response}`);

    reader.question("Would you like some biscuits?",(response) =>{
      console.log(`You replied ${response}`);

      const firstRes = (first === "yes") ? "do" : "don't";
      const secondRes = (second === "yes") ? "do" : "don't";
      console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
      reader.close();
    });
  });
}
