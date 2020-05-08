if (global.cam) {
	if (!resumeButton) {
		resumeButton = instance_create(camera_get_view_x(global.cam) + 180, camera_get_view_y(global.cam) + 286, oTitleScreenButton);

		with (resumeButton) {
			showImageOnHover = 1;
			scriptToRunOnClick = TogglePaused;
		}
	}

	if (!settingsButton) {
		settingsButton = instance_create(camera_get_view_x(global.cam) + 180, camera_get_view_y(global.cam) + 357, oTitleScreenButton);
		with (settingsButton) {
			showImageOnHover = 2;
			scriptToRunOnClick = 0;
		}
	}

	if (!exitButton) {
		exitButton = instance_create(camera_get_view_x(global.cam) + 180, camera_get_view_y(global.cam) + 431, oTitleScreenButton);
		with (exitButton) {
			showImageOnHover = 3;
			scriptToRunOnClick = ExitGame;
		}
	}
}