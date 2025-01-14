    // Handle star clicks
    document.querySelectorAll('.star-betelgeuse, .star-rigel, .star-alnitak, .star-alnilam, .star-mintaka').forEach(star => {
      star.addEventListener('click', function() {
        // Get star attributes
        const name = this.getAttribute('data-name');
        const description = this.getAttribute('data-description');
        const distance = this.getAttribute('data-distance');
        const lifespan = this.getAttribute('data-lifespan')
        const fact = this.getAttribute('data-fact')
        const size = this.getAttribute('data-size')

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
        infoBox.style.top = `${this.offsetTop}px`;
        infoBox.style.left = `${this.offsetLeft + 30}px`;
        infoBox.style.display = 'block';
      });
    });
  
  