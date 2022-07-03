import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  delete(event) {

    let confirmed = confirm("Bist du dir sicher?")
    console.log(confirmed)

    if(!confirmed){
      event.preventDefault()
    }
  }
}
