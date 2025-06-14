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
            console.log('Artifact images loaded from data.json');
        })
        .catch(error => {
            console.error('Error loading artifact images:', error);
        });
});
