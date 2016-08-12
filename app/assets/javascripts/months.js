
 $(document).on('turbolinks:load', function() {

     var months = $('.month');
     var monthNumber = months[0].innerHTML;
     console.log(months);
     console.log(monthNumber);
     

    function monthGenerator(monthNumber){
      var names = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
      var monthName = names[monthNumber - 1]
           $('.month').text(monthName)
           console.log("hey")
    }
      monthGenerator(monthNumber); 

  
 function helloWorld() {
    console.log("hello world");
 }

});

    // if (month == 8){
    //   month == 'august'
    //   console.log('august')
    // }

   // switch (month) {
   //  console.log("hello")
   //     case 1:
   //         month = "January";
   //         break;
   //     case 2:
   //         month = "February";
   //         break;
   //     case 3:
   //         month = "March";
   //         break;
   //     case 4:
   //         month = "April";
   //         break;
   //     case 5:
   //         month = "May";
   //         break;
   //     case 6:
   //         month = "June";
   //         break;
   //     case 7:
   //         month = "July";
   //         break;
   //     case 8:
   //         month = "August";
   //         break;
   //     case 9:
   //         month = "September";
   //         break;
   //     case 10:
   //         month = "October";
   //         break;
   //     case 11:
   //         month = "November";
   //         break;
   //     case 12:
   //         month = "December";
   //         break;
   // }






