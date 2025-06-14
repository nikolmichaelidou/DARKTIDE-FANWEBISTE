document.addEventListener('DOMContentLoaded', function() {
    fetch('/data.json')
        .then(response => response.json())
        .then(data => {
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
            console.log('Weapon images loaded from data.json');
        })
        .catch(error => {
            console.error('Error loading weapon images:', error);
        });
});
