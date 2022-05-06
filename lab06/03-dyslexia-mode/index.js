const dyslexiaModeToggle = () => 
{
  body = document.querySelector("body");
  if (body.className == "dyslexia-mode") {
    body.className = "body"
  } else {
    body.className = "dyslexia-mode";
  }
}

document.querySelector('#dyslexia-toggle').addEventListener('click', dyslexiaModeToggle);