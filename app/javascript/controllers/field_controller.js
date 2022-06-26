import { Controller } from "@hotwired/stimulus"

let field_index = 1

export default class extends Controller {
  static targets = [
    "field_container"
  ];

  add_field() {
    this.check_index()

    var fieldContainer = document.createElement("div")
    fieldContainer.classList.add("form-container__group")

    var inputField = document.createElement("input")
    inputField.name = "seminar_instance[seminar_contents_attributes][" + field_index + "][content]"
    inputField.id = "seminar_instance_seminar_contents_attributes_" + field_index + "_content"

    inputField.type = "text"

    fieldContainer.append(inputField)

    this.field_containerTarget.append(fieldContainer);
  }

  check_index() {
    if(document.getElementById("seminar_instance_seminar_contents_attributes_" + field_index + "_content") != null) {
      field_index = field_index + 1
      this.check_index()
    };
  }
}
