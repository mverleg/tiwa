package display;
interface Display
{
    //todo: how to do this? make a representation of each unit and object with display information? (since there are different display modes)
    //todo: should displays be based on instantaneous states, or rather on changes being performed?
    //todo: also note that there should be be temporal coupling - each logic update may feature 0, 1 or several draw updates
    // Possible I should keep a list of visual entities, which are linked to game entities in a many-to-many way (e.g. images without object, or alternate/multiple images per object)
    // They can be updated using the standard signals being sent about creation and descruction and movement, is that smart? Possibly observer pattern on the specific object instead for performance... Hopefully there's a better but equally fast way; double signals seems undesirable
    // If there IS an observer feature for each unit, then this might be used also by ObservedUnit
}
