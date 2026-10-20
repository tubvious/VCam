# VCam

Use an iPhone as a webcam in the Discord desktop app on Windows 11.

## Status

Step 1 (test S1): a Windows 11 virtual camera that shows a moving test pattern at 1280x720, 30 fps, in NV12, YUY2 and RGB32. It answers one question before anything else is built: does Discord list and play a Media Foundation virtual camera?

## Trying the S1 test camera

1. Download the `VCam-S1-test-camera` zip from the latest successful **Windows build** run under the repository's Actions tab, and extract it.
2. Right-click `install.cmd` and choose **Run as administrator**. It copies the files to `C:\Program Files\VCam` (the Windows camera service can't load them from your user folder) and registers the camera.
3. Run `C:\Program Files\VCam\VCamSample.exe` and leave its window open. The camera exists only while it runs.
4. Quit Discord fully (tray icon, Quit Discord), then start it again, because Discord only looks for cameras at launch.
5. In Discord, open **User Settings > Voice & Video**, pick **VCam** as the camera and click **Test Video**.

What to report back:
- Is **VCam** in Discord's camera list?
- Does Test Video show the moving colour pattern, and what does the pattern say for **Format** and **Fps**?
- For comparison, does the Windows **Camera** app show it?

To remove it, close `VCamSample.exe` and run `uninstall.cmd` as administrator.

## Credits

The Windows camera is based on [VCamSample](https://github.com/smourier/VCamSample) by Simon Mourier (MIT licence, see `windows/LICENSE-VCamSample`).
