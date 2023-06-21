/**
 * 
 */
fetch("./header.jsp")
  .then(response => {
    return response.text()
  })
  .then(data => {
    document.querySelector("header").innerHTML = data;
  });