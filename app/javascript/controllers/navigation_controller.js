import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["burgerButton", "navItem"];

  connect() {
    this.opened = false;
    this.setNavItemTabIndex();
    window.addEventListener("resize", this.setNavItemTabIndex.bind(this));
    // remove the proload class to allow transitions after pageload
    this.element.classList.remove("navigation-container__preload");
  }

  setNavItemTabIndex() {
    const mobile = window.innerWidth < 905;
    this.navItemTargets.forEach((navItem) => {
      if (!mobile || this.opened) {
        navItem.removeAttribute("tabindex");
      } else {
        navItem.setAttribute("tabindex", -1);
      }
    });
  }

  toggleMenu() {
    this.opened = !this.opened;
    this.element.classList.toggle("main-navigation--opened");
    this.burgerButtonTarget.classList.toggle("navigation-container__burger-button--black");
    if (this.opened) {
      this.burgerButtonTarget.setAttribute("aria-expanded", "true");
    } else {
      this.burgerButtonTarget.setAttribute("aria-expanded", "false");
    }
    this.navItemTargets.forEach((navItem) => {
      if (this.opened) {
        navItem.removeAttribute("tabindex");
      } else {
        navItem.setAttribute("tabindex", -1);
      }
    });
  }
}
