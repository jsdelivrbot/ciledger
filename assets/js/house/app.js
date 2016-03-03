

var houseValidationRules = {
	fields: {
		block_no: {
			identifier: 'block_no',
			rules: [
				{
					type: 'empty'
				},
				{
					type: 'number'
				}
			]
		},
		lot_no: {
			identifier: 'lot_no',
			rules: [
				{
					type: 'empty'
				},
				{
					type: 'number'
				}
			]
		},
		area: {
			identifier: 'area',
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
		$('#modalContent').text(response.message);
		$('.ui.form.house').form('clear');
		$('#addHouse').modal({blurring: true}).modal('show');
	},
	onFailure: function(response) {
		$('#modalContent').text(response.message);
		$('#addHouse').modal({blurring: true}).modal('show');
	}
});