const changeFontSize = (element, increase) => {
   size = window.getComputedStyle(element).getPropertyValue("font-size");
   size = parseInt(size.slice(0, -2));
   element.style.fontSize = (size+increase) + "px";
};

const makeBigger = () => {
   content = document.querySelector('.content');
   h1 = document.querySelector('h1');
   changeFontSize(content, 5);
   changeFontSize(h1, 5);
};

const makeSmaller = () => {
   content = document.querySelector('.content');
   h1 = document.querySelector('h1');
   changeFontSize(content, -5);
   changeFontSize(h1, -5);
};

document.querySelector('#a1').addEventListener('click', makeBigger);
document.querySelector('#a2').addEventListener('click', makeSmaller);

