#!/bin/bash

# Script to update image URLs in data.json
# Usage: ./update-images.sh

echo "Updating image URLs in data.json..."

# You would replace these URLs with actual image URLs from your search
FORCE_SWORD="https://example.com/images/force-sword.jpg"
FORCE_STAFF="https://example.com/images/force-staff.jpg"
FORCE_AXE="https://example.com/images/force-axe.jpg"
ANIMUS_SPECULUM="https://example.com/images/animus-speculum.jpg"
PSYCHIC_HOOD="https://example.com/images/psychic-hood.jpg"
NEMESIS_FORCE="https://example.com/images/nemesis-force-weapon.jpg"
RUNESTAFF="https://example.com/images/runestaff.jpg"
NULL_ROD="https://example.com/images/null-rod.jpg"

# Artifact images
ARMOR_ANTILOCHUS="https://example.com/images/armor-of-antilochus.jpg"
BLACK_LOTUS="https://example.com/images/black-lotus-icon.jpg"
COGITATOR="https://example.com/images/cogitator-intensifier.jpg"
CRYSTAL_TZEENTCH="https://example.com/images/crystal-of-tzeentch.jpg"
TOME_MALEFIC="https://example.com/images/tome-of-malefic-dreams.jpg"
GHOSTHELM="https://example.com/images/ghosthelm.jpg"
STAFF_TOMORROW="https://example.com/images/staff-of-tomorrow.jpg"
SYNAPTIC_AMP="https://example.com/images/synaptic-amplifier.jpg"
GLOOM_PRISM="https://example.com/images/gloom-prism.jpg"

# Create a temporary file for sed operations
TEMP_FILE=$(mktemp)

# Update the URLs in data.json
sed -e "s|\"imageUrl\": \"https://images.example.com/force-sword.jpg\"|\"imageUrl\": \"$FORCE_SWORD\"|g" \
    -e "s|\"imageUrl\": \"https://images.example.com/force-staff.jpg\"|\"imageUrl\": \"$FORCE_STAFF\"|g" \
    -e "s|\"imageUrl\": \"https://images.example.com/force-axe.jpg\"|\"imageUrl\": \"$FORCE_AXE\"|g" \
    -e "s|\"imageUrl\": \"https://images.example.com/animus-speculum.jpg\"|\"imageUrl\": \"$ANIMUS_SPECULUM\"|g" \
    -e "s|\"imageUrl\": \"https://images.example.com/psychic-hood.jpg\"|\"imageUrl\": \"$PSYCHIC_HOOD\"|g" \
    -e "s|\"imageUrl\": \"https://images.example.com/nemesis-force-weapon.jpg\"|\"imageUrl\": \"$NEMESIS_FORCE\"|g" \
    -e "s|\"imageUrl\": \"https://images.example.com/runestaff.jpg\"|\"imageUrl\": \"$RUNESTAFF\"|g" \
    -e "s|\"imageUrl\": \"https://images.example.com/null-rod.jpg\"|\"imageUrl\": \"$NULL_ROD\"|g" \
    -e "s|\"imageUrl\": \"https://images.example.com/armor-of-antilochus.jpg\"|\"imageUrl\": \"$ARMOR_ANTILOCHUS\"|g" \
    -e "s|\"imageUrl\": \"https://images.example.com/black-lotus-icon.jpg\"|\"imageUrl\": \"$BLACK_LOTUS\"|g" \
    -e "s|\"imageUrl\": \"https://images.example.com/cogitator-intensifier.jpg\"|\"imageUrl\": \"$COGITATOR\"|g" \
    -e "s|\"imageUrl\": \"https://images.example.com/crystal-of-tzeentch.jpg\"|\"imageUrl\": \"$CRYSTAL_TZEENTCH\"|g" \
    -e "s|\"imageUrl\": \"https://images.example.com/tome-of-malefic-dreams.jpg\"|\"imageUrl\": \"$TOME_MALEFIC\"|g" \
    -e "s|\"imageUrl\": \"https://images.example.com/ghosthelm.jpg\"|\"imageUrl\": \"$GHOSTHELM\"|g" \
    -e "s|\"imageUrl\": \"https://images.example.com/staff-of-tomorrow.jpg\"|\"imageUrl\": \"$STAFF_TOMORROW\"|g" \
    -e "s|\"imageUrl\": \"https://images.example.com/synaptic-amplifier.jpg\"|\"imageUrl\": \"$SYNAPTIC_AMP\"|g" \
    -e "s|\"imageUrl\": \"https://images.example.com/gloom-prism.jpg\"|\"imageUrl\": \"$GLOOM_PRISM\"|g" \
    data.json > $TEMP_FILE

# Copy the modified file back to data.json
cp $TEMP_FILE data.json

# Clean up
rm $TEMP_FILE

echo "Update complete. You can now view the website with the updated images."
