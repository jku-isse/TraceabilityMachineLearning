protected void fireAssignmentsChanged() {
    if (areEventsEnabled) {
        myManager.fireAssignmentsChanged(this);
    }
}