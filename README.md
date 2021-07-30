# Mineon - Minimalist Neon Watchface for Huawei/Honor Band 6 (and Watchface Creation Tips!)

This repository contains both a simple watchface I created for the Honor Band 6 as well as some tips for people trying to make their own.

## General Prerequisites

* ### [Modded Huawei Health APK](https://drive.google.com/file/d/1iSZLlfcBdOX2BIIV7EUrgGHHFqyGuSOG/view)

This modified version of the Android app is necessary for installing watchfaces downloaded outside of Huawei's store. Normally I would strongly advise against installing a random APK downloaded from a Google Drive link you find on a Facebook group, but unfortunately it's the only way I know of to do it. Proceed at your own risk.

If you aren't going to be making any watchfaces of your own, this is all you should need.

After you're satisfied with the watchfaces installed on your band, I recommend installing an official release of the app. Unfortunately, the latest version available in the Play Store is rather outdated, but you can download the latest APK from [APKMirror](https://www.apkmirror.com/apk/huawei-internet-service/health/).

* ### [Huawei WatchFace Designer](https://appfile1.hicloud.com/FileServer/getFile/app/011/111/111/0000000000011111111.20210113115614.24721818240632603423417575876194:20471231000000:0001:1F55F4ECBBC11051B487E44F3612F487903332DB60EC58CBD0200C9DE71402B4.zip?needInitFileName=true)

Windows-only software for creating your own watchfaces.

## General Tips

* When opening the Health app for the first time (and when creating a Huawei ID), it'll ask you to specify a region. Set it to India. At least for those of us in the US, you won't be able to install custom watchfaces if you use your actual location. Don't worry, everything will still be in English.

* Don't use <b>File > Export</b> in Designer to build HWT files, as it has a tendency to not work for various reasons. Instead, open up a command prompt and run <b>TemplateWatch.exe</b>, which is found in the <b>export</b> subdirectory of the application. Put this subdirectory in your Windows <b>PATH</b> environment variable so you can simply call <code>templatewatch .</code> from the directory of the watchface you're building.

## Mineon Installation

The latest release of the watchface can be found on the [Mineon GitHub releases page](https://github.com/joelface/mineon/releases). After downloading it to your phone, upload the watchface to your band using the modded Huawei Health app. You will then be able to set it on your band by long pressing on the display.

## Mineon Build Prerequisites

* ### [Inkscape](https://inkscape.org/release/)

For exporting watchface element PNGs from <b>design.svg</b>.

* ### [FFMPEG](https://www.gyan.dev/ffmpeg/builds/ffmpeg-release-essentials.7z)

Used in <b>build.bat</b> to convert Mineon's preview image exported from design.svg into the proper BMP format.

## Mineon Build Instructions

1. Open <b>design.svg</b> in Inkscape.
2. Select all objects in the <b>slices</b> layer.
3. Hide the slices layer while keeping the objects selected.
3. Open the <b>Export PNG Image</b> dialog (<b>File > Export PNG Image...</b>).
4. Enable the <b>Batch export</b> option.
5. Click the <b>Export As...</b> button and save the files in the <b>watchface/res</b> subdirectory.
6. Open a command prompt in the root Mineon directory and run <b>build.bat</b>.

The resulting HWT file can be found in the <b>export/output</b> subdirectory of the WatchFace Designer application. Copy it to your phone and install it through the Health app.

## Credits

* [Larabiefont](https://typodermicfonts.com/larabiefont/) by [Typodermic Fonts](https://typodermicfonts.com/)
* [RNS Weather Icons](https://iconstore.co/icons/rns-weather-icons/) by [Yorlmar Campos](https://www.rnsfonts.com/)
