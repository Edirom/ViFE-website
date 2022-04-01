import bootstrap from 'bootstrap';
import {$,jQuery} from 'jquery';
import { Calendar } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
import listPlugin from '@fullcalendar/list';
import iCalendarPlugin from '@fullcalendar/icalendar';
import bootstrapPlugin from '@fullcalendar/bootstrap';

document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
    var calendar = new Calendar(calendarEl, {
        plugins: [ dayGridPlugin, listPlugin, iCalendarPlugin, bootstrapPlugin ],
        initialView: 'dayGridMonth',
        themeSystem: 'bootstrap',
        events: {
            url: calendarEl.getAttribute('data-url'),
            format: 'ics'
        },
        headerToolbar: {
            center: 'dayGridMonth,listMonth' // buttons for switching between views
        }
    });
    calendar.render();
});
