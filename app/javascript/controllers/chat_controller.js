import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="chat"
export default class extends Controller {
  connect() {
    this.autoScroll()
  }

  autoScroll() {
    this.element.scrollTop = this.element.scrollHeight
  }

}
