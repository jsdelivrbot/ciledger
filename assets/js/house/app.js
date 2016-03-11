

var houseValidationRules = {
	fields: {
		house_block_no: {
			identifier: 'house_block_no',
			rules: [
				{
					type: 'empty'
				},
				{
					type: 'number'
				}
			]
		},
		house_lot_no: {
			identifier: 'house_lot_no',
			rules: [
				{
					type: 'empty'
				},
				{
					type: 'number'
				}
			]
		},
		house_area: {
			identifier: 'house_area',
			rules: [
				{
					type: 'empty'
				},
				{
					type: 'number'
				}
			]
		}
	}
};

$('.ui.form.house').form(houseValidationRules).api({
	url: '/ciledger/House/setHouse',
	method: 'POST',
	data: $('.ui.form').form('get values'),
	serializeForm: true,
	onSuccess: function(response) {
		if(response.success) {
			_displayresponse(response);
		}
		else {
			_displayresponse(response);
		}
	},
	onFailure: function(response) {
		$('#modalContent').text("Cannot process request, Please try again");
		$('#addHouse').modal({blurring: true}).modal('show');
	}
});

function _displayresponse(response) {
	if(response.success) {
		$('.ui.form.house').form('clear');
		displayresponse(response);
	}
	else
		displayresponse(response);
}

function displayresponse(response) {
	$('#modalContent').text(response.message);
	$('#addHouse').modal({blurring: true}).modal('show');
}


// $('#submitSearch').click(function() {

// 	$.ajax({

// 		url:'/ciledger/House/searchviewHouseList',
// 		method: 'POST',
// 		data: {

// 			house_block_no: $('house_block_no').val(),
// 			house_lot_no: $('house_lot_no').val(),
// 			house_area: $('house_area').val()

// 		},
// 		success: function(response) {

// 			alert(response);

// 		}

// 	});

// });