import { Controller } from "@hotwired/stimulus"

let field_index = 1

export default class extends Controller {
  static targets = [
    "field_container"
  ];

  add_field() {
    var fieldContainer = document.createElement("div")
    fieldContainer.classList.add("form-container__group")

    var inputField = document.createElement("input")
    inputField.name = "seminar_instance[seminar_contents_attributes][" + field_index + "][content]"
    inputField.type = "text"

    fieldContainer.append(inputField)
    field_index = field_index + 1

    this.field_containerTarget.append(fieldContainer);
  }
}
