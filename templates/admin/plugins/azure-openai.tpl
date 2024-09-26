<div class="acp-page-container">
	<!-- IMPORT admin/partials/settings/header.tpl -->

	<div class="row m-0">
		<div id="spy-container" class="col-12 col-md-8 px-0 mb-4" tabindex="0">
			<form role="form" class="openai-settings">
				<div class="mb-4">
					<h5 class="fw-bold tracking-tight settings-header">General</h5>

					<div class="mb-3">
						<label class="form-label" for="apikey">Secret key</label>
						<input type="text" id="apikey" name="apikey" title="Secret key" class="form-control">
						<p class="form-text">
							Get your <a href="https://portal.azure.com/">Azure OpenAI Secret</a> and enter it above. Requires a restart.
						</p>
					</div>
					<div class="mb-3">
						<label class="form-label" for="endpoint">Endpoint</label>
						<input type="text" id="endpoint" name="endpoint" title="Endpoint" class="form-control">
				
					</div>
					<div class="mb-3">
						<label class="form-label" for="apiversion">Api Version</label>
						<input type="text" id="apiversion" name="apiversion" title="Api Version" class="form-control">
				
					</div>
					<div class="mb-3">
						<label class="form-label" for="chatgpt-username">ChatGPT Username</label>
						<input type="text" id="chatgpt-username" name="chatgpt-username" title="ChatGPT Username" class="form-control">
						<p class="form-text">
							<a href="{config.relative_path}/admin/manage/users">Create a user</a> and enter their username. Other users can mention this user to ask questions to ChatGPT or send private messages if enabled below.
						</p>
					</div>

					<div class="form-check form-switch">
						<input type="checkbox" class="form-check-input" id="enablePrivateMessages" name="enablePrivateMessages">
						<label for="enablePrivateMessages" class="form-check-label">Enable Private Messages</label>
						<p class="form-text">
							If enabled users can send ChatGPT user private messages.
						</p>
					</div>

					<div class="mb-3">
						<label class="form-label" for="model">Deployment</label>
						<input type="text" id="model" name="model" title="Deployment" class="form-control" value="gpt-4o-mini">
				
					</div>
					<div class="">
						<label class="form-label" for="systemPrompt">System Prompt</label>
						<textarea class="form-control" id="systemPrompt" name="systemPrompt" title="System prompt" placeholder="You are a helpful assistant"></textarea>
					</div>
				</div>

				<div class="">
					<h5 class="fw-bold tracking-tight settings-header">Restrictions</h5>

					<div class="mb-3">
						<label class="form-label" for="minimumReputation">Minimum Reputation</label>
						<input type="text" id="minimumReputation" name="minimumReputation" title="Minimum Reputation" class="form-control">
						<p class="form-text">
							Minimum reputation required to mention chatgpt user. (0 to disable)
						</p>
					</div>
					<div class="mb-3">
						<label class="form-label" form="allowedGroups">Allowed Groups</label>
						<select class="form-select" multiple id="allowedGroups" name="allowedGroups" size="10">
							{{{ each groups }}}
							<option value="{./displayName}">{./displayName}</option>
							{{{ end }}}
						</select>
						<p class="form-text">
							Only users in these groups will be able to mention the chatgpt user. Leave blank to allow all groups.
						</p>
					</div>
				</div>
			</form>
		</div>

		<!-- IMPORT admin/partials/settings/toc.tpl -->
	</div>
</div>