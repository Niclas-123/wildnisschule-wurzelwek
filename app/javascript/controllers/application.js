import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

// Wait until Maps API is loaded
window.fireMapsLoadedEvent = function () {
  const evt = new Event("mapsLoaded");
  document.dispatchEvent(evt);
};
