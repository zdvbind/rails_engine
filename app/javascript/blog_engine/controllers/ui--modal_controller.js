import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    connect() {
        // this.element.showModal()
        console.log('modal controller connected!!!!!')
        this.element.showModal()
    }
}
