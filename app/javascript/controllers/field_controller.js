import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [
    "field_container"
  ];

  add_field() {
    var fieldContainer = document.createElement("div")
    var inputField = document.createElement("input")
    fieldContainer.classList.add("form-container__group")
    fieldContainer.append(inputField)

    this.field_containerTarget.append(fieldContainer);
  }
}
