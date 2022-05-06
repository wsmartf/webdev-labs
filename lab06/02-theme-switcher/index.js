const defaultTheme = () => {document.querySelector("body").className = "body";};

const desert = () => {document.querySelector("body").className = "desert";};

const ocean = () => {document.querySelector("body").className = "ocean";};

const highContrast = () => {document.querySelector("body").className = "high-contrast";};

document.querySelector('#default').addEventListener('click', defaultTheme);
document.querySelector('#desert').addEventListener('click', desert);
document.querySelector('#ocean').addEventListener('click', ocean);
document.querySelector('#high-contrast').addEventListener('click', highContrast);