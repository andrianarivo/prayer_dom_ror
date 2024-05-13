import { Controller } from "@hotwired/stimulus"
import { DateTime } from "luxon"

export default class extends Controller {

  format(duration) {
    if (duration.years > 0) {
      return `${duration.years} y`
    } else if (duration.months > 0) {
      return `${duration.months} m`
    } else if (duration.days > 0) {
      return `${duration.days} d`
    } else if (duration.hours > 0) {
      return `${duration.hours} h`
    } else if (duration.minutes > 0) {
      return `${duration.minutes} min`
    } else {
      return `${duration.seconds} s`
    }
  }

  connect() {
    const created_at = DateTime.fromSQL(this.element.getAttribute('datetime'))
    const diff = DateTime.now().diff(created_at, ['years', 'months', 'days', 'hours', 'minutes', 'seconds'])
    this.element.textContent = this.format(diff)
  }
}

