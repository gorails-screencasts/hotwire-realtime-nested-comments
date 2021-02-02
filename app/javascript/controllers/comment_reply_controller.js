import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "form" ]

  toggle(event) {
    event.preventDefault()
    this.formTarget.classList.toggle("d-none")
  }
}
