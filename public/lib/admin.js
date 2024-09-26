'use strict';

import { save, load } from 'settings';

export function init() {
	handleSettingsForm();
};

function handleSettingsForm() {
	load('azure-openai', $('.openai-settings'), function () {

	});

	$('#save').on('click', () => {
		save('azure-openai', $('.openai-settings'));
	});
}
