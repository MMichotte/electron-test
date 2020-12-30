
const counter = document.getElementById('counter');
const addButton = document.getElementById('add');

addButton.onclick = incrementCounter

let counterVal = 0;

function incrementCounter() {
    counter.innerHTML = ++counterVal;
}