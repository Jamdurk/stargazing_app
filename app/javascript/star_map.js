document.addEventListener('turbo:load', function () {
  const skyMap = document.getElementById('sky-map'); // Parent element

  // Attach a single event listener to the parent
  skyMap.addEventListener('click', function (event) {
    // Check if the clicked element has the "star" class
    const star = event.target.closest('.star'); // Use a general "star" class for all stars

    // If the click wasn't on a star, exit early
    if (!star) return;

    // Get star attributes dynamically
    const name = star.getAttribute('data-name');
    const description = star.getAttribute('data-description');
    const distance = star.getAttribute('data-distance');
    const lifespan = star.getAttribute('data-lifespan');
    const fact = star.getAttribute('data-fact');
    const size = star.getAttribute('data-size');

    // Get info box elements
    const infoBox = document.getElementById('info-box');
    const starName = document.getElementById('star-name');
    const starDescription = document.getElementById('star-description');
    const starDistance = document.getElementById('star-distance');
    const starLifespan = document.getElementById('star-lifespan');
    const starFact = document.getElementById('star-fact');
    const starSize = document.getElementById('star-size');

    // Update the info box content
    starName.textContent = name;
    starDescription.textContent = description;
    starDistance.textContent = distance;
    starLifespan.textContent = lifespan;
    starFact.textContent = fact;
    starSize.textContent = size;

    // Position and show the info box
    infoBox.style.top = `${star.offsetTop}px`;
    infoBox.style.left = `${star.offsetLeft + 30}px`;
    infoBox.style.display = 'block';
  });
});
