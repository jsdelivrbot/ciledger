
// dropdown Addmember
$('.ui.dropdown').dropdown();

// dropdown religion addmember
$('.ui.dropdown.religion').dropdown({
	allowAdditions:true
});

$('#calender_birthdate').calendar({
  type: 'date'
});

// validation addmembers form
$('.ui.form')
  .form({
    fields: {
      gender: {
        identifier  : 'gender',
        rules: [
          {
            type   : 'empty',
            prompt : 'Please enter a gender'
          }
        ]
      },
      members_firstname: {
        identifier  : 'members_firstname',
        rules: [
          {
            type   : 'empty',
          }
        ]
      },
      members_lastname: {
        identifier  : 'members_lastname',
        rules: [
          {
            type   : 'empty',
          }
        ]
      },
      members_account: {
        identifier  : 'members_account',
        rules: [
          {
            type   : 'empty',
          }
        ]
      },
      old_members_address: {
        identifier  : 'old_members_address',
        rules: [
          {
            type   : 'empty',
          }
        ]
      },
      old_members_address_no_of_years: {
        identifier  : 'old_members_address_no_of_years',
        rules: [
          {
            type   : 'empty',
          }
        ]
      },
      new_members_address: {
        identifier  : 'new_members_address',
        rules: [
          {
            type   : 'empty',
          }
        ]
      },
      new_members_address_no_of_years: {
        identifier  : 'new_members_address_no_of_years',
        rules: [
          {
            type   : 'empty',
          }
        ]
      },
      birthdate: {
        identifier  : 'birthdate',
        rules: [
          {
            type   : 'empty',
          }
        ]
      },
      dependents: {
        identifier  : 'dependents',
        rules: [
          {
            type   : 'empty',
          }
        ]
      },
      monthly_income: {
        identifier  : 'monthly_income',
        rules: [
          {
            type   : 'empty',
          }
        ]
      },
      prev_occupation: {
        identifier  : 'prev_occupation',
        rules: [
          {
            type   : 'empty',
          }
        ]
      },
      pres_occupation: {
        identifier  : 'pres_occupation',
        rules: [
          {
            type   : 'empty',
          }
        ]
      },
      civil_status: {
        identifier  : 'civil_status',
        rules: [
          {
            type   : 'empty',
            prompt : 'Please enter a gender'
          }
        ]
      },
      religion: {
        identifier  : 'religion',
        rules: [
          {
            type   : 'empty',
            prompt : 'Please enter a gender'
          }
        ]
      },
      house_status: {
        identifier  : 'house_status',
        rules: [
          {
            type   : 'empty',
            prompt : 'Please enter a gender'
          }
        ]
      },
      status: {
        identifier  : 'status',
        rules: [
          {
            type   : 'empty',
            prompt : 'Please enter a gender'
          }
        ]
      },
      access_card: {
        identifier  : 'access_card',
        rules: [
          {
            type   : 'empty',
            prompt : 'Please enter a gender'
          }
        ]
      }
    }
  });

