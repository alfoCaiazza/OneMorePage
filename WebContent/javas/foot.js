/**
 * 
 */
fetch("./footer.jsp")
  .then(response => {
    return response.text()
  })
  .then(data => {
    document.querySelector("footer").innerHTML = data;
  });