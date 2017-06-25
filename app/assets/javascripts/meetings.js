document.addEventListener("DOMContentLoaded", function(event) {
  var app = new Vue({
    el: '#app',
    data: {
      meeting: [],
      newMeetingId: '',
      newMeetingDate: '',
      errors: [],
      nameFilter: ''
    },
    mounted: function() {
      $.get('/api/v1/meetings.json', function(meetingsResponse) {
        this.meetings = meetingsResponse;
      }bind.(this));
    },
    methods: {
      isValidMeeting: function(inputMeeting) {
        return inputMeeting.date.indexOf(this.dateFilter) !== -1
      },
      toggleId: function(meeting) {
        meeting.idVisible = !meeting.idVisible;
      },
      addMeeting: function() {
        this.errors = [];
        var params = {
                          id: this.newMeetingId,
                          date: this.newMeetingDate,
                          idVisible: false
                          };
      $.post('api/v1/meetings.json', params, function(newMeeting){
        this.meeting.push(newMeeting);
        this.newMeetingId = '';
        this.newMeetingDate = '';
      }bind(this)).fail(function(response) {
        this.errors = response.responseJSON.errors;
      }.bind(this));
    },
      deleteMeeting: function(meeting) {
        var index = this.meeting.indexOf(meeting);
        this.meeting.splice(index, 1);
      }
    }
  });
});
