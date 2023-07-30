/*
  Copyright 1999-2019 ImageMagick Studio LLC, a non-profit organization
  dedicated to making software imaging solutions freely available.
  
  You may not use this file except in compliance with the License.
  obtain a copy of the License at
  
    https://imagemagick.org/script/license.php
  
  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.

  MagickCore version methods.
*/
#ifndef _MAGICKCORE_VERSION_H
#define _MAGICKCORE_VERSION_H

#if defined(__cplusplus) || defined(c_plusplus)
extern "C" {
#endif

/*
  Define declarations.
*/
#define MagickPackageName "ImageMagick"
#define MagickCopyright  "© 1999-2019 ImageMagick Studio LLC"
#define MagickLibVersion  0x708
#define MagickLibVersionText  "7.0.8"
#define MagickLibVersionNumber  6,0,0
#define MagickLibAddendum  "-59"
#define MagickLibInterface  6
#define MagickLibMinInterface  6
#if defined(_WINDOWS)
#  if defined(_WIN64)
#    define MagickPlatform "x64"
#  else
#    define MagickPlatform "x86"
#  endif
#else
#define MagickPlatform  "arm"
#endif
#define MagickppLibVersionText  "7.0.8"
#define MagickppLibVersionNumber  4:0:0
#define MagickppLibAddendum  "-59"
#define MagickppLibInterface  4
#define MagickppLibMinInterface  4
#define MagickReleaseDate  "2019-11-10"
#define MagickAuthoritativeLicense  \
  "https://imagemagick.org/script/license.php"
#define MagickAuthoritativeURL  "https://imagemagick.org"
#define MagickHomeURL  "file:///usr/local/addons/hm-tools/share/doc/ImageMagick-7/index.html"
#if (MAGICKCORE_QUANTUM_DEPTH == 8)
#define MagickQuantumDepth  "Q8"
#define MagickQuantumRange  "255"
#elif (MAGICKCORE_QUANTUM_DEPTH == 16)
#define MagickQuantumDepth  "Q16"
#define MagickQuantumRange  "65535"
#elif (MAGICKCORE_QUANTUM_DEPTH == 32)
#define MagickQuantumDepth  "Q32"
#define MagickQuantumRange  "4294967295"
#elif (MAGICKCORE_QUANTUM_DEPTH == 64)
#define MagickQuantumDepth  "Q64"
#define MagickQuantumRange  "65535"
#else
#define MagickQuantumDepth  "Q?"
#define MagickQuantumRange  "?"
#endif
#define MagickVersion  \
  MagickPackageName " " MagickLibVersionText MagickLibAddendum " " \
  MagickQuantumDepth " " MagickPlatform " " MagickReleaseDate " " \
  MagickAuthoritativeURL

extern MagickExport char
  *GetMagickHomeURL(void);

extern MagickExport const char
  *GetMagickCopyright(void) magick_attribute((__const__)),
  *GetMagickDelegates(void) magick_attribute((__const__)),
  *GetMagickFeatures(void) magick_attribute((__const__)),
  *GetMagickLicense(void) magick_attribute((__const__)),
  *GetMagickPackageName(void) magick_attribute((__const__)),
  *GetMagickQuantumDepth(size_t *),
  *GetMagickQuantumRange(size_t *),
  *GetMagickReleaseDate(void) magick_attribute((__const__)),
  *GetMagickVersion(size_t *);

extern MagickExport void
  ListMagickVersion(FILE *);

#if defined(__cplusplus) || defined(c_plusplus)
}
#endif

#endif
