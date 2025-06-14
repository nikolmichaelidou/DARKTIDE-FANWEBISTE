document.addEventListener('DOMContentLoaded', function() {
    fetch('/data.json')
        .then(response => response.json())
        .then(data => {
            // Load artifact images
            if (data.artifacts && Array.isArray(data.artifacts)) {
                data.artifacts.forEach(artifact => {
                    const artifactElements = document.querySelectorAll(`[data-artifact="${artifact.name}"]`);
                    
                    artifactElements.forEach(element => {
                        // Find the image element within this artifact card
                        const imgElement = element.querySelector('.artifact-img');
                        if (imgElement && artifact.imageUrl) {
                            imgElement.src = artifact.imageUrl;
                        }
                    });
                });
            }

            // Load weapon images
            if (data.weapons && Array.isArray(data.weapons)) {
                data.weapons.forEach(weapon => {
                    const weaponElements = document.querySelectorAll(`[data-weapon="${weapon.name}"]`);
                    
                    weaponElements.forEach(element => {
                        // Find the image element within this weapon card
                        const imgElement = element.querySelector('.weapon-img');
                        if (imgElement && weapon.imageUrl) {
                            imgElement.src = weapon.imageUrl;
                        }
                    });
                });
            }
            console.log('Images loaded from data.json');
        })
        .catch(error => {
            console.error('Error loading images:', error);
        });
});
